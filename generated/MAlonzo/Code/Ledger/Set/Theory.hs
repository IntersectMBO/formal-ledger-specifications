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
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.String.Base
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
  MAlonzo.Code.Axiom.Set.T_Theory'7584'_740
d_List'45'Model'7584'_8
  = coe MAlonzo.Code.Axiom.Set.List.d_List'45'Model'7584'_58
-- Ledger.Set.Theory.List-Modelᵈ
d_List'45'Model'7496'_10 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1306
d_List'45'Model'7496'_10
  = coe MAlonzo.Code.Axiom.Set.List.d_List'45'Model'7496'_210
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
      MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._._∈ᵇ_
d__'8712''7495'__26 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> [AgdaAny] -> Bool
d__'8712''7495'__26 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du__'8712''7495'__1654
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._._∪_
d__'8746'__28 :: () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8746'__28
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du__'8746'__668
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v2 v3)
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
      MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
      (coe d_List'45'Model'7496'_10) v2 v3
-- Ledger.Set.Theory._.Dec-Anyˢ
d_Dec'45'Any'738'_42 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'Any'738'_42 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1626
      (coe d_List'45'Model'7496'_10) v2 v3
-- Ledger.Set.Theory._.Dec-∈
d_Dec'45''8712'_44 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8712'_44 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
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
      MAlonzo.Code.Axiom.Set.du_DecEq'8743'finite'8658'strongly'45'finite_306
      v1 v3
-- Ledger.Set.Theory._.FinSet
d_FinSet_48 :: () -> ()
d_FinSet_48 = erased
-- Ledger.Set.Theory._.Show-finite
d_Show'45'finite_50 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_50 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du_Show'45'finite_280 v1
-- Ledger.Set.Theory._.all?
d_all'63'_52 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_all'63'_52
  = coe
      MAlonzo.Code.Axiom.Set.d_all'63'_1598
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.allᵇ
d_all'7495'_54 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> Bool
d_all'7495'_54 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_all'7495'_1636
      (coe d_List'45'Model'7496'_10) v2 v3
-- Ledger.Set.Theory._.any?
d_any'63'_56 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63'_56
  = coe
      MAlonzo.Code.Axiom.Set.d_any'63'_1606
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.anyᵇ
d_any'7495'_58 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> Bool
d_any'7495'_58 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_any'7495'_1640
      (coe d_List'45'Model'7496'_10) v2 v3
-- Ledger.Set.Theory._.binary-unions
d_binary'45'unions_60 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_60
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_binary'45'unions_632
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.card
d_card_62 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_62 v0 v1 = coe MAlonzo.Code.Axiom.Set.du_card_324 v1
-- Ledger.Set.Theory._.card-∅
d_card'45''8709'_64 ::
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_64 = erased
-- Ledger.Set.Theory._.concatMapˢ
d_concatMap'738'_66 ::
  () -> () -> (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
d_concatMap'738'_66
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_concatMap'738'_496
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v3 v4)
-- Ledger.Set.Theory._.disjoint
d_disjoint_68 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d_disjoint_68 = erased
-- Ledger.Set.Theory._.filter
d_filter_70 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny]
d_filter_70
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_filter_408
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)))
-- Ledger.Set.Theory._.finite
d_finite_72 :: () -> [AgdaAny] -> ()
d_finite_72 = erased
-- Ledger.Set.Theory._.fromList
d_fromList_74 :: () -> [AgdaAny] -> [AgdaAny]
d_fromList_74
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_fromList_416
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v2)
-- Ledger.Set.Theory._.incl-set
d_incl'45'set_76 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_incl'45'set_76 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set_1698
      (coe d_List'45'Model'7496'_10) v1 v2
-- Ledger.Set.Theory._.incl-set'
d_incl'45'set''_78 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set''_78 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set''_1672
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._.incl-set-proj₁
d_incl'45'set'45'proj'8321'_80 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set'45'proj'8321'_80 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321'_1758
      (coe d_List'45'Model'7496'_10) v1 v2
-- Ledger.Set.Theory._.incl-set-proj₁⊆
d_incl'45'set'45'proj'8321''8838'_82 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_incl'45'set'45'proj'8321''8838'_82 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321''8838'_1708
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4
-- Ledger.Set.Theory._.incl-set-proj₁⊇
d_incl'45'set'45'proj'8321''8839'_84 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_incl'45'set'45'proj'8321''8839'_84 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321''8839'_1720
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4
-- Ledger.Set.Theory._.isMaximal
d_isMaximal_86 :: () -> [AgdaAny] -> ()
d_isMaximal_86 = erased
-- Ledger.Set.Theory._.listing
d_listing_88 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_88
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_listing_204
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)))
-- Ledger.Set.Theory._.mapPartial
d_mapPartial_90 ::
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_mapPartial_90
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_mapPartial_564
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v3)
-- Ledger.Set.Theory._.map
d_map_92 ::
  () -> () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_map_92
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_map_386
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)))
-- Ledger.Set.Theory._.maximal-unique
d_maximal'45'unique_94 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_94 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.du_maximal'45'unique_348 v3 v4
-- Ledger.Set.Theory._.maximal-⊆
d_maximal'45''8838'_96 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_maximal'45''8838'_96 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.du_maximal'45''8838'_344 v3 v4
-- Ledger.Set.Theory._.partialToSet
d_partialToSet_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> [AgdaAny]
d_partialToSet_98
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_partialToSet_460
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v4 v5)
-- Ledger.Set.Theory._.replacement
d_replacement_100 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_100
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_replacement_196
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)))
-- Ledger.Set.Theory._.singleton
d_singleton_102 :: () -> AgdaAny -> [AgdaAny]
d_singleton_102
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_singleton_436
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v2)
-- Ledger.Set.Theory._.sp
d_sp_104 :: MAlonzo.Code.Axiom.Set.T_SpecProperty_48
d_sp_104
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp_150
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)))
-- Ledger.Set.Theory._.sp-¬
d_sp'45''172'_106 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_sp'45''172'_106
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
         (coe
            MAlonzo.Code.Axiom.Set.d_sp_150
            (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0))))
-- Ledger.Set.Theory._.sp-∘
d_sp'45''8728'_108 ::
  () ->
  (AgdaAny -> ()) ->
  () ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_sp'45''8728'_108
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (coe
            MAlonzo.Code.Axiom.Set.d_sp_150
            (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0))))
-- Ledger.Set.Theory._.spec-∈
d_spec'45''8712'_110 :: () -> ()
d_spec'45''8712'_110 = erased
-- Ledger.Set.Theory._.specProperty
d_specProperty_112 :: () -> (AgdaAny -> ()) -> ()
d_specProperty_112 = erased
-- Ledger.Set.Theory._.specification
d_specification_114 ::
  () ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_114
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_specification_174
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)))
-- Ledger.Set.Theory._.strictify
d_strictify_116 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_116
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_strictify_366
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v3 v4)
-- Ledger.Set.Theory._.strongly-finite
d_strongly'45'finite_118 :: () -> [AgdaAny] -> ()
d_strongly'45'finite_118 = erased
-- Ledger.Set.Theory._.th
d_th_120 :: MAlonzo.Code.Axiom.Set.T_Theory_82
d_th_120
  = coe
      MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.unions
d_unions_122 ::
  () -> [[AgdaAny]] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_122
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_unions_184
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)))
-- Ledger.Set.Theory._.weakly-finite
d_weakly'45'finite_124 :: () -> [AgdaAny] -> ()
d_weakly'45'finite_124 = erased
-- Ledger.Set.Theory._.Set
d_Set_126 :: () -> ()
d_Set_126 = erased
-- Ledger.Set.Theory._.∅
d_'8709'_128 :: () -> [AgdaAny]
d_'8709'_128
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709'_430
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)))
-- Ledger.Set.Theory._.∅-strongly-finite
d_'8709''45'strongly'45'finite_130 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_130
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709''45'strongly'45'finite_432
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)))
-- Ledger.Set.Theory._.∈-concatMapˢ
d_'8712''45'concatMap'738'_132 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_132
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'concatMap'738'_508
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-filter
d_'8712''45'filter_134 ::
  () ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_134
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'filter_414
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-fromList
d_'8712''45'fromList_136 ::
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_136
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_420
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.∈-irrelevant
d_'8712''45'irrelevant_138 :: () -> [AgdaAny] -> ()
d_'8712''45'irrelevant_138 = erased
-- Ledger.Set.Theory._.∈-map
d_'8712''45'map_140 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_140
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'map_394
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-mapPartial
d_'8712''45'mapPartial_142 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_142
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'mapPartial_574
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-map′
d_'8712''45'map'8242'_144 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8242'_144
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_400
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v3 v4 v5 v6)
-- Ledger.Set.Theory._.∈-partialToSet
d_'8712''45'partialToSet_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_146
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'partialToSet_472
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v5)
-- Ledger.Set.Theory._.∈-singleton
d_'8712''45'singleton_148 ::
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_148
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_446
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.∈-sp
d_'8712''45'sp_150 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8712''45'sp_150
  = coe
      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.∈-unions
d_'8712''45'unions_152 ::
  () ->
  AgdaAny ->
  [[AgdaAny]] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_152
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'unions_428
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.∈-∪
d_'8712''45''8746'_154 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_154
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_676
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v2 v3 v4)
-- Ledger.Set.Theory._.≡→∈
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
-- Ledger.Set.Theory._.⊆-mapPartial
d_'8838''45'mapPartial_158 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> Maybe AgdaAny) ->
  Maybe AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'mapPartial_158
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8838''45'mapPartial_592
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v3 v4 v5 v6)
-- Ledger.Set.Theory._.⊆-weakly-finite
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
      MAlonzo.Code.Axiom.Set.du_'8838''45'weakly'45'finite_328 v3 v4
-- Ledger.Set.Theory._.❴_❵
d_'10100'_'10101'_162 :: () -> AgdaAny -> [AgdaAny]
d_'10100'_'10101'_162
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)))
-- Ledger.Set.Theory._.Intersection._∩_
d__'8745'__166 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8745'__166
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du__'8745'__692
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v2 v3 v4)
-- Ledger.Set.Theory._.Intersection._＼_
d__'65340'__168 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'65340'__168
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du__'65340'__718
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v2 v3 v4)
-- Ledger.Set.Theory._.Intersection.disjoint'
d_disjoint''_170 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> ()
d_disjoint''_170 = erased
-- Ledger.Set.Theory._.Intersection.∈-∩
d_'8712''45''8745'_172 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_172
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_700
           (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v0)) v2 v3 v4 v5)
-- Ledger.Set.Theory._._∈_
d__'8712'__176 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_474 ->
  AgdaAny -> AgdaAny -> ()
d__'8712'__176 = erased
-- Ledger.Set.Theory._._∉_
d__'8713'__178 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_474 ->
  AgdaAny -> AgdaAny -> ()
d__'8713'__178 = erased
-- Ledger.Set.Theory._.All-syntax
d_All'45'syntax_180 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_474 ->
  (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_180 = erased
-- Ledger.Set.Theory._.Ex-syntax
d_Ex'45'syntax_182 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_474 ->
  (AgdaAny -> ()) -> AgdaAny -> ()
d_Ex'45'syntax_182 = erased
-- Ledger.Set.Theory._.IsSet
d_IsSet_184 a0 a1 = ()
-- Ledger.Set.Theory._.IsSet-Map
d_IsSet'45'Map_186 ::
  () -> () -> MAlonzo.Code.Interface.IsSet.T_IsSet_474
d_IsSet'45'Map_186 v0 v1
  = coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548
-- Ledger.Set.Theory._.IsSet-Set
d_IsSet'45'Set_188 ::
  () -> MAlonzo.Code.Interface.IsSet.T_IsSet_474
d_IsSet'45'Set_188 v0
  = coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544
-- Ledger.Set.Theory._.IsSet-TotalMap
d_IsSet'45'TotalMap_190 ::
  () -> () -> MAlonzo.Code.Interface.IsSet.T_IsSet_474
d_IsSet'45'TotalMap_190 v0 v1
  = coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'TotalMap_550
-- Ledger.Set.Theory._.dom
d_dom_192 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_474 -> AgdaAny -> [AgdaAny]
d_dom_192 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Interface.IsSet.du_dom_540
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.range
d_range_194 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_474 -> AgdaAny -> [AgdaAny]
d_range_194 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Interface.IsSet.du_range_542
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.toSet
d_toSet_196 ::
  MAlonzo.Code.Interface.IsSet.T_IsSet_474 -> AgdaAny -> [AgdaAny]
d_toSet_196 v0
  = coe MAlonzo.Code.Interface.IsSet.d_toSet_482 (coe v0)
-- Ledger.Set.Theory._.IsSet._∈_
d__'8712'__200 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_474 ->
  AgdaAny -> AgdaAny -> ()
d__'8712'__200 = erased
-- Ledger.Set.Theory._.IsSet._∉_
d__'8713'__202 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_474 ->
  AgdaAny -> AgdaAny -> ()
d__'8713'__202 = erased
-- Ledger.Set.Theory._.IsSet.toSet
d_toSet_204 ::
  MAlonzo.Code.Interface.IsSet.T_IsSet_474 -> AgdaAny -> [AgdaAny]
d_toSet_204 v0
  = coe MAlonzo.Code.Interface.IsSet.d_toSet_482 (coe v0)
-- Ledger.Set.Theory.to-sp
d_to'45'sp_214 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_to'45'sp_214 ~v0 ~v1 v2 = du_to'45'sp_214 v2
du_to'45'sp_214 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_to'45'sp_214 v0
  = coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v0)
-- Ledger.Set.Theory.finiteness
d_finiteness_218 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_finiteness_218 ~v0 = du_finiteness_218
du_finiteness_218 ::
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_finiteness_218
  = coe
      MAlonzo.Code.Axiom.Set.d_finiteness_1008 d_List'45'Model'7584'_8
      erased
-- Ledger.Set.Theory.lengthˢ
d_length'738'_226 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_474 -> AgdaAny -> Integer
d_length'738'_226 ~v0 ~v1 v2 v3 v4 = du_length'738'_226 v2 v3 v4
du_length'738'_226 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_474 -> AgdaAny -> Integer
du_length'738'_226 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_length'738'_1016
      (coe d_List'45'Model'7584'_8) (coe v0)
      (coe MAlonzo.Code.Interface.IsSet.d_toSet_482 v1 v2)
-- Ledger.Set.Theory.lengthˢ-≡ᵉ
d_length'738''45''8801''7497'_240 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_474 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'738''45''8801''7497'_240 = erased
-- Ledger.Set.Theory.lengthˢ-∅
d_length'738''45''8709'_250 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'738''45''8709'_250 = erased
-- Ledger.Set.Theory.setToList
d_setToList_252 :: () -> [AgdaAny] -> [AgdaAny]
d_setToList_252 ~v0 v1 = du_setToList_252 v1
du_setToList_252 :: [AgdaAny] -> [AgdaAny]
du_setToList_252 v0 = coe v0
-- Ledger.Set.Theory.DecEq-ℙ
d_DecEq'45'ℙ_256 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ℙ_256 ~v0 v1 = du_DecEq'45'ℙ_256 v1
du_DecEq'45'ℙ_256 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'ℙ_256 v0
  = coe MAlonzo.Code.Axiom.Set.List.du_DecEq'45'Set_208 (coe v0)
-- Ledger.Set.Theory.Show-ℙ
d_Show'45'ℙ_260 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℙ_260 ~v0 v1 = du_Show'45'ℙ_260 v1
du_Show'45'ℙ_260 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℙ_260 v0
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
                       (coe du_finiteness_218 v1))))))
-- Ledger.Set.Theory.Rel._∣'_
d__'8739'''__266 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'''__266 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'''__348
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel._∣^'_
d__'8739''94'''__268 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'''__268 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'''__356
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel.Rel
d_Rel_270 :: () -> () -> ()
d_Rel_270 = erased
-- Ledger.Set.Theory.Rel.disjoint-dom⇒disjoint
d_disjoint'45'dom'8658'disjoint_272 ::
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
d_disjoint'45'dom'8658'disjoint_272 = erased
-- Ledger.Set.Theory.Rel.dom
d_dom_274 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_dom_274 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_338
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Rel.dom-cong
d_dom'45'cong_276 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'cong_276 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'cong_520
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Rel.dom-mapʳ⊆
d_dom'45'map'691''8838'_278 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'map'691''8838'_278 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'map'691''8838'_550
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.dom-single→single
d_dom'45'single'8594'single_280 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'single'8594'single_280 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'single'8594'single_470
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Rel.dom-single≡single
d_dom'45'single'8801'single_282 ::
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'single'8801'single_282 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'single'8801'single_474
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory.Rel.dom-∅
d_dom'45''8709'_284 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45''8709'_284 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom'45''8709'_578
-- Ledger.Set.Theory.Rel.dom-⊆mapʳ
d_dom'45''8838'map'691'_286 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45''8838'map'691'_286 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45''8838'map'691'_526
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.dom∅
d_dom'8709'_288 ::
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8709'_288 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom'8709'_492
-- Ledger.Set.Theory.Rel.dom∈
d_dom'8712'_290 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_dom'8712'_290 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_422
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory.Rel.dom∪
d_dom'8746'_292 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8746'_292 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8746'_494
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory.Rel.dom⊆
d_dom'8838'_294 ::
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
d_dom'8838'_294 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8838'_514
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.impl⇒cores⊆
d_impl'8658'cores'8838'_296 ::
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
d_impl'8658'cores'8838'_296 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_impl'8658'cores'8838'_396
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v5 v6 v7 v8 v9
-- Ledger.Set.Theory.Rel.impl⇒res⊆
d_impl'8658'res'8838'_298 ::
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
d_impl'8658'res'8838'_298 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_impl'8658'res'8838'_374
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v5 v6 v7 v8 v9
-- Ledger.Set.Theory.Rel.mapMaybeWithKey
d_mapMaybeWithKey_300 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_mapMaybeWithKey_300 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_mapMaybeWithKey_646
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel.mapPartialLiftKey
d_mapPartialLiftKey_302 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey_302 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_586 v3 v4
-- Ledger.Set.Theory.Rel.mapPartialLiftKey-map
d_mapPartialLiftKey'45'map_304 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey'45'map_304 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey'45'map_606
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Rel.mapʳ
d_map'691'_306 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_map'691'_306 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'691'_412
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel.mapʳ-dom
d_map'691''45'dom_308 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'691''45'dom_308 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'691''45'dom_576
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel.mapˡ
d_map'737'_310 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_map'737'_310 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'737'_406
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel.range
d_range_312 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_range_312 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_range_340
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Rel.relatedˡ
d_related'737'_314 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_related'737'_314 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_related'737'_334
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Rel.single→dom-single
d_single'8594'dom'45'single_316 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_single'8594'dom'45'single_316 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_single'8594'dom'45'single_472
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Rel.∅ʳ
d_'8709''691'_318 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'8709''691'_318 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8709''691'_336
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Rel.∈-dom
d_'8712''45'dom_320 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'dom_320 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_478
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Rel.∈-dom-singleton-pair
d_'8712''45'dom'45'singleton'45'pair_322 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'dom'45'singleton'45'pair_322 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom'45'singleton'45'pair_466
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Rel.∈-mapMaybeWithKey
d_'8712''45'mapMaybeWithKey_324 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'mapMaybeWithKey_324 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'mapMaybeWithKey_662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Rel.∉-dom∅
d_'8713''45'dom'8709'_326 ::
  () ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45'dom'8709'_326 = erased
-- Ledger.Set.Theory.Rel.Corestriction._∣^_
d__'8739''94'__330 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'__330 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1038
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Rel.Corestriction._∣^_ᶜ
d__'8739''94'_'7580'_332 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'_'7580'_332 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'_'7580'_1044
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Rel.Corestriction.coex-⊆
d_coex'45''8838'_334 ::
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
d_coex'45''8838'_334 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_coex'45''8838'_1052
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Rel.Corestriction.cores-⊆
d_cores'45''8838'_336 ::
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
d_cores'45''8838'_336 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_cores'45''8838'_1050
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Rel.Restriction._∣_
d__'8739'__340 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'__340 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'__678
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Rel.Restriction._∣_ᶜ
d__'8739'_'7580'_342 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'_'7580'_342 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_684
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Rel.Restriction._⟪$⟫_
d__'10218''36''10219'__344 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
d__'10218''36''10219'__344 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'10218''36''10219'__690
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Rel.Restriction.curryʳ
d_curry'691'_346 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_curry'691'_346 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_842
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.ex-⊆
d_ex'45''8838'_348 ::
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
d_ex'45''8838'_348 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_776
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.res-comp-cong
d_res'45'comp'45'cong_350 ::
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
d_res'45'comp'45'cong_350 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_734
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.res-comp-dom
d_res'45'comp'45'dom_352 ::
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
d_res'45'comp'45'dom_352 = erased
-- Ledger.Set.Theory.Rel.Restriction.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_354 ::
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
d_res'45'comp'45'dom'7504'_354 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'dom'7504'_762
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.res-cong
d_res'45'cong_356 ::
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
d_res'45'cong_356 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'cong_698
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.res-dom
d_res'45'dom_358 ::
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
d_res'45'dom_358 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.res-dom-comm
d_res'45'dom'45'comm_360 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_360 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm_982
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.res-dom-comm'
d_res'45'dom'45'comm''_362 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_362 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm''_976
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_364 ::
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
d_res'45'dom'45'comm'8745''8838'_364 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8745''8838'_928
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6 v7
-- Ledger.Set.Theory.Rel.Restriction.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_366 ::
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
d_res'45'dom'45'comm'8838''8745'_366 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8838''8745'_920
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6 v7
-- Ledger.Set.Theory.Rel.Restriction.res-domᵐ
d_res'45'dom'7504'_368 ::
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
d_res'45'dom'7504'_368 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'7504'_720
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_370 ::
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
d_res'45'ex'45'disj'45''8746'_370 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45'disj'45''8746'_834
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.res-ex-disjoint
d_res'45'ex'45'disjoint_372 ::
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
d_res'45'ex'45'disjoint_372 = erased
-- Ledger.Set.Theory.Rel.Restriction.res-ex-∪
d_res'45'ex'45''8746'_374 ::
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
d_res'45'ex'45''8746'_374 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45''8746'_812
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.res-∅
d_res'45''8709'_376 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_376 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709'_778
-- Ledger.Set.Theory.Rel.Restriction.res-∅ᶜ
d_res'45''8709''7580'_378 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709''7580'_378 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709''7580'_780
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3
-- Ledger.Set.Theory.Rel.Restriction.res-⊆
d_res'45''8838'_380 ::
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
d_res'45''8838'_380 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_774
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.∈-curryʳ
d_'8712''45'curry'691'_382 ::
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
d_'8712''45'curry'691'_382 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_854
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6 v7 v8
-- Ledger.Set.Theory.Rel.Restriction.∈-resᶜ-dom
d_'8712''45'res'7580''45'dom_384 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'res'7580''45'dom_384 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom_808
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.∈-resᶜ-dom⁺
d_'8712''45'res'7580''45'dom'8314'_386 ::
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
d_'8712''45'res'7580''45'dom'8314'_386 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8314'_796
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.∈-resᶜ-dom⁻
d_'8712''45'res'7580''45'dom'8315'_388 ::
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
d_'8712''45'res'7580''45'dom'8315'_388 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_788
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._._ˢ
d__'738'_392 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'738'_392 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534 v2
-- Ledger.Set.Theory._._ᵐ
d__'7504'_394 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7504'_394 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Map.du__'7504'_538 v2
-- Ledger.Set.Theory._.Map
d_Map_396 :: () -> () -> ()
d_Map_396 = erased
-- Ledger.Set.Theory._._∣'_
d__'8739'''__398 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'''__398 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'''__1098
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._._∣^'_
d__'8739''94'''__400 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'''__400 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'''__1106
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._._≡ᵉᵐ_
d__'8801''7497''7504'__402 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7497''7504'__402 = erased
-- Ledger.Set.Theory._._≡ᵐ_
d__'8801''7504'__404 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7504'__404 = erased
-- Ledger.Set.Theory._.FinMap
d_FinMap_406 :: () -> () -> ()
d_FinMap_406 = erased
-- Ledger.Set.Theory._.InjectiveOn
d_InjectiveOn_408 ::
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> ()
d_InjectiveOn_408 = erased
-- Ledger.Set.Theory._.IsLeftUnique
d_IsLeftUnique_410 a0 a1 a2 = ()
-- Ledger.Set.Theory._.constMap
d_constMap_412 ::
  () ->
  () ->
  [AgdaAny] -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constMap_412 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_constMap_1112
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.disj-dom
d_disj'45'dom_414 ::
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
d_disj'45'dom_414 = erased
-- Ledger.Set.Theory._.disj-∪
d_disj'45''8746'_416 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disj'45''8746'_416 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disj'45''8746'_674
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.filterKeys
d_filterKeys_418 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_418 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filterKeys_720
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3
-- Ledger.Set.Theory._.filterᵐ-finite
d_filter'7504''45'finite_420 ::
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
d_filter'7504''45'finite_420 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504''45'finite_716
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2
-- Ledger.Set.Theory._.filterᵐ
d_filter'7504'_422 ::
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_422 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_706
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.fromListᵐ
d_fromList'7504'_424 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'7504'_424 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_568
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.idMap
d_idMap_426 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_idMap_426 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_idMap_1024
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory._.left-unique
d_left'45'unique_428 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_left'45'unique_428 = erased
-- Ledger.Set.Theory._.left-unique-mapˢ
d_left'45'unique'45'map'738'_430 ::
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
d_left'45'unique'45'map'738'_430 = erased
-- Ledger.Set.Theory._.mapFromFun
d_mapFromFun_432 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromFun_432 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1028
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.mapFromPartialFun
d_mapFromPartialFun_434 ::
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromPartialFun_434 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1176
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.mapKeys
d_mapKeys_436 ::
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
d_mapKeys_436 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_854
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapMaybeWithKeyᵐ
d_mapMaybeWithKey'7504'_438 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapMaybeWithKey'7504'_438 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1168
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapPartial-uniq
d_mapPartial'45'uniq_440 ::
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
d_mapPartial'45'uniq_440 = erased
-- Ledger.Set.Theory._.mapPartialLiftKey-just-uniq
d_mapPartialLiftKey'45'just'45'uniq_442 ::
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
d_mapPartialLiftKey'45'just'45'uniq_442 = erased
-- Ledger.Set.Theory._.mapValues
d_mapValues_444 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues_444 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapValues-dom
d_mapValues'45'dom_446 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues'45'dom_446 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValues'45'dom_1094
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapWithKey
d_mapWithKey_448 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapWithKey_448 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1076
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapWithKey-uniq
d_mapWithKey'45'uniq_450 ::
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
d_mapWithKey'45'uniq_450 = erased
-- Ledger.Set.Theory._.mapʳ-uniq
d_map'691''45'uniq_452 ::
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
d_map'691''45'uniq_452 = erased
-- Ledger.Set.Theory._.mapˡ-uniq
d_map'737''45'uniq_454 ::
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
d_map'737''45'uniq_454 = erased
-- Ledger.Set.Theory._.mapˡ∘map⦅×-dup⦆-uniq
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_456 ::
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
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_456 = erased
-- Ledger.Set.Theory._.map⦅×-dup⦆-uniq
d_map'10629''215''45'dup'10630''45'uniq_458 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'10629''215''45'dup'10630''45'uniq_458 = erased
-- Ledger.Set.Theory._.singletonᵐ
d_singleton'7504'_460 ::
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'7504'_460 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_singleton'7504'_724
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.toFinMap
d_toFinMap_462 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toFinMap_462 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Map.du_toFinMap_596 v2 v3
-- Ledger.Set.Theory._.toMap
d_toMap_464 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_464 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du_toMap_604 v2
-- Ledger.Set.Theory._.toRel
d_toRel_466 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_toRel_466 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du_toRel_610 v2
-- Ledger.Set.Theory._.weaken-Injective
d_weaken'45'Injective_468 ::
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
d_weaken'45'Injective_468 = erased
-- Ledger.Set.Theory._.ˢ-left-unique
d_'738''45'left'45'unique_470 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_478
d_'738''45'left'45'unique_470 = erased
-- Ledger.Set.Theory._.∅-left-unique
d_'8709''45'left'45'unique_472 ::
  () -> () -> MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_478
d_'8709''45'left'45'unique_472 = erased
-- Ledger.Set.Theory._.∅ᵐ
d_'8709''7504'_474 ::
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''7504'_474 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory._.⊆-left-unique
d_'8838''45'left'45'unique_476 ::
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
d_'8838''45'left'45'unique_476 = erased
-- Ledger.Set.Theory._.⊆-map
d_'8838''45'map_478 ::
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
d_'8838''45'map_478 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Map.du_'8838''45'map_550 v2 v4
-- Ledger.Set.Theory._.❴_❵ᵐ
d_'10100'_'10101''7504'_480 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'10100'_'10101''7504'_480 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_732
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2
-- Ledger.Set.Theory._.Corestrictionᵐ._⁻¹_
d__'8315''185'__484 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
d__'8315''185'__484 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1602
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Corestrictionᵐ._∣^_
d__'8739''94'__486 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'__486 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__1586
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Corestrictionᵐ._∣^_ᶜ
d__'8739''94'_'7580'_488 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'_'7580'_488 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1594
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Intersectionᵐ._∩ᵐ_
d__'8745''7504'__492 ::
  () ->
  () ->
  ([MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__492 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8745''7504'__664
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory._.IsLeftUnique.isLeftUnique
d_isLeftUnique_496 ::
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_478 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isLeftUnique_496 = erased
-- Ledger.Set.Theory._.Lookupᵐ.lookupᵐ
d_lookup'7504'_500 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_lookup'7504'_500 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1548
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4 v5
-- Ledger.Set.Theory._.Lookupᵐ.lookupᵐ?
d_lookup'7504''63'_502 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
d_lookup'7504''63'_502 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4 v5
-- Ledger.Set.Theory._.Lookupᵐ.pullbackMap
d_pullbackMap_504 ::
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
d_pullbackMap_504 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v4 v5 v6 v7
-- Ledger.Set.Theory._.Restrictionᵐ._∣_
d__'8739'__508 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__508 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Restrictionᵐ._∣_ᶜ
d__'8739'_'7580'_510 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_510 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Restrictionᵐ._⦅_,-⦆
d__'10629'_'44''45''10630'_512 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_512 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'10629'_'44''45''10630'_1398
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory._.Restrictionᵐ.curryᵐ
d_curry'7504'_514 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_514 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_curry'7504'_1292
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.mapSingleValue
d_mapSingleValue_516 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_516 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapSingleValue_1284
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.mapValueRestricted
d_mapValueRestricted_518 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_518 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1276
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton
d_res'45'singleton_520 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_520 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton_1306
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton'
d_res'45'singleton''_522 ::
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
d_res'45'singleton''_522 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''_1342
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton''
d_res'45'singleton''''_524 ::
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
d_res'45'singleton''''_524 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''''_1384
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton-inhabited
d_res'45'singleton'45'inhabited_526 ::
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
d_res'45'singleton'45'inhabited_526 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'45'inhabited_1366
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton⁺
d_res'45'singleton'8314'_528 ::
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
d_res'45'singleton'8314'_528 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'8314'_1358
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restrictionᵐ.resᵐ-∅ᶜ
d_res'7504''45''8709''7580'_530 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7504''45''8709''7580'_530 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'7504''45''8709''7580'_1274
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3
-- Ledger.Set.Theory._.Restrictionᵐ.update
d_update_532 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_532 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_update_1400
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Unionᵐ._∪ˡ_
d__'8746''737'__536 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__536 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Unionᵐ._∪ˡ'_
d__'8746''737'''__538 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8746''737'''__538 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__878
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Unionᵐ.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_540 ::
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
d_disjoint'45''8746''737''45'mapValues_540 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45'mapValues_934
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6
-- Ledger.Set.Theory._.Unionᵐ.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_542 ::
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
d_disjoint'45''8746''737''45''8746'_542 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_898
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Unionᵐ.insert
d_insert_544 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_544 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insert_906
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Unionᵐ.insertIfJust
d_insertIfJust_546 ::
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
d_insertIfJust_546 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_914
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6
-- Ledger.Set.Theory._.TotalMap
d_TotalMap_550 a0 a1 = ()
-- Ledger.Set.Theory._.total
d_total_552 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_total_552 = erased
-- Ledger.Set.Theory._.FunTot.Fun⇒Map
d_Fun'8658'Map_556 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Fun'8658'Map_556 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8658'Map_214
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v5 v6
-- Ledger.Set.Theory._.FunTot.Fun⇒TotalMap
d_Fun'8658'TotalMap_558 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54
d_Fun'8658'TotalMap_558 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8658'TotalMap_224
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v4
-- Ledger.Set.Theory._.FunTot.Fun∈TotalMap
d_Fun'8712'TotalMap_560 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_Fun'8712'TotalMap_560 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8712'TotalMap_234
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6
-- Ledger.Set.Theory._.FunTot.lookup∘Fun⇒TotalMap-id
d_lookup'8728'Fun'8658'TotalMap'45'id_562 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'8728'Fun'8658'TotalMap'45'id_562 = erased
-- Ledger.Set.Theory._.LookupUpdate.lookup-update-id
d_lookup'45'update'45'id_566 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'45'update'45'id_566 = erased
-- Ledger.Set.Theory._.LookupUpdate.∈-rel-update
d_'8712''45'rel'45'update_568 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'rel'45'update_568 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_'8712''45'rel'45'update_188
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v5 v6 v7
-- Ledger.Set.Theory._.TotalMap.left-unique-rel
d_left'45'unique'45'rel_572 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'rel_572 = erased
-- Ledger.Set.Theory._.TotalMap.lookup
d_lookup_574 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 -> AgdaAny -> AgdaAny
d_lookup_574 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_lookup_74
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.TotalMap.lookup∈rel
d_lookup'8712'rel_576 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_lookup'8712'rel_576 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_lookup'8712'rel_78
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.TotalMap.rel
d_rel_578 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rel_578 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_rel_66 (coe v0)
-- Ledger.Set.Theory._.TotalMap.toMap
d_toMap_580 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_580 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.TotalMap.du_toMap_72 v2
-- Ledger.Set.Theory._.TotalMap.total-rel
d_total'45'rel_582 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_total'45'rel_582 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_total'45'rel_70 (coe v0)
-- Ledger.Set.Theory._.TotalMap.∈-rel⇒lookup-≡
d_'8712''45'rel'8658'lookup'45''8801'_584 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45'rel'8658'lookup'45''8801'_584 = erased
-- Ledger.Set.Theory._.Update.mapWithKey
d_mapWithKey_588 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54
d_mapWithKey_588 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_mapWithKey_148
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v4 v5
-- Ledger.Set.Theory._.Update.update
d_update_590 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54
d_update_590 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_update_164
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory._.Update.updateFn-id
d_updateFn'45'id_592 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_updateFn'45'id_592 = erased
-- Ledger.Set.Theory._.fold-cong↭
d_fold'45'cong'8621'_624 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  AgdaAny
d_fold'45'cong'8621'_624 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_fold'45'cong'8621'_776 (coe v0) v2 v3
      v4 v5
-- Ledger.Set.Theory._.indexedSum
d_indexedSum_626 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum_626 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Sum.du_indexedSum_798 (coe v0) v2 v3
-- Ledger.Set.Theory._.indexedSum-cong
d_indexedSum'45'cong_628 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'cong_628 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'cong_900 (coe v0) v2 v3
      v4 v5
-- Ledger.Set.Theory._.indexedSum-singleton
d_indexedSum'45'singleton_630 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_indexedSum'45'singleton_630 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'singleton_928 (coe v0)
      v3 v4
-- Ledger.Set.Theory._.indexedSum-singleton'
d_indexedSum'45'singleton''_632 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'singleton''_632 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'singleton''_934
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe v0) v2 v3 v4 v5
-- Ledger.Set.Theory._.indexedSum-∅
d_indexedSum'45''8709'_634 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
d_indexedSum'45''8709'_634 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45''8709'_906
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe v0) v2 v3
-- Ledger.Set.Theory._.indexedSum-∪
d_indexedSum'45''8746'_636 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
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
d_indexedSum'45''8746'_636 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45''8746'_912 (coe v0) v2
      v3 v6 v7
-- Ledger.Set.Theory._.indexedSumL
d_indexedSumL_638 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_indexedSumL_638 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_752 (coe v0) v2
-- Ledger.Set.Theory._.indexedSumL'
d_indexedSumL''_640 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSumL''_640 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL''_760 (coe v0) v2 v3
-- Ledger.Set.Theory._.indexedSumL-++
d_indexedSumL'45''43''43'_642 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny] -> AgdaAny
d_indexedSumL'45''43''43'_642 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL'45''43''43'_824 (coe v0)
      v2 v3 v4
-- Ledger.Set.Theory._.indexedSumᵐ
d_indexedSum'7504'_644 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504'_644 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504'_968 (coe v0) v3 v4
      v5 v6
-- Ledger.Set.Theory._.indexedSumᵐ-cong
d_indexedSum'7504''45'cong_646 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504''45'cong_646 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'cong_982 (coe v0)
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory._.indexedSumᵛ
d_indexedSum'7515'_648 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515'_648 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7515'_976 (coe v0) v3 v4
      v5
-- Ledger.Set.Theory._.IndexedSumUnionᵐ._∪ˡᶠ_
d__'8746''737''7584'__652 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
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
d__'8746''737''7584'__652 ~v0 = du__'8746''737''7584'__652
du__'8746''737''7584'__652 ::
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
du__'8746''737''7584'__652 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du__'8746''737''7584'__1026
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v4 v5 v6 v7
-- Ledger.Set.Theory._.IndexedSumUnionᵐ.indexedSumᵐ-partition
d_indexedSum'7504''45'partition_654 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
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
d_indexedSum'7504''45'partition_654 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
                                    v10 v11
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'partition_1076
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe v0) v3 v4 v5 v6 v7 v8 v9 v10 v11
-- Ledger.Set.Theory._.IndexedSumUnionᵐ.indexedSumᵐ-∪
d_indexedSum'7504''45''8746'_656 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
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
d_indexedSum'7504''45''8746'_656 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45''8746'_1042
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe v0) v3 v4 v5 v6 v7 v8 v9
-- Ledger.Set.Theory._.IndexedSumUnionᵐ.∪ˡ-finite
d_'8746''737''45'finite_658 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
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
d_'8746''737''45'finite_658 ~v0 = du_'8746''737''45'finite_658
du_'8746''737''45'finite_658 ::
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
du_'8746''737''45'finite_658 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_'8746''737''45'finite_1020
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v4 v5 v6 v7 v8 v9
-- Ledger.Set.Theory._.Lookupᵐᵈ._∪⁺_
d__'8746''8314'__664 ::
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
d__'8746''8314'__664 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
      (coe d_List'45'Model'7496'_10) v3 v4
-- Ledger.Set.Theory._.Lookupᵐᵈ.aggregate₊
d_aggregate'8330'_666 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregate'8330'_666 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_498
      (coe d_List'45'Model'7496'_10) v3 v4 v5
-- Ledger.Set.Theory._.Lookupᵐᵈ.dom∪⁺⇔∪dom
d_dom'8746''8314''8660''8746'dom_668 ::
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
d_dom'8746''8314''8660''8746'dom_668 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8660''8746'dom_560
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6 v7
-- Ledger.Set.Theory._.Lookupᵐᵈ.dom∪⁺≡∪dom
d_dom'8746''8314''8801''8746'dom_670 ::
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
d_dom'8746''8314''8801''8746'dom_670 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8801''8746'dom_564
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6
-- Ledger.Set.Theory._.Lookupᵐᵈ.dom∪⁺⊆∪dom
d_dom'8746''8314''8838''8746'dom_672 ::
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
d_dom'8746''8314''8838''8746'dom_672 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_522
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6 v7 v8
-- Ledger.Set.Theory._.Lookupᵐᵈ.unionThese
d_unionThese_674 ::
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
d_unionThese_674 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_342
      (coe d_List'45'Model'7496'_10) v4 v5 v6 v7 v8
-- Ledger.Set.Theory._.Lookupᵐᵈ.unionWith
d_unionWith_676 ::
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
d_unionWith_676 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionWith_404
      (coe d_List'45'Model'7496'_10) v5 v6 v7 v8
-- Ledger.Set.Theory._.Lookupᵐᵈ.∪dom-lookup
d_'8746'dom'45'lookup_678 ::
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
d_'8746'dom'45'lookup_678 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'45'lookup_516
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6 v7
-- Ledger.Set.Theory._.Lookupᵐᵈ.∪dom⊆dom∪⁺
d_'8746'dom'8838'dom'8746''8314'_680 ::
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
d_'8746'dom'8838'dom'8746''8314'_680 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'8838'dom'8746''8314'_538
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6 v7 v8
-- Ledger.Set.Theory._._ᶠ
d__'7584'_684 ::
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584'_684 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Factor.du__'7584'_312 v1 v2
-- Ledger.Set.Theory._.∪-preserves-finite'
d_'8746''45'preserves'45'finite''_686 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite''_686 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_'8746''45'preserves'45'finite''_322
      (coe d_List'45'Model_6) v1 v2 v3 v4
-- Ledger.Set.Theory._.Factor.factor
d_factor_690 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  ([AgdaAny] -> AgdaAny) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor_690 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.Factor.du_factor_344 v3 v5
-- Ledger.Set.Theory._.Factor.factor-cong
d_factor'45'cong_692 ::
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
d_factor'45'cong_692 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45'cong_348 v4 v5 v6 v7
-- Ledger.Set.Theory._.Factor.factor-∪
d_factor'45''8746'_694 ::
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
d_factor'45''8746'_694 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'_384 v6 v7 v8 v9
      v10
-- Ledger.Set.Theory._.FactorUnique.deduplicate-Σ
d_deduplicate'45'Σ_698 ::
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
d_deduplicate'45'Σ_698 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Axiom.Set.Factor.du_deduplicate'45'Σ_420 v2 v6
-- Ledger.Set.Theory._.FactorUnique.ext
d_ext_700 ::
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
d_ext_700 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Axiom.Set.Factor.du_ext_424 v2 v4 v6
-- Ledger.Set.Theory._.FactorUnique.ext-cong
d_ext'45'cong_702 ::
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
d_ext'45'cong_702 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_ext'45'cong_430 v2 v5 v6 v7 v8
-- Ledger.Set.Theory._.FactorUnique.f-cong'
d_f'45'cong''_704 ::
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
d_f'45'cong''_704 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe MAlonzo.Code.Axiom.Set.Factor.du_f'45'cong''_412 v5 v6 v7 v8
-- Ledger.Set.Theory._.FactorUnique.factor
d_factor_706 ::
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
d_factor_706 ~v0 ~v1 v2 ~v3 v4 ~v5 = du_factor_706 v2 v4
du_factor_706 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor_706 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor_344
      (coe MAlonzo.Code.Axiom.Set.Factor.du_ext_424 (coe v0) (coe v1))
-- Ledger.Set.Theory._.FactorUnique.factor-cong
d_factor'45'cong_708 ::
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
d_factor'45'cong_708 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_factor'45'cong_708 v2 v5
du_factor'45'cong_708 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor'45'cong_708 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45'cong_348
      (coe
         MAlonzo.Code.Axiom.Set.Factor.du_ext'45'cong_430 (coe v0) (coe v1))
-- Ledger.Set.Theory._.FactorUnique.factor-∪
d_factor'45''8746'_710 ::
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
d_factor'45''8746'_710 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_factor'45''8746'_710
du_factor'45''8746'_710 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] -> [AgdaAny] -> AgdaAny) -> AgdaAny
du_factor'45''8746'_710 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'_384 v1 v2 v3 v4
      v5
-- Ledger.Set.Theory._.FactorUnique.factor-∪'
d_factor'45''8746'''_712 ::
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
d_factor'45''8746'''_712 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'''_466 v9 v10 v12
-- Ledger.Set.Theory._._._∣_
d__'8739'__724 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'__724 ~v0 v1 = du__'8739'__724 v1
du__'8739'__724 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739'__724 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'__678
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣_ᶜ
d__'8739'_'7580'_726 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'_'7580'_726 ~v0 v1 = du__'8739'_'7580'_726 v1
du__'8739'_'7580'_726 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739'_'7580'_726 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_684
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._⟪$⟫_
d__'10218''36''10219'__728 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
d__'10218''36''10219'__728 ~v0 v1 = du__'10218''36''10219'__728 v1
du__'10218''36''10219'__728 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
du__'10218''36''10219'__728 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'10218''36''10219'__690
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._.curryʳ
d_curry'691'_730 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_curry'691'_730 ~v0 v1 = du_curry'691'_730 v1
du_curry'691'_730 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_curry'691'_730 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_842
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.ex-⊆
d_ex'45''8838'_732 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_ex'45''8838'_732 ~v0 v1 = du_ex'45''8838'_732 v1
du_ex'45''8838'_732 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_ex'45''8838'_732 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_776
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.res-comp-cong
d_res'45'comp'45'cong_734 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'comp'45'cong_734 ~v0 v1 = du_res'45'comp'45'cong_734 v1
du_res'45'comp'45'cong_734 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'comp'45'cong_734 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_734
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-comp-dom
d_res'45'comp'45'dom_736 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'comp'45'dom_736 = erased
-- Ledger.Set.Theory._._.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_738 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'comp'45'dom'7504'_738 ~v0 v1
  = du_res'45'comp'45'dom'7504'_738 v1
du_res'45'comp'45'dom'7504'_738 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'comp'45'dom'7504'_738 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'dom'7504'_762
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-cong
d_res'45'cong_740 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'cong_740 ~v0 v1 = du_res'45'cong_740 v1
du_res'45'cong_740 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'cong_740 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'cong_698
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-dom
d_res'45'dom_742 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom_742 ~v0 v1 = du_res'45'dom_742 v1
du_res'45'dom_742 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom_742 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-dom-comm
d_res'45'dom'45'comm_744 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_744 ~v0 v1 = du_res'45'dom'45'comm_744 v1
du_res'45'dom'45'comm_744 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm_744 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm_982
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.res-dom-comm'
d_res'45'dom'45'comm''_746 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_746 ~v0 v1 = du_res'45'dom'45'comm''_746 v1
du_res'45'dom'45'comm''_746 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm''_746 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm''_976
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_748 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8745''8838'_748 ~v0 v1
  = du_res'45'dom'45'comm'8745''8838'_748 v1
du_res'45'dom'45'comm'8745''8838'_748 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'45'comm'8745''8838'_748 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8745''8838'_928
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5 v6
-- Ledger.Set.Theory._._.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_750 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8838''8745'_750 ~v0 v1
  = du_res'45'dom'45'comm'8838''8745'_750 v1
du_res'45'dom'45'comm'8838''8745'_750 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'45'comm'8838''8745'_750 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8838''8745'_920
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5 v6
-- Ledger.Set.Theory._._.res-domᵐ
d_res'45'dom'7504'_752 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'7504'_752 ~v0 v1 = du_res'45'dom'7504'_752 v1
du_res'45'dom'7504'_752 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'7504'_752 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'7504'_720
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_754 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45'disj'45''8746'_754 ~v0 v1
  = du_res'45'ex'45'disj'45''8746'_754 v1
du_res'45'ex'45'disj'45''8746'_754 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45'disj'45''8746'_754 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45'disj'45''8746'_834
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v1 v3 v4
-- Ledger.Set.Theory._._.res-ex-disjoint
d_res'45'ex'45'disjoint_756 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'ex'45'disjoint_756 = erased
-- Ledger.Set.Theory._._.res-ex-∪
d_res'45'ex'45''8746'_758 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45''8746'_758 ~v0 v1 = du_res'45'ex'45''8746'_758 v1
du_res'45'ex'45''8746'_758 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45''8746'_758 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45''8746'_812
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v1 v3 v4
-- Ledger.Set.Theory._._.res-∅
d_res'45''8709'_760 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_760 ~v0 ~v1 = du_res'45''8709'_760
du_res'45''8709'_760 ::
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709'_760 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709'_778
-- Ledger.Set.Theory._._.res-∅ᶜ
d_res'45''8709''7580'_762 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709''7580'_762 ~v0 v1 = du_res'45''8709''7580'_762 v1
du_res'45''8709''7580'_762 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709''7580'_762 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709''7580'_780
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2
-- Ledger.Set.Theory._._.res-⊆
d_res'45''8838'_764 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45''8838'_764 ~v0 v1 = du_res'45''8838'_764 v1
du_res'45''8838'_764 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45''8838'_764 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_774
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.∈-curryʳ
d_'8712''45'curry'691'_766 ::
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
d_'8712''45'curry'691'_766 ~v0 v1 = du_'8712''45'curry'691'_766 v1
du_'8712''45'curry'691'_766 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'curry'691'_766 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_854
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory._._.∈-resᶜ-dom
d_'8712''45'res'7580''45'dom_768 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'res'7580''45'dom_768 ~v0 v1
  = du_'8712''45'res'7580''45'dom_768 v1
du_'8712''45'res'7580''45'dom_768 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'res'7580''45'dom_768 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom_808
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.∈-resᶜ-dom⁺
d_'8712''45'res'7580''45'dom'8314'_770 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'res'7580''45'dom'8314'_770 ~v0 v1
  = du_'8712''45'res'7580''45'dom'8314'_770 v1
du_'8712''45'res'7580''45'dom'8314'_770 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'res'7580''45'dom'8314'_770 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8314'_796
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v1 v3 v4 v5
-- Ledger.Set.Theory._._.∈-resᶜ-dom⁻
d_'8712''45'res'7580''45'dom'8315'_772 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'res'7580''45'dom'8315'_772 ~v0 v1
  = du_'8712''45'res'7580''45'dom'8315'_772 v1
du_'8712''45'res'7580''45'dom'8315'_772 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'res'7580''45'dom'8315'_772 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_788
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._._∣^_
d__'8739''94'__776 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'__776 ~v0 v1 = du__'8739''94'__776 v1
du__'8739''94'__776 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739''94'__776 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1038
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣^_ᶜ
d__'8739''94'_'7580'_778 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'_'7580'_778 ~v0 v1 = du__'8739''94'_'7580'_778 v1
du__'8739''94'_'7580'_778 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739''94'_'7580'_778 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'_'7580'_1044
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._.coex-⊆
d_coex'45''8838'_780 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_coex'45''8838'_780 ~v0 v1 = du_coex'45''8838'_780 v1
du_coex'45''8838'_780 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_coex'45''8838'_780 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_coex'45''8838'_1052
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.cores-⊆
d_cores'45''8838'_782 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_cores'45''8838'_782 ~v0 v1 = du_cores'45''8838'_782 v1
du_cores'45''8838'_782 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_cores'45''8838'_782 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_cores'45''8838'_1050
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._._∣_
d__'8739'__786 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__786 ~v0 v1 = du__'8739'__786 v1
du__'8739'__786 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'__786 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣_ᶜ
d__'8739'_'7580'_788 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_788 ~v0 v1 = du__'8739'_'7580'_788 v1
du__'8739'_'7580'_788 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'_'7580'_788 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._⦅_,-⦆
d__'10629'_'44''45''10630'_790 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_790 ~v0 v1
  = du__'10629'_'44''45''10630'_790 v1
du__'10629'_'44''45''10630'_790 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'10629'_'44''45''10630'_790 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'10629'_'44''45''10630'_1398
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory._._.curryᵐ
d_curry'7504'_792 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_792 ~v0 v1 = du_curry'7504'_792 v1
du_curry'7504'_792 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_curry'7504'_792 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_curry'7504'_1292
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.mapSingleValue
d_mapSingleValue_794 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_794 ~v0 v1 = du_mapSingleValue_794 v1
du_mapSingleValue_794 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapSingleValue_794 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapSingleValue_1284
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.mapValueRestricted
d_mapValueRestricted_796 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_796 ~v0 v1 = du_mapValueRestricted_796 v1
du_mapValueRestricted_796 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValueRestricted_796 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1276
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.res-singleton
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
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton_1306
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.res-singleton'
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
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''_1342
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-singleton''
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
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''''_1384
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-singleton-inhabited
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
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'45'inhabited_1366
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-singleton⁺
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
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'8314'_1358
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.resᵐ-∅ᶜ
d_res'7504''45''8709''7580'_808 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7504''45''8709''7580'_808 ~v0 v1
  = du_res'7504''45''8709''7580'_808 v1
du_res'7504''45''8709''7580'_808 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'7504''45''8709''7580'_808 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'7504''45''8709''7580'_1274
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2
-- Ledger.Set.Theory._._.update
d_update_810 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_810 ~v0 v1 = du_update_810 v1
du_update_810 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_update_810 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_update_1400
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._._⁻¹_
d__'8315''185'__814 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
d__'8315''185'__814 ~v0 v1 = du__'8315''185'__814 v1
du__'8315''185'__814 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
du__'8315''185'__814 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1602
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣^_
d__'8739''94'__816 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'__816 ~v0 v1 = du__'8739''94'__816 v1
du__'8739''94'__816 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'__816 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__1586
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣^_ᶜ
d__'8739''94'_'7580'_818 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'_'7580'_818 ~v0 v1 = du__'8739''94'_'7580'_818 v1
du__'8739''94'_'7580'_818 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'_'7580'_818 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1594
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∪ˡ_
d__'8746''737'__822 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__822 ~v0 v1 = du__'8746''737'__822 v1
du__'8746''737'__822 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__822 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∪ˡ'_
d__'8746''737'''__824 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8746''737'''__824 ~v0 v1 = du__'8746''737'''__824 v1
du__'8746''737'''__824 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8746''737'''__824 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__878
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_826 ::
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
d_disjoint'45''8746''737''45'mapValues_826 ~v0 v1
  = du_disjoint'45''8746''737''45'mapValues_826 v1
du_disjoint'45''8746''737''45'mapValues_826 ::
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
du_disjoint'45''8746''737''45'mapValues_826 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45'mapValues_934
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5
-- Ledger.Set.Theory._._.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_828 ::
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
d_disjoint'45''8746''737''45''8746'_828 ~v0 v1
  = du_disjoint'45''8746''737''45''8746'_828 v1
du_disjoint'45''8746''737''45''8746'_828 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_828 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_898
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.insert
d_insert_830 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_830 ~v0 v1 = du_insert_830 v1
du_insert_830 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_830 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insert_906
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.insertIfJust
d_insertIfJust_832 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_832 ~v0 v1 = du_insertIfJust_832 v1
du_insertIfJust_832 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_832 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_914
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5
-- Ledger.Set.Theory._._._∩_
d__'8745'__836 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8745'__836 ~v0 v1 = du__'8745'__836 v1
du__'8745'__836 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'8745'__836 v0
  = let v1 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__692
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
            erased v0))
-- Ledger.Set.Theory._._._＼_
d__'65340'__838 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'65340'__838 ~v0 v1 = du__'65340'__838 v1
du__'65340'__838 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'65340'__838 v0
  = let v1 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'65340'__718
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
            erased v0))
-- Ledger.Set.Theory._._.disjoint'
d_disjoint''_840 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> ()
d_disjoint''_840 = erased
-- Ledger.Set.Theory._._.∈-∩
d_'8712''45''8745'_842 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_842 ~v0 v1 = du_'8712''45''8745'_842 v1
du_'8712''45''8745'_842 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45''8745'_842 v0
  = let v1 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_700
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
            erased v0))
-- Ledger.Set.Theory._._.lookupᵐ
d_lookup'7504'_846 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_lookup'7504'_846 ~v0 ~v1 = du_lookup'7504'_846
du_lookup'7504'_846 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_lookup'7504'_846 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1548
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory._._.lookupᵐ?
d_lookup'7504''63'_848 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
d_lookup'7504''63'_848 ~v0 ~v1 = du_lookup'7504''63'_848
du_lookup'7504''63'_848 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
du_lookup'7504''63'_848 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory._._.pullbackMap
d_pullbackMap_850 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pullbackMap_850 ~v0 ~v1 = du_pullbackMap_850
du_pullbackMap_850 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pullbackMap_850 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory._._._∪⁺_
d__'8746''8314'__854 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''8314'__854 ~v0 ~v1 = du__'8746''8314'__854
du__'8746''8314'__854 ::
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''8314'__854 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
      (coe d_List'45'Model'7496'_10) v1 v2
-- Ledger.Set.Theory._._.aggregate₊
d_aggregate'8330'_856 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregate'8330'_856 ~v0 ~v1 = du_aggregate'8330'_856
du_aggregate'8330'_856 ::
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_aggregate'8330'_856 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_498
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._._.dom∪⁺⇔∪dom
d_dom'8746''8314''8660''8746'dom_858 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_dom'8746''8314''8660''8746'dom_858 ~v0 ~v1
  = du_dom'8746''8314''8660''8746'dom_858
du_dom'8746''8314''8660''8746'dom_858 ::
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_dom'8746''8314''8660''8746'dom_858 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8660''8746'dom_560
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4 v5
-- Ledger.Set.Theory._._.dom∪⁺≡∪dom
d_dom'8746''8314''8801''8746'dom_860 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8746''8314''8801''8746'dom_860 ~v0 ~v1
  = du_dom'8746''8314''8801''8746'dom_860
du_dom'8746''8314''8801''8746'dom_860 ::
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'8746''8314''8801''8746'dom_860 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8801''8746'dom_564
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4
-- Ledger.Set.Theory._._.dom∪⁺⊆∪dom
d_dom'8746''8314''8838''8746'dom_862 ::
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
d_dom'8746''8314''8838''8746'dom_862 ~v0 ~v1
  = du_dom'8746''8314''8838''8746'dom_862
du_dom'8746''8314''8838''8746'dom_862 ::
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_dom'8746''8314''8838''8746'dom_862 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_522
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4 v5 v6
-- Ledger.Set.Theory._._.unionThese
d_unionThese_864 ::
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
d_unionThese_864 ~v0 ~v1 = du_unionThese_864
du_unionThese_864 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
du_unionThese_864 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_342
      (coe d_List'45'Model'7496'_10) v2 v3 v4 v5 v6
-- Ledger.Set.Theory._._.unionWith
d_unionWith_866 ::
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
d_unionWith_866 ~v0 ~v1 = du_unionWith_866
du_unionWith_866 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unionWith_866 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionWith_404
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6
-- Ledger.Set.Theory._._.∪dom-lookup
d_'8746'dom'45'lookup_868 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746'dom'45'lookup_868 ~v0 ~v1 = du_'8746'dom'45'lookup_868
du_'8746'dom'45'lookup_868 ::
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746'dom'45'lookup_868 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'45'lookup_516
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4 v5
-- Ledger.Set.Theory._._.∪dom⊆dom∪⁺
d_'8746'dom'8838'dom'8746''8314'_870 ::
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
d_'8746'dom'8838'dom'8746''8314'_870 ~v0 ~v1
  = du_'8746'dom'8838'dom'8746''8314'_870
du_'8746'dom'8838'dom'8746''8314'_870 ::
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8746'dom'8838'dom'8746''8314'_870 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'8838'dom'8746''8314'_538
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4 v5 v6
-- Ledger.Set.Theory._._._∩ᵐ_
d__'8745''7504'__886 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__886 ~v0 ~v1 v2 v3 = du__'8745''7504'__886 v2 v3
du__'8745''7504'__886 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8745''7504'__886 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8745''7504'__664
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            v0 v1))
-- Ledger.Set.Theory._._._._∪ˡᶠ_
d__'8746''737''7584'__898 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737''7584'__898 ~v0 ~v1 v2 ~v3 ~v4
  = du__'8746''737''7584'__898 v2
du__'8746''737''7584'__898 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737''7584'__898 v0
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du__'8746''737''7584'__1026
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1590 d_List'45'Model'7496'_10
              erased v0 v2 v1))
-- Ledger.Set.Theory._._._.indexedSumᵐ-partition
d_indexedSum'7504''45'partition_900 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504''45'partition_900 ~v0 ~v1 v2 v3 v4
  = du_indexedSum'7504''45'partition_900 v2 v3 v4
du_indexedSum'7504''45'partition_900 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7504''45'partition_900 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'partition_1076
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe v2) (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v3 v4 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1590 d_List'45'Model'7496'_10
              erased v0 v4 v3))
-- Ledger.Set.Theory._._._.indexedSumᵐ-∪
d_indexedSum'7504''45''8746'_902 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_indexedSum'7504''45''8746'_902 ~v0 ~v1 v2 v3 v4
  = du_indexedSum'7504''45''8746'_902 v2 v3 v4
du_indexedSum'7504''45''8746'_902 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
du_indexedSum'7504''45''8746'_902 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45''8746'_1042
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe v2) (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v7 v8 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1590 d_List'45'Model'7496'_10
              erased v0 v8 v7))
      v3 v4 v5
-- Ledger.Set.Theory._._._.∪ˡ-finite
d_'8746''737''45'finite_904 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''737''45'finite_904 ~v0 ~v1 v2 ~v3 ~v4
  = du_'8746''737''45'finite_904 v2
du_'8746''737''45'finite_904 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''737''45'finite_904 v0
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_'8746''737''45'finite_1020
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1590 d_List'45'Model'7496'_10
              erased v0 v2 v1))
-- Ledger.Set.Theory.Properties._._≡_⨿_
d__'8801'_'10815'__910 ::
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801'_'10815'__910 = erased
-- Ledger.Set.Theory.Properties._.Dec-∈-fromList
d_Dec'45''8712''45'fromList_912 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'fromList_912 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'fromList_626
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.Dec-∈-singleton
d_Dec'45''8712''45'singleton_914 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'singleton_914 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'singleton_632
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Set-BddSemilattice
d_Set'45'BddSemilattice_916 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102
d_Set'45'BddSemilattice_916 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'BddSemilattice_736
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.Set-BoundedJoinSemilattice
d_Set'45'BoundedJoinSemilattice_918 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedJoinSemilattice_116
d_Set'45'BoundedJoinSemilattice_918 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'BoundedJoinSemilattice_732
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.Set-JoinSemilattice
d_Set'45'JoinSemilattice_920 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_Set'45'JoinSemilattice_920 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'JoinSemilattice_730
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.card-≡ᵉ
d_card'45''8801''7497'_922 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8801''7497'_922 = erased
-- Ledger.Set.Theory.Properties._.cong-⊆⇒cong
d_cong'45''8838''8658'cong_924 ::
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
d_cong'45''8838''8658'cong_924 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_cong'45''8838''8658'cong_260
      v3 v4 v5 v6
-- Ledger.Set.Theory.Properties._.cong-⊆⇒cong₂
d_cong'45''8838''8658'cong'8322'_926 ::
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
d_cong'45''8838''8658'cong'8322'_926 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
                                     v10
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_cong'45''8838''8658'cong'8322'_268
      v4 v5 v6 v7 v8 v9 v10
-- Ledger.Set.Theory.Properties._.disjoint-sym
d_disjoint'45'sym_928 ::
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
d_disjoint'45'sym_928 = erased
-- Ledger.Set.Theory.Properties._.filter-finite
d_filter'45'finite_930 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'finite_930 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'finite_650
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Properties._.filter-hom-∪
d_filter'45'hom'45''8746'_932 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'hom'45''8746'_932 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8746'_618
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.filter-hom-⊆
d_filter'45'hom'45''8838'_934 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45'hom'45''8838'_934 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8838'_596
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6
-- Ledger.Set.Theory.Properties._.filter-hom-⊇
d_filter'45'hom'45''8839'_936 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45'hom'45''8839'_936 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8839'_608
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6
-- Ledger.Set.Theory.Properties._.filter-pres-≡ᵉ
d_filter'45'pres'45''8801''7497'_938 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'pres'45''8801''7497'_938 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8801''7497'_574
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.filter-pres-⊆
d_filter'45'pres'45''8838'_940 ::
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
d_filter'45'pres'45''8838'_940 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8838'_566
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.filter-split-∪
d_filter'45'split'45''8746'_942 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_filter'45'split'45''8746'_942 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'split'45''8746'_582
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6
-- Ledger.Set.Theory.Properties._.filter-∅
d_filter'45''8709'_944 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45''8709'_944 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8709'_536
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory.Properties._.filter-⊆
d_filter'45''8838'_946 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45''8838'_946 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_564
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.fromList-∪-singleton
d_fromList'45''8746''45'singleton_948 ::
  () ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'45''8746''45'singleton_948 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_fromList'45''8746''45'singleton_792
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.map-∅
d_map'45''8709'_950 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8709'_950 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8709'_444
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3
-- Ledger.Set.Theory.Properties._.map-∘
d_map'45''8728'_952 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8728'_952 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8728'_378
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4 v5
-- Ledger.Set.Theory.Properties._.map-∘⊆
d_map'45''8728''8838'_954 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8728''8838'_954 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8728''8838'_362
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.map-∪
d_map'45''8746'_956 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8746'_956 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8746'_458
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.map-≡ᵉ
d_map'45''8801''7497'_958 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8801''7497'_958 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8801''7497'_416
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.map-⊆
d_map'45''8838'_960 ::
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
d_map'45''8838'_960 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8838'_390
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.map-⊆∘
d_map'45''8838''8728'_962 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8838''8728'_962 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8838''8728'_340
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.mapPartial-∅
d_mapPartial'45''8709'_964 ::
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartial'45''8709'_964 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_mapPartial'45''8709'_484
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2
-- Ledger.Set.Theory.Properties._.singleton-finite
d_singleton'45'finite_966 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'finite_966 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_636
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory.Properties._.sublist-⇔
d_sublist'45''8660'_968 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_sublist'45''8660'_968 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_sublist'45''8660'_994
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∃-sublist-⇔
d_'8707''45'sublist'45''8660'_970 ::
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8707''45'sublist'45''8660'_970 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8707''45'sublist'45''8660'_1034
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory.Properties._.∃?-sublist-⇔
d_'8707''63''45'sublist'45''8660'_972 ::
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8707''63''45'sublist'45''8660'_972 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8707''63''45'sublist'45''8660'_1056
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory.Properties._.∅-finite
d_'8709''45'finite_974 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'finite_974 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_438
-- Ledger.Set.Theory.Properties._.∅-least
d_'8709''45'least_976 ::
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'least_976 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_432 v2
-- Ledger.Set.Theory.Properties._.∅-minimum
d_'8709''45'minimum_978 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8709''45'minimum_978 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'minimum_428
-- Ledger.Set.Theory.Properties._.∅-weakly-finite
d_'8709''45'weakly'45'finite_980 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'weakly'45'finite_980 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'weakly'45'finite_436
-- Ledger.Set.Theory.Properties._.∈-filter⁺'
d_'8712''45'filter'8314'''_982 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'filter'8314'''_982 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Properties._.∈-filter⁻'
d_'8712''45'filter'8315'''_984 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'filter'8315'''_984 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Properties._.∈-fromList⁺
d_'8712''45'fromList'8314'_986 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8314'_986 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8314'_228
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∈-fromList⁻
d_'8712''45'fromList'8315'_988 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8315'_988 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8315'_226
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∈-map⁺'
d_'8712''45'map'8314'''_990 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314'''_990 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''_170
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.∈-map⁺''
d_'8712''45'map'8314'''''_992 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314'''''_992 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_178
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.∈-map⁺-∘
d_'8712''45'map'8314''45''8728'_994 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314''45''8728'_994 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314''45''8728'_382
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.∈-map⁻'
d_'8712''45'map'8315'''_996 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'map'8315'''_996 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_166
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.∈-×
d_'8712''45''215'_998 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45''215'_998 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''215'_318
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.∈-∪⁺
d_'8712''45''8746''8314'_1000 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45''8746''8314'_1000 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_214
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.∈-∪⁻
d_'8712''45''8746''8315'_1002 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8712''45''8746''8315'_1002 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8315'_212
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.∉-∅
d_'8713''45''8709'_1004 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45''8709'_1004 = erased
-- Ledger.Set.Theory.Properties._.∪-Supremum
d_'8746''45'Supremum_1006 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'Supremum_1006 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'Supremum_696
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∪-assoc
d_'8746''45'assoc_1008 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'assoc_1008 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'assoc_784
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.∪-comm
d_'8746''45'comm_1010 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'comm_1010 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'comm_776
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∪-cong
d_'8746''45'cong_1012 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'cong_1012 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_706
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4
-- Ledger.Set.Theory.Properties._.∪-cong-⊆
d_'8746''45'cong'45''8838'_1014 ::
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
d_'8746''45'cong'45''8838'_1014 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong'45''8838'_700
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.∪-fromList-++
d_'8746''45'fromList'45''43''43'_1016 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'fromList'45''43''43'_1016 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'fromList'45''43''43'_824
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∪-identityʳ
d_'8746''45'identity'691'_1018 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'691'_1018 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'691'_770
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.∪-identityˡ
d_'8746''45'identity'737'_1020 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'737'_1020 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'737'_766
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.∪-preserves-finite
d_'8746''45'preserves'45'finite_1022 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite_1022 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4
-- Ledger.Set.Theory.Properties._.∪-sym
d_'8746''45'sym_1024 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'sym_1024 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'sym_728
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∪-⊆
d_'8746''45''8838'_1026 ::
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
d_'8746''45''8838'_1026 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838'_674
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.∪-⊆ʳ
d_'8746''45''8838''691'_1028 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838''691'_1028 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''691'_672
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.∪-⊆ˡ
d_'8746''45''8838''737'_1030 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838''737'_1030 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''737'_670
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.≡ᵉ-Setoid
d_'8801''7497''45'Setoid_1032 ::
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''7497''45'Setoid_1032 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_296
-- Ledger.Set.Theory.Properties._.≡ᵉ-isEquivalence
d_'8801''7497''45'isEquivalence_1034 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'8801''7497''45'isEquivalence_1034 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_282
-- Ledger.Set.Theory.Properties._.≡ᵉ⇔≡ᵉ'
d_'8801''7497''8660''8801''7497'''_1036 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''7497''8660''8801''7497'''_1036 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_244
-- Ledger.Set.Theory.Properties._.⊆-PartialOrder
d_'8838''45'PartialOrder_1038 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8838''45'PartialOrder_1038 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'PartialOrder_312
-- Ledger.Set.Theory.Properties._.⊆-Preorder
d_'8838''45'Preorder_1040 ::
  () ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8838''45'Preorder_1040 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Preorder_308
-- Ledger.Set.Theory.Properties._.⊆-Transitive
d_'8838''45'Transitive_1042 ::
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
d_'8838''45'Transitive_1042 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276 v4 v5
      v6 v7
-- Ledger.Set.Theory.Properties._.⊆-isPreorder
d_'8838''45'isPreorder_1044 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8838''45'isPreorder_1044 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'isPreorder_300
-- Ledger.Set.Theory.Properties._.⊆→∪
d_'8838''8594''8746'_1046 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''8594''8746'_1046 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''8594''8746'_682
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.Set-Lattice
d_Set'45'Lattice_1050 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
d_Set'45'Lattice_1050 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'Lattice_966
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_1052 ::
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
d_disjoint'''8658'disjoint_1052 = erased
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_1054 ::
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
d_disjoint'8658'disjoint''_1054 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_910
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-Infimum
d_'8745''45'Infimum_1056 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_1056 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'Infimum_934
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_1058 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'691'_1058 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'691'_958
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_1060 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'737'_1060 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'737'_964
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-cong
d_'8745''45'cong_1062 ::
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
d_'8745''45'cong_1062 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong_952
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-cong-⊆
d_'8745''45'cong'45''8838'_1064 ::
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
d_'8745''45'cong'45''8838'_1064 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong'45''8838'_944
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5 v6 v7 v8 v9
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-preserves-finite
d_'8745''45'preserves'45'finite_1066 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_1066 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'preserves'45'finite_942
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-sym
d_'8745''45'sym_1068 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_1068 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_982
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-sym⊆
d_'8745''45'sym'8838'_1070 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'sym'8838'_1070 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym'8838'_968
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-⊆
d_'8745''45''8838'_1072 ::
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
d_'8745''45''8838'_1072 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838'_926
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6 v7 v8
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-⊆ʳ
d_'8745''45''8838''691'_1074 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''691'_1074 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''691'_924
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-⊆ˡ
d_'8745''45''8838''737'_1076 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''737'_1076 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''737'_922
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._._.Set-Lattice
d_Set'45'Lattice_1088 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
d_Set'45'Lattice_1088 ~v0 v1 = du_Set'45'Lattice_1088 v1
du_Set'45'Lattice_1088 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
du_Set'45'Lattice_1088 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'Lattice_966
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_1090 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'''8658'disjoint_1090 = erased
-- Ledger.Set.Theory.Properties._._.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_1092 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'8658'disjoint''_1092 ~v0 ~v1
  = du_disjoint'8658'disjoint''_1092
du_disjoint'8658'disjoint''_1092 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'8658'disjoint''_1092 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_910
-- Ledger.Set.Theory.Properties._._.∩-Infimum
d_'8745''45'Infimum_1094 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_1094 ~v0 v1 = du_'8745''45'Infimum_1094 v1
du_'8745''45'Infimum_1094 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'Infimum_1094 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'Infimum_934
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_1096 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'691'_1096 ~v0 v1
  = du_'8745''45'OrderHomomorphism'691'_1096 v1
du_'8745''45'OrderHomomorphism'691'_1096 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
du_'8745''45'OrderHomomorphism'691'_1096 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'691'_958
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_1098 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'737'_1098 ~v0 v1
  = du_'8745''45'OrderHomomorphism'737'_1098 v1
du_'8745''45'OrderHomomorphism'737'_1098 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
du_'8745''45'OrderHomomorphism'737'_1098 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'737'_964
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-cong
d_'8745''45'cong_1100 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'cong_1100 ~v0 v1 = du_'8745''45'cong_1100 v1
du_'8745''45'cong_1100 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'cong_1100 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong_952
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-cong-⊆
d_'8745''45'cong'45''8838'_1102 ::
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
d_'8745''45'cong'45''8838'_1102 ~v0 v1
  = du_'8745''45'cong'45''8838'_1102 v1
du_'8745''45'cong'45''8838'_1102 ::
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
du_'8745''45'cong'45''8838'_1102 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong'45''8838'_944
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-preserves-finite
d_'8745''45'preserves'45'finite_1104 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_1104 ~v0 v1
  = du_'8745''45'preserves'45'finite_1104 v1
du_'8745''45'preserves'45'finite_1104 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'preserves'45'finite_1104 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'preserves'45'finite_942
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v1 v2
-- Ledger.Set.Theory.Properties._._.∩-sym
d_'8745''45'sym_1106 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_1106 ~v0 v1 = du_'8745''45'sym_1106 v1
du_'8745''45'sym_1106 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'sym_1106 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_982
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-sym⊆
d_'8745''45'sym'8838'_1108 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'sym'8838'_1108 ~v0 v1 = du_'8745''45'sym'8838'_1108 v1
du_'8745''45'sym'8838'_1108 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45'sym'8838'_1108 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym'8838'_968
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-⊆
d_'8745''45''8838'_1110 ::
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
d_'8745''45''8838'_1110 ~v0 v1 = du_'8745''45''8838'_1110 v1
du_'8745''45''8838'_1110 ::
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
du_'8745''45''8838'_1110 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838'_926
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._._.∩-⊆ʳ
d_'8745''45''8838''691'_1112 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''691'_1112 ~v0 v1
  = du_'8745''45''8838''691'_1112 v1
du_'8745''45''8838''691'_1112 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45''8838''691'_1112 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''691'_924
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-⊆ˡ
d_'8745''45''8838''737'_1114 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''737'_1114 ~v0 v1
  = du_'8745''45''8838''737'_1114 v1
du_'8745''45''8838''737'_1114 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45''8838''737'_1114 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''737'_922
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory._ᶠᵐ
d__'7584''7504'_1116 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584''7504'_1116 ~v0 ~v1 v2 = du__'7584''7504'_1116 v2
du__'7584''7504'_1116 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7584''7504'_1116 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                (coe du_finiteness_218 v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Set.Theory._ᶠˢ
d__'7584''738'_1122 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584''738'_1122 ~v0 v1 = du__'7584''738'_1122 v1
du__'7584''738'_1122 ::
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7584''738'_1122 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
      (coe du_finiteness_218 v0)
-- Ledger.Set.Theory.filterˢ
d_filter'738'_1130 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> [AgdaAny]
d_filter'738'_1130 ~v0 ~v1 v2 = du_filter'738'_1130 v2
du_filter'738'_1130 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> [AgdaAny]
du_filter'738'_1130 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_filter_408
      (MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe du_to'45'sp_214 (coe v0))
-- Ledger.Set.Theory.filterᵐ
d_filter'7504'_1138 ::
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_1138 ~v0 ~v1 ~v2 v3 = du_filter'7504'_1138 v3
du_filter'7504'_1138 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504'_1138 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_706
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe du_to'45'sp_214 (coe v0))
-- Ledger.Set.Theory.filterKeys
d_filterKeys_1146 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_1146 ~v0 ~v1 ~v2 v3 = du_filterKeys_1146 v3
du_filterKeys_1146 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterKeys_1146 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filterKeys_720
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe du_to'45'sp_214 (coe v0))
-- Ledger.Set.Theory._∣^'_
d__'8739''94'''__1154 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'''__1154 ~v0 ~v1 v2 ~v3 v4
  = du__'8739''94'''__1154 v2 v4
du__'8739''94'''__1154 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'''__1154 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'''__1106
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe v0) (coe du_to'45'sp_214 (coe v1))
-- Ledger.Set.Theory.indexedSumᵛ'
d_indexedSum'7515'''_1160 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515'''_1160 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_indexedSum'7515'''_1160 v3 v4 v5 v6 v7
du_indexedSum'7515'''_1160 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7515'''_1160 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7515'_976
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_fromCommMonoid''_40
         (coe v2))
      v0 v1 v3 (coe du__'7584''7504'_1116 (coe v4))
-- Ledger.Set.Theory.indexedSum'
d_indexedSum''_1166 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_indexedSum''_1166 ~v0 ~v1 v2 v3 v4 v5
  = du_indexedSum''_1166 v2 v3 v4 v5
du_indexedSum''_1166 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_indexedSum''_1166 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum_798
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_fromCommMonoid''_40
         (coe v1))
      v0 v2 (coe du__'7584''738'_1122 (coe v3))
-- Ledger.Set.Theory.singleton-≢-∅
d_singleton'45''8802''45''8709'_1176 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_singleton'45''8802''45''8709'_1176 = erased
-- Ledger.Set.Theory.aggregateBy
d_aggregateBy_1180 ::
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
d_aggregateBy_1180 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_aggregateBy_1180 v3 v4 v5 v6 v7 v8
du_aggregateBy_1180 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_aggregateBy_1180 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1028
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
      (coe
         (\ v6 ->
            coe
              du_indexedSum'7515'''_1160 (coe v0) (coe v2) (coe v3)
              (coe (\ v7 -> v7))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
                    erased v0)
                 (coe v5)
                 (coe
                    MAlonzo.Code.Axiom.Set.Rel.du_dom_338
                    (MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1038
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
                       (coe
                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588 d_List'45'Model'7496'_10
                          erased v1)
                       (coe v4)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                          (MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
                          erased v6))))))
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_range_340
         (MAlonzo.Code.Axiom.Set.d_th_1458 (coe d_List'45'Model'7496'_10))
         v4)
