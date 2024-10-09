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
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Factor
import qualified MAlonzo.Code.Axiom.Set.List
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Axiom.Set.TotalMap
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
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
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Structures
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Ledger.Set.Theory.List-Model
d_List'45'Model_6 :: MAlonzo.Code.Axiom.Set.T_Theory_94
d_List'45'Model_6
  = coe MAlonzo.Code.Axiom.Set.List.d_List'45'Model_6
-- Ledger.Set.Theory.List-Modelᶠ
d_List'45'Model'7584'_8 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7584'_752
d_List'45'Model'7584'_8
  = coe MAlonzo.Code.Axiom.Set.List.d_List'45'Model'7584'_58
-- Ledger.Set.Theory.List-Modelᵈ
d_List'45'Model'7496'_10 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1318
d_List'45'Model'7496'_10
  = coe MAlonzo.Code.Axiom.Set.List.d_List'45'Model'7496'_210
-- Ledger.Set.Theory._._Preservesˢ_
d__Preserves'738'__22 ::
  () ->
  () -> ([AgdaAny] -> [AgdaAny]) -> (() -> [AgdaAny] -> ()) -> ()
d__Preserves'738'__22 = erased
-- Ledger.Set.Theory._._Preservesˢ₂_
d__Preserves'738''8322'__24 ::
  () ->
  () ->
  () ->
  ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) ->
  (() -> [AgdaAny] -> ()) -> ()
d__Preserves'738''8322'__24 = erased
-- Ledger.Set.Theory._._∈?_
d__'8712''63'__26 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8712''63'__26
  = coe
      MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._._∈ᵇ_
d__'8712''7495'__28 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> [AgdaAny] -> Bool
d__'8712''7495'__28 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du__'8712''7495'__1666
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._._∪_
d__'8746'__30 :: () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8746'__30
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du__'8746'__680
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v2 v3)
-- Ledger.Set.Theory._._≡ᵉ_
d__'8801''7497'__32 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801''7497'__32 = erased
-- Ledger.Set.Theory._._≡ᵉ'_
d__'8801''7497'''__34 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801''7497'''__34 = erased
-- Ledger.Set.Theory._._⊆_
d__'8838'__36 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__36 = erased
-- Ledger.Set.Theory._.All
d_All_38 :: () -> (AgdaAny -> ()) -> [AgdaAny] -> ()
d_All_38 = erased
-- Ledger.Set.Theory._.Any
d_Any_40 :: () -> (AgdaAny -> ()) -> [AgdaAny] -> ()
d_Any_40 = erased
-- Ledger.Set.Theory._.Dec-Allˢ
d_Dec'45'All'738'_42 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'All'738'_42 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
      (coe d_List'45'Model'7496'_10) v2 v3
-- Ledger.Set.Theory._.Dec-Anyˢ
d_Dec'45'Any'738'_44 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'Any'738'_44 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1638
      (coe d_List'45'Model'7496'_10) v2 v3
-- Ledger.Set.Theory._.Dec-∈
d_Dec'45''8712'_46 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8712'_46 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_48 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_48 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_DecEq'8743'finite'8658'strongly'45'finite_318
      v1 v3
-- Ledger.Set.Theory._.FinSet
d_FinSet_50 :: () -> ()
d_FinSet_50 = erased
-- Ledger.Set.Theory._.Show-finite
d_Show'45'finite_52 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_52 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du_Show'45'finite_292 v1
-- Ledger.Set.Theory._.all?
d_all'63'_54 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_all'63'_54
  = coe
      MAlonzo.Code.Axiom.Set.d_all'63'_1610
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.allᵇ
d_all'7495'_56 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> Bool
d_all'7495'_56 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_all'7495'_1648
      (coe d_List'45'Model'7496'_10) v2 v3
-- Ledger.Set.Theory._.any?
d_any'63'_58 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63'_58
  = coe
      MAlonzo.Code.Axiom.Set.d_any'63'_1618
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.anyᵇ
d_any'7495'_60 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> Bool
d_any'7495'_60 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_any'7495'_1652
      (coe d_List'45'Model'7496'_10) v2 v3
-- Ledger.Set.Theory._.binary-unions
d_binary'45'unions_62 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_62
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_binary'45'unions_644
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.card
d_card_64 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_64 v0 v1 = coe MAlonzo.Code.Axiom.Set.du_card_336 v1
-- Ledger.Set.Theory._.card-∅
d_card'45''8709'_66 ::
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_66 = erased
-- Ledger.Set.Theory._.concatMapˢ
d_concatMap'738'_68 ::
  () -> () -> (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
d_concatMap'738'_68
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v3 v4)
-- Ledger.Set.Theory._.disjoint
d_disjoint_70 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d_disjoint_70 = erased
-- Ledger.Set.Theory._.filter
d_filter_72 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny]
d_filter_72
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_filter_420
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)))
-- Ledger.Set.Theory._.finite
d_finite_74 :: () -> [AgdaAny] -> ()
d_finite_74 = erased
-- Ledger.Set.Theory._.fromList
d_fromList_76 :: () -> [AgdaAny] -> [AgdaAny]
d_fromList_76
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_fromList_428
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v2)
-- Ledger.Set.Theory._.incl-set
d_incl'45'set_78 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_incl'45'set_78 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set_1710
      (coe d_List'45'Model'7496'_10) v1 v2
-- Ledger.Set.Theory._.incl-set'
d_incl'45'set''_80 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set''_80 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set''_1684
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._.incl-set-proj₁
d_incl'45'set'45'proj'8321'_82 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set'45'proj'8321'_82 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321'_1770
      (coe d_List'45'Model'7496'_10) v1 v2
-- Ledger.Set.Theory._.incl-set-proj₁⊆
d_incl'45'set'45'proj'8321''8838'_84 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_incl'45'set'45'proj'8321''8838'_84 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321''8838'_1720
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4
-- Ledger.Set.Theory._.incl-set-proj₁⊇
d_incl'45'set'45'proj'8321''8839'_86 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_incl'45'set'45'proj'8321''8839'_86 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321''8839'_1732
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4
-- Ledger.Set.Theory._.isMaximal
d_isMaximal_88 :: () -> [AgdaAny] -> ()
d_isMaximal_88 = erased
-- Ledger.Set.Theory._.listing
d_listing_90 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_90
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_listing_216
         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)))
-- Ledger.Set.Theory._.mapPartial
d_mapPartial_92 ::
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_mapPartial_92
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_mapPartial_576
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v3)
-- Ledger.Set.Theory._.map
d_map_94 ::
  () -> () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_map_94
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_map_398
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)))
-- Ledger.Set.Theory._.maximal-unique
d_maximal'45'unique_96 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_96 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.du_maximal'45'unique_360 v3 v4
-- Ledger.Set.Theory._.maximal-⊆
d_maximal'45''8838'_98 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_maximal'45''8838'_98 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.du_maximal'45''8838'_356 v3 v4
-- Ledger.Set.Theory._.partialToSet
d_partialToSet_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> [AgdaAny]
d_partialToSet_100
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_partialToSet_472
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v4 v5)
-- Ledger.Set.Theory._.replacement
d_replacement_102 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_102
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_replacement_208
         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)))
-- Ledger.Set.Theory._.singleton
d_singleton_104 :: () -> AgdaAny -> [AgdaAny]
d_singleton_104
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_singleton_448
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v2)
-- Ledger.Set.Theory._.sp
d_sp_106 :: MAlonzo.Code.Axiom.Set.T_SpecProperty_48
d_sp_106
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp_162
         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)))
-- Ledger.Set.Theory._.sp-¬
d_sp'45''172'_108 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_sp'45''172'_108
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
         (coe
            MAlonzo.Code.Axiom.Set.d_sp_162
            (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0))))
-- Ledger.Set.Theory._.sp-∘
d_sp'45''8728'_110 ::
  () ->
  (AgdaAny -> ()) ->
  () ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_sp'45''8728'_110
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (coe
            MAlonzo.Code.Axiom.Set.d_sp_162
            (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0))))
-- Ledger.Set.Theory._.spec-∈
d_spec'45''8712'_112 :: () -> ()
d_spec'45''8712'_112 = erased
-- Ledger.Set.Theory._.specProperty
d_specProperty_114 :: () -> (AgdaAny -> ()) -> ()
d_specProperty_114 = erased
-- Ledger.Set.Theory._.specification
d_specification_116 ::
  () ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_116
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_specification_186
         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)))
-- Ledger.Set.Theory._.strictify
d_strictify_118 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_118
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_strictify_378
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v3 v4)
-- Ledger.Set.Theory._.strongly-finite
d_strongly'45'finite_120 :: () -> [AgdaAny] -> ()
d_strongly'45'finite_120 = erased
-- Ledger.Set.Theory._.th
d_th_122 :: MAlonzo.Code.Axiom.Set.T_Theory_94
d_th_122
  = coe
      MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.unions
d_unions_124 ::
  () -> [[AgdaAny]] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_124
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_unions_196
         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)))
-- Ledger.Set.Theory._.weakly-finite
d_weakly'45'finite_126 :: () -> [AgdaAny] -> ()
d_weakly'45'finite_126 = erased
-- Ledger.Set.Theory._.Set
d_Set_128 :: () -> ()
d_Set_128 = erased
-- Ledger.Set.Theory._.∅
d_'8709'_130 :: () -> [AgdaAny]
d_'8709'_130
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709'_442
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)))
-- Ledger.Set.Theory._.∅-strongly-finite
d_'8709''45'strongly'45'finite_132 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_132
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709''45'strongly'45'finite_444
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)))
-- Ledger.Set.Theory._.∈-concatMapˢ
d_'8712''45'concatMap'738'_134 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_134
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'concatMap'738'_520
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-filter
d_'8712''45'filter_136 ::
  () ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_136
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'filter_426
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-fromList
d_'8712''45'fromList_138 ::
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_138
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_432
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.∈-irrelevant
d_'8712''45'irrelevant_140 :: () -> [AgdaAny] -> ()
d_'8712''45'irrelevant_140 = erased
-- Ledger.Set.Theory._.∈-map
d_'8712''45'map_142 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_142
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'map_406
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-mapPartial
d_'8712''45'mapPartial_144 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_144
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'mapPartial_586
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-map′
d_'8712''45'map'8242'_146 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8242'_146
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_412
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v3 v4 v5 v6)
-- Ledger.Set.Theory._.∈-partialToSet
d_'8712''45'partialToSet_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_148
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'partialToSet_484
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v5)
-- Ledger.Set.Theory._.∈-singleton
d_'8712''45'singleton_150 ::
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_150
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_458
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.∈-sp
d_'8712''45'sp_152 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8712''45'sp_152
  = coe
      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.∈-unions
d_'8712''45'unions_154 ::
  () ->
  AgdaAny ->
  [[AgdaAny]] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_154
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'unions_440
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.∈-∪
d_'8712''45''8746'_156 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_156
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_688
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v2 v3 v4)
-- Ledger.Set.Theory._.≡→∈
d_'8801''8594''8712'_158 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8801''8594''8712'_158 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'8801''8594''8712'_158 v4
du_'8801''8594''8712'_158 ::
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8801''8594''8712'_158 v0 = coe v0
-- Ledger.Set.Theory._.⊆-mapPartial
d_'8838''45'mapPartial_160 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> Maybe AgdaAny) ->
  Maybe AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'mapPartial_160
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8838''45'mapPartial_604
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v3 v4 v5 v6)
-- Ledger.Set.Theory._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_162 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_162 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_'8838''45'weakly'45'finite_340 v3 v4
-- Ledger.Set.Theory._.❴_❵
d_'10100'_'10101'_164 :: () -> AgdaAny -> [AgdaAny]
d_'10100'_'10101'_164
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)))
-- Ledger.Set.Theory._.Intersection._∩_
d__'8745'__168 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8745'__168
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du__'8745'__704
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v2 v3 v4)
-- Ledger.Set.Theory._.Intersection._＼_
d__'65340'__170 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'65340'__170
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du__'65340'__730
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v2 v3 v4)
-- Ledger.Set.Theory._.Intersection.disjoint'
d_disjoint''_172 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> ()
d_disjoint''_172 = erased
-- Ledger.Set.Theory._.Intersection.∈-∩
d_'8712''45''8745'_174 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_174
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_712
           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v0)) v2 v3 v4 v5)
-- Ledger.Set.Theory._._∈_
d__'8712'__178 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_482 ->
  AgdaAny -> AgdaAny -> ()
d__'8712'__178 = erased
-- Ledger.Set.Theory._._∉_
d__'8713'__180 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_482 ->
  AgdaAny -> AgdaAny -> ()
d__'8713'__180 = erased
-- Ledger.Set.Theory._.All-syntax
d_All'45'syntax_182 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_482 ->
  (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_182 = erased
-- Ledger.Set.Theory._.Ex-syntax
d_Ex'45'syntax_184 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_482 ->
  (AgdaAny -> ()) -> AgdaAny -> ()
d_Ex'45'syntax_184 = erased
-- Ledger.Set.Theory._.IsSet
d_IsSet_186 a0 a1 = ()
-- Ledger.Set.Theory._.IsSet-Map
d_IsSet'45'Map_188 ::
  () -> () -> MAlonzo.Code.Interface.IsSet.T_IsSet_482
d_IsSet'45'Map_188 v0 v1
  = coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_556
-- Ledger.Set.Theory._.IsSet-Set
d_IsSet'45'Set_190 ::
  () -> MAlonzo.Code.Interface.IsSet.T_IsSet_482
d_IsSet'45'Set_190 v0
  = coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_552
-- Ledger.Set.Theory._.IsSet-TotalMap
d_IsSet'45'TotalMap_192 ::
  () -> () -> MAlonzo.Code.Interface.IsSet.T_IsSet_482
d_IsSet'45'TotalMap_192 v0 v1
  = coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'TotalMap_558
-- Ledger.Set.Theory._.dom
d_dom_194 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_482 -> AgdaAny -> [AgdaAny]
d_dom_194 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Interface.IsSet.du_dom_548
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.range
d_range_196 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_482 -> AgdaAny -> [AgdaAny]
d_range_196 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Interface.IsSet.du_range_550
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.toSet
d_toSet_198 ::
  MAlonzo.Code.Interface.IsSet.T_IsSet_482 -> AgdaAny -> [AgdaAny]
d_toSet_198 v0
  = coe MAlonzo.Code.Interface.IsSet.d_toSet_490 (coe v0)
-- Ledger.Set.Theory._.IsSet._∈_
d__'8712'__202 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_482 ->
  AgdaAny -> AgdaAny -> ()
d__'8712'__202 = erased
-- Ledger.Set.Theory._.IsSet._∉_
d__'8713'__204 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_482 ->
  AgdaAny -> AgdaAny -> ()
d__'8713'__204 = erased
-- Ledger.Set.Theory._.IsSet.toSet
d_toSet_206 ::
  MAlonzo.Code.Interface.IsSet.T_IsSet_482 -> AgdaAny -> [AgdaAny]
d_toSet_206 v0
  = coe MAlonzo.Code.Interface.IsSet.d_toSet_490 (coe v0)
-- Ledger.Set.Theory.to-sp
d_to'45'sp_216 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_to'45'sp_216 ~v0 ~v1 v2 = du_to'45'sp_216 v2
du_to'45'sp_216 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_to'45'sp_216 v0
  = coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v0)
-- Ledger.Set.Theory.finiteness
d_finiteness_220 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_finiteness_220 ~v0 = du_finiteness_220
du_finiteness_220 ::
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_finiteness_220
  = coe
      MAlonzo.Code.Axiom.Set.d_finiteness_1020 d_List'45'Model'7584'_8
      erased
-- Ledger.Set.Theory.lengthˢ
d_length'738'_228 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_482 -> AgdaAny -> Integer
d_length'738'_228 ~v0 ~v1 v2 v3 v4 = du_length'738'_228 v2 v3 v4
du_length'738'_228 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_482 -> AgdaAny -> Integer
du_length'738'_228 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_length'738'_1028
      (coe d_List'45'Model'7584'_8) (coe v0)
      (coe MAlonzo.Code.Interface.IsSet.d_toSet_490 v1 v2)
-- Ledger.Set.Theory.lengthˢ-≡ᵉ
d_length'738''45''8801''7497'_242 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_482 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'738''45''8801''7497'_242 = erased
-- Ledger.Set.Theory.lengthˢ-∅
d_length'738''45''8709'_252 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'738''45''8709'_252 = erased
-- Ledger.Set.Theory.setToList
d_setToList_254 :: () -> [AgdaAny] -> [AgdaAny]
d_setToList_254 ~v0 v1 = du_setToList_254 v1
du_setToList_254 :: [AgdaAny] -> [AgdaAny]
du_setToList_254 v0 = coe v0
-- Ledger.Set.Theory.DecEq-ℙ
d_DecEq'45'ℙ_258 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ℙ_258 ~v0 v1 = du_DecEq'45'ℙ_258 v1
du_DecEq'45'ℙ_258 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'ℙ_258 v0
  = coe MAlonzo.Code.Axiom.Set.List.du_DecEq'45'Set_208 (coe v0)
-- Ledger.Set.Theory.Show-ℙ
d_Show'45'ℙ_262 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℙ_262 ~v0 v1 = du_Show'45'ℙ_262 v1
du_Show'45'ℙ_262 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℙ_262 v0
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
                       (coe du_finiteness_220 v1))))))
-- Ledger.Set.Theory.Rel._∣'_
d__'8739'''__268 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'''__268 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'''__348
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel._∣^'_
d__'8739''94'''__270 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'''__270 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'''__356
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel.Rel
d_Rel_272 :: () -> () -> ()
d_Rel_272 = erased
-- Ledger.Set.Theory.Rel.disjoint-dom⇒disjoint
d_disjoint'45'dom'8658'disjoint_274 ::
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
d_disjoint'45'dom'8658'disjoint_274 = erased
-- Ledger.Set.Theory.Rel.dom
d_dom_276 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_dom_276 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_338
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Rel.dom-cong
d_dom'45'cong_278 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'cong_278 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'cong_520
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Rel.dom-mapʳ⊆
d_dom'45'map'691''8838'_280 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'map'691''8838'_280 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'map'691''8838'_550
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.dom-mapˡ≡map-dom
d_dom'45'map'737''8801'map'45'dom_282 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'map'737''8801'map'45'dom_282 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'map'737''8801'map'45'dom_580
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel.dom-single→single
d_dom'45'single'8594'single_284 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'single'8594'single_284 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'single'8594'single_470
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Rel.dom-single≡single
d_dom'45'single'8801'single_286 ::
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'single'8801'single_286 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'single'8801'single_474
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory.Rel.dom-∅
d_dom'45''8709'_288 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45''8709'_288 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom'45''8709'_628
-- Ledger.Set.Theory.Rel.dom-⊆mapʳ
d_dom'45''8838'map'691'_290 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45''8838'map'691'_290 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45''8838'map'691'_526
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.dom∅
d_dom'8709'_292 ::
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8709'_292 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom'8709'_492
-- Ledger.Set.Theory.Rel.dom∈
d_dom'8712'_294 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_dom'8712'_294 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_422
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory.Rel.dom∪
d_dom'8746'_296 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8746'_296 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8746'_494
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory.Rel.dom⊆
d_dom'8838'_298 ::
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
d_dom'8838'_298 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8838'_514
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.impl⇒cores⊆
d_impl'8658'cores'8838'_300 ::
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
d_impl'8658'cores'8838'_300 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_impl'8658'cores'8838'_396
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v5 v6 v7 v8 v9
-- Ledger.Set.Theory.Rel.impl⇒res⊆
d_impl'8658'res'8838'_302 ::
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
d_impl'8658'res'8838'_302 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_impl'8658'res'8838'_374
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v5 v6 v7 v8 v9
-- Ledger.Set.Theory.Rel.mapMaybeWithKey
d_mapMaybeWithKey_304 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_mapMaybeWithKey_304 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_mapMaybeWithKey_696
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel.mapPartialLiftKey
d_mapPartialLiftKey_306 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey_306 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_636 v3 v4
-- Ledger.Set.Theory.Rel.mapPartialLiftKey-map
d_mapPartialLiftKey'45'map_308 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey'45'map_308 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey'45'map_656
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Rel.mapʳ
d_map'691'_310 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_map'691'_310 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'691'_412
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel.mapʳ-dom
d_map'691''45'dom_312 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'691''45'dom_312 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'691''45'dom_576
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel.mapˡ
d_map'737'_314 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_map'737'_314 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'737'_406
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel.range
d_range_316 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_range_316 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_range_340
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Rel.relatedˡ
d_related'737'_318 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_related'737'_318 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_related'737'_334
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Rel.single→dom-single
d_single'8594'dom'45'single_320 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_single'8594'dom'45'single_320 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_single'8594'dom'45'single_472
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Rel.∅ʳ
d_'8709''691'_322 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'8709''691'_322 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8709''691'_336
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Rel.∈-dom
d_'8712''45'dom_324 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'dom_324 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_478
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Rel.∈-dom-singleton-pair
d_'8712''45'dom'45'singleton'45'pair_326 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'dom'45'singleton'45'pair_326 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom'45'singleton'45'pair_466
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Rel.∈-mapMaybeWithKey
d_'8712''45'mapMaybeWithKey_328 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'mapMaybeWithKey_328 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'mapMaybeWithKey_712
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Rel.∉-dom∅
d_'8713''45'dom'8709'_330 ::
  () ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45'dom'8709'_330 = erased
-- Ledger.Set.Theory.Rel.Corestriction._∣^_
d__'8739''94'__334 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'__334 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1088
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Rel.Corestriction._∣^_ᶜ
d__'8739''94'_'7580'_336 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'_'7580'_336 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'_'7580'_1094
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Rel.Corestriction.coex-⊆
d_coex'45''8838'_338 ::
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
d_coex'45''8838'_338 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_coex'45''8838'_1102
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Rel.Corestriction.cores-⊆
d_cores'45''8838'_340 ::
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
d_cores'45''8838'_340 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_cores'45''8838'_1100
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Rel.Restriction._∣_
d__'8739'__344 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'__344 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'__728
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Rel.Restriction._∣_ᶜ
d__'8739'_'7580'_346 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'_'7580'_346 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_734
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Rel.Restriction._⟪$⟫_
d__'10218''36''10219'__348 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
d__'10218''36''10219'__348 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'10218''36''10219'__740
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Rel.Restriction.curryʳ
d_curry'691'_350 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_curry'691'_350 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_892
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.ex-⊆
d_ex'45''8838'_352 ::
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
d_ex'45''8838'_352 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_826
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.res-comp-cong
d_res'45'comp'45'cong_354 ::
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
d_res'45'comp'45'cong_354 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_784
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.res-comp-dom
d_res'45'comp'45'dom_356 ::
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
d_res'45'comp'45'dom_356 = erased
-- Ledger.Set.Theory.Rel.Restriction.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_358 ::
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
d_res'45'comp'45'dom'7504'_358 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'dom'7504'_812
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.res-cong
d_res'45'cong_360 ::
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
d_res'45'cong_360 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'cong_748
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.res-dom
d_res'45'dom_362 ::
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
d_res'45'dom_362 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_758
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.res-dom-comm
d_res'45'dom'45'comm_364 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_364 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm_1032
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.res-dom-comm'
d_res'45'dom'45'comm''_366 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_366 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm''_1026
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_368 ::
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
d_res'45'dom'45'comm'8745''8838'_368 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8745''8838'_978
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6 v7
-- Ledger.Set.Theory.Rel.Restriction.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_370 ::
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
d_res'45'dom'45'comm'8838''8745'_370 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8838''8745'_970
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6 v7
-- Ledger.Set.Theory.Rel.Restriction.res-domᵐ
d_res'45'dom'7504'_372 ::
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
d_res'45'dom'7504'_372 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'7504'_770
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_374 ::
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
d_res'45'ex'45'disj'45''8746'_374 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45'disj'45''8746'_884
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.res-ex-disjoint
d_res'45'ex'45'disjoint_376 ::
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
d_res'45'ex'45'disjoint_376 = erased
-- Ledger.Set.Theory.Rel.Restriction.res-ex-∪
d_res'45'ex'45''8746'_378 ::
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
d_res'45'ex'45''8746'_378 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45''8746'_862
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.res-∅
d_res'45''8709'_380 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_380 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709'_828
-- Ledger.Set.Theory.Rel.Restriction.res-∅ᶜ
d_res'45''8709''7580'_382 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709''7580'_382 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709''7580'_830
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3
-- Ledger.Set.Theory.Rel.Restriction.res-⊆
d_res'45''8838'_384 ::
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
d_res'45''8838'_384 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_824
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.∈-curryʳ
d_'8712''45'curry'691'_386 ::
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
d_'8712''45'curry'691'_386 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_904
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6 v7 v8
-- Ledger.Set.Theory.Rel.Restriction.∈-resᶜ-dom
d_'8712''45'res'7580''45'dom_388 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'res'7580''45'dom_388 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom_858
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.∈-resᶜ-dom⁺
d_'8712''45'res'7580''45'dom'8314'_390 ::
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
d_'8712''45'res'7580''45'dom'8314'_390 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8314'_846
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.∈-resᶜ-dom⁻
d_'8712''45'res'7580''45'dom'8315'_392 ::
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
d_'8712''45'res'7580''45'dom'8315'_392 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_838
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._._ˢ
d__'738'_396 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'738'_396 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du__'738'_544 v2
-- Ledger.Set.Theory._._ᵐ
d__'7504'_398 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_488 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7504'_398 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Map.du__'7504'_548 v2
-- Ledger.Set.Theory._.Map
d_Map_400 :: () -> () -> ()
d_Map_400 = erased
-- Ledger.Set.Theory._._∣'_
d__'8739'''__402 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'''__402 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'''__1142
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._._∣^'_
d__'8739''94'''__404 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'''__404 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'''__1150
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._._≡ᵐ_
d__'8801''7504'__406 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7504'__406 = erased
-- Ledger.Set.Theory._.FinMap
d_FinMap_408 :: () -> () -> ()
d_FinMap_408 = erased
-- Ledger.Set.Theory._.InjectiveOn
d_InjectiveOn_410 ::
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> ()
d_InjectiveOn_410 = erased
-- Ledger.Set.Theory._.IsLeftUnique
d_IsLeftUnique_412 a0 a1 a2 = ()
-- Ledger.Set.Theory._.constMap
d_constMap_414 ::
  () ->
  () ->
  [AgdaAny] -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constMap_414 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_constMap_1156
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.constMap-dom
d_constMap'45'dom_416 ::
  () ->
  [AgdaAny] ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constMap'45'dom_416 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_constMap'45'dom_1168
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3
-- Ledger.Set.Theory._.disj-dom
d_disj'45'dom_418 ::
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
d_disj'45'dom_418 = erased
-- Ledger.Set.Theory._.disj-∪
d_disj'45''8746'_420 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disj'45''8746'_420 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disj'45''8746'_682
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.filterKeys
d_filterKeys_422 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_422 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filterKeys_728
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3
-- Ledger.Set.Theory._.filterᵐ-finite
d_filter'7504''45'finite_424 ::
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
d_filter'7504''45'finite_424 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504''45'finite_724
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2
-- Ledger.Set.Theory._.filterᵐ
d_filter'7504'_426 ::
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_426 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_714
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.fromListᵐ
d_fromList'7504'_428 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'7504'_428 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_576
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.idMap
d_idMap_430 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_idMap_430 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_idMap_1068
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory._.left-unique
d_left'45'unique_432 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_left'45'unique_432 = erased
-- Ledger.Set.Theory._.left-unique-mapˢ
d_left'45'unique'45'map'738'_434 ::
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
d_left'45'unique'45'map'738'_434 = erased
-- Ledger.Set.Theory._.mapFromFun
d_mapFromFun_436 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromFun_436 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1072
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.mapFromPartialFun
d_mapFromPartialFun_438 ::
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromPartialFun_438 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1254
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.mapKeys
d_mapKeys_440 ::
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
d_mapKeys_440 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_862
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapMaybeWithKeyᵐ
d_mapMaybeWithKey'7504'_442 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapMaybeWithKey'7504'_442 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1246
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapPartial-uniq
d_mapPartial'45'uniq_444 ::
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
d_mapPartial'45'uniq_444 = erased
-- Ledger.Set.Theory._.mapPartialLiftKey-just-uniq
d_mapPartialLiftKey'45'just'45'uniq_446 ::
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
d_mapPartialLiftKey'45'just'45'uniq_446 = erased
-- Ledger.Set.Theory._.mapValues
d_mapValues_448 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues_448 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValues_872
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapValues-dom
d_mapValues'45'dom_450 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues'45'dom_450 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValues'45'dom_1138
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapWithKey
d_mapWithKey_452 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapWithKey_452 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1120
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapWithKey-uniq
d_mapWithKey'45'uniq_454 ::
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
d_mapWithKey'45'uniq_454 = erased
-- Ledger.Set.Theory._.mapʳ-uniq
d_map'691''45'uniq_456 ::
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
d_map'691''45'uniq_456 = erased
-- Ledger.Set.Theory._.mapˡ-uniq
d_map'737''45'uniq_458 ::
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
d_map'737''45'uniq_458 = erased
-- Ledger.Set.Theory._.mapˡ∘map⦅×-dup⦆-uniq
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_460 ::
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
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_460 = erased
-- Ledger.Set.Theory._.map⦅×-dup⦆-uniq
d_map'10629''215''45'dup'10630''45'uniq_462 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'10629''215''45'dup'10630''45'uniq_462 = erased
-- Ledger.Set.Theory._.singletonᵐ
d_singleton'7504'_464 ::
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'7504'_464 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_singleton'7504'_732
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.toFinMap
d_toFinMap_466 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toFinMap_466 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Map.du_toFinMap_604 v2 v3
-- Ledger.Set.Theory._.toMap
d_toMap_468 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_468 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du_toMap_612 v2
-- Ledger.Set.Theory._.toRel
d_toRel_470 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_toRel_470 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du_toRel_618 v2
-- Ledger.Set.Theory._.weaken-Injective
d_weaken'45'Injective_472 ::
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
d_weaken'45'Injective_472 = erased
-- Ledger.Set.Theory._.ˢ-left-unique
d_'738''45'left'45'unique_474 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_488
d_'738''45'left'45'unique_474 = erased
-- Ledger.Set.Theory._.∅-left-unique
d_'8709''45'left'45'unique_476 ::
  () -> () -> MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_488
d_'8709''45'left'45'unique_476 = erased
-- Ledger.Set.Theory._.∅ᵐ
d_'8709''7504'_478 ::
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''7504'_478 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_572
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory._.⊆-left-unique
d_'8838''45'left'45'unique_480 ::
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
d_'8838''45'left'45'unique_480 = erased
-- Ledger.Set.Theory._.⊆-map
d_'8838''45'map_482 ::
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
d_'8838''45'map_482 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Map.du_'8838''45'map_558 v2 v4
-- Ledger.Set.Theory._.❴_❵ᵐ
d_'10100'_'10101''7504'_484 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'10100'_'10101''7504'_484 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_740
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2
-- Ledger.Set.Theory._.Corestrictionᵐ._⁻¹_
d__'8315''185'__488 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
d__'8315''185'__488 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1728
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Corestrictionᵐ._∣^_
d__'8739''94'__490 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'__490 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__1712
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Corestrictionᵐ._∣^_ᶜ
d__'8739''94'_'7580'_492 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'_'7580'_492 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1720
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Intersectionᵐ._∩ᵐ_
d__'8745''7504'__496 ::
  () ->
  () ->
  ([MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__496 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8745''7504'__672
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory._.IsLeftUnique.isLeftUnique
d_isLeftUnique_500 ::
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_488 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isLeftUnique_500 = erased
-- Ledger.Set.Theory._.Lookupᵐ.lookupᵐ
d_lookup'7504'_504 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_lookup'7504'_504 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1674
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4 v5
-- Ledger.Set.Theory._.Lookupᵐ.lookupᵐ?
d_lookup'7504''63'_506 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
d_lookup'7504''63'_506 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1678
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4 v5
-- Ledger.Set.Theory._.Lookupᵐ.pullbackMap
d_pullbackMap_508 ::
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
d_pullbackMap_508 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1684
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v4 v5 v6 v7
-- Ledger.Set.Theory._.Restrictionᵐ._∣_
d__'8739'__512 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__512 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1336
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Restrictionᵐ._∣_ᶜ
d__'8739'_'7580'_514 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_514 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1344
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Restrictionᵐ._⦅_,-⦆
d__'10629'_'44''45''10630'_516 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_516 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'10629'_'44''45''10630'_1522
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory._.Restrictionᵐ.curryᵐ
d_curry'7504'_518 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_518 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_curry'7504'_1372
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.mapSingleValue
d_mapSingleValue_520 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_520 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapSingleValue_1364
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.mapValueRestricted
d_mapValueRestricted_522 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_522 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1356
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.res-dom∈
d_res'45'dom'8712'_524 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  AgdaAny ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_res'45'dom'8712'_524 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'dom'8712'_1384
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v5 v6 v7
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton
d_res'45'singleton_526 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_526 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton_1430
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton'
d_res'45'singleton''_528 ::
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
d_res'45'singleton''_528 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''_1466
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton''
d_res'45'singleton''''_530 ::
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
d_res'45'singleton''''_530 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''''_1508
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton-inhabited
d_res'45'singleton'45'inhabited_532 ::
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
d_res'45'singleton'45'inhabited_532 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'45'inhabited_1490
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton⁺
d_res'45'singleton'8314'_534 ::
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
d_res'45'singleton'8314'_534 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'8314'_1482
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restrictionᵐ.res-subset
d_res'45'subset_536 ::
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
d_res'45'subset_536 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'subset_1388
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.resᵐ-∅ᶜ
d_res'7504''45''8709''7580'_538 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7504''45''8709''7580'_538 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'7504''45''8709''7580'_1354
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3
-- Ledger.Set.Theory._.Restrictionᵐ.update
d_update_540 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_540 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_update_1524
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Unionᵐ._∪ˡ_
d__'8746''737'__544 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__544 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__892
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Unionᵐ._∪ˡ'_
d__'8746''737'''__546 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8746''737'''__546 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__886
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Unionᵐ.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_548 ::
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
d_disjoint'45''8746''737''45'mapValues_548 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45'mapValues_978
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6
-- Ledger.Set.Theory._.Unionᵐ.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_550 ::
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
d_disjoint'45''8746''737''45''8746'_550 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_906
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Unionᵐ.insert
d_insert_552 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_552 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insert_950
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Unionᵐ.insertIfJust
d_insertIfJust_554 ::
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
d_insertIfJust_554 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_958
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6
-- Ledger.Set.Theory._.Unionᵐ.singleton-∈-∪ˡ
d_singleton'45''8712''45''8746''737'_556 ::
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
d_singleton'45''8712''45''8746''737'_556 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_singleton'45''8712''45''8746''737'_914
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v4 v5
-- Ledger.Set.Theory._.TotalMap
d_TotalMap_560 a0 a1 = ()
-- Ledger.Set.Theory._.total
d_total_562 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_total_562 = erased
-- Ledger.Set.Theory._.FunTot.Fun⇒Map
d_Fun'8658'Map_566 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Fun'8658'Map_566 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8658'Map_322
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v4 v5
-- Ledger.Set.Theory._.FunTot.Fun⇒TotalMap
d_Fun'8658'TotalMap_568 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168
d_Fun'8658'TotalMap_568 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8658'TotalMap_332
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v4
-- Ledger.Set.Theory._.FunTot.Fun∈TotalMap
d_Fun'8712'TotalMap_570 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_Fun'8712'TotalMap_570 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8712'TotalMap_342
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6
-- Ledger.Set.Theory._.FunTot.lookup∘Fun⇒TotalMap-id
d_lookup'8728'Fun'8658'TotalMap'45'id_572 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'8728'Fun'8658'TotalMap'45'id_572 = erased
-- Ledger.Set.Theory._.LookupUpdate.lookup-update-id
d_lookup'45'update'45'id_576 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'45'update'45'id_576 = erased
-- Ledger.Set.Theory._.LookupUpdate.∈-rel-update
d_'8712''45'rel'45'update_578 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'rel'45'update_578 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_'8712''45'rel'45'update_300
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4 v6 v7
-- Ledger.Set.Theory._.TotalMap.left-unique-rel
d_left'45'unique'45'rel_582 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'rel_582 = erased
-- Ledger.Set.Theory._.TotalMap.lookup
d_lookup_584 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny -> AgdaAny
d_lookup_584 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_lookup_188
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.TotalMap.lookup∈rel
d_lookup'8712'rel_586 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_lookup'8712'rel_586 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_lookup'8712'rel_192
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.TotalMap.rel
d_rel_588 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rel_588 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_rel_180 (coe v0)
-- Ledger.Set.Theory._.TotalMap.toMap
d_toMap_590 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_590 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.TotalMap.du_toMap_186 v2
-- Ledger.Set.Theory._.TotalMap.total-rel
d_total'45'rel_592 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_total'45'rel_592 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_total'45'rel_184 (coe v0)
-- Ledger.Set.Theory._.TotalMap.∈-rel⇒lookup-≡
d_'8712''45'rel'8658'lookup'45''8801'_594 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45'rel'8658'lookup'45''8801'_594 = erased
-- Ledger.Set.Theory._.Update.mapWithKey
d_mapWithKey_598 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168
d_mapWithKey_598 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_mapWithKey_260
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v4 v5
-- Ledger.Set.Theory._.Update.update
d_update_600 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168
d_update_600 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_update_276
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Update.updateFn-id
d_updateFn'45'id_602 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_updateFn'45'id_602 = erased
-- Ledger.Set.Theory._.fold-cong↭
d_fold'45'cong'8621'_634 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  AgdaAny
d_fold'45'cong'8621'_634 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_fold'45'cong'8621'_908 v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.indexedSum
d_indexedSum_636 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum_636 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Sum.du_indexedSum_930 v1 v3 v4
-- Ledger.Set.Theory._.indexedSum-cong
d_indexedSum'45'cong_638 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'cong_638 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'cong_1032 v1 v3 v4 v5
      v6
-- Ledger.Set.Theory._.indexedSum-singleton
d_indexedSum'45'singleton_640 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_indexedSum'45'singleton_640 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'singleton_1060 v1 v4 v5
-- Ledger.Set.Theory._.indexedSum-singleton'
d_indexedSum'45'singleton''_642 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'singleton''_642 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'singleton''_1066
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.indexedSum-∅
d_indexedSum'45''8709'_644 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
d_indexedSum'45''8709'_644 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45''8709'_1038
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.indexedSum-∪
d_indexedSum'45''8746'_646 ::
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
d_indexedSum'45''8746'_646 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45''8746'_1044 v1 v3 v4 v7
      v8
-- Ledger.Set.Theory._.indexedSumL
d_indexedSumL_648 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_indexedSumL_648 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_884 v1 v3
-- Ledger.Set.Theory._.indexedSumL'
d_indexedSumL''_650 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSumL''_650 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL''_892 v1 v3 v4
-- Ledger.Set.Theory._.indexedSumL-++
d_indexedSumL'45''43''43'_652 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny] -> AgdaAny
d_indexedSumL'45''43''43'_652 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL'45''43''43'_956 v1 v3 v4
      v5
-- Ledger.Set.Theory._.indexedSumᵐ
d_indexedSum'7504'_654 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504'_654 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504'_1104 v3 v4 v5 v6 v7
-- Ledger.Set.Theory._.indexedSumᵐ-cong
d_indexedSum'7504''45'cong_656 ::
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
d_indexedSum'7504''45'cong_656 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'cong_1118 v3 v4
      v5 v6 v7 v8
-- Ledger.Set.Theory._.indexedSumᵛ
d_indexedSum'7515'_658 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515'_658 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7515'_1112 v3 v4 v5 v6
-- Ledger.Set.Theory._.IndexedSumUnionᵐ._∪ˡᶠ_
d__'8746''737''7584'__662 ::
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
d__'8746''737''7584'__662 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du__'8746''737''7584'__1172
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v4 v5 v6 v7
-- Ledger.Set.Theory._.IndexedSumUnionᵐ.indexedSumᵐ-partition
d_indexedSum'7504''45'partition_664 ::
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
d_indexedSum'7504''45'partition_664 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
                                    v10 v11 v12
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'partition_1226
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v7 v8 v9 v10 v11 v12
-- Ledger.Set.Theory._.IndexedSumUnionᵐ.indexedSumᵐ-∪
d_indexedSum'7504''45''8746'_666 ::
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
d_indexedSum'7504''45''8746'_666 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                                 v11
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45''8746'_1190
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v7 v8 v9 v10
-- Ledger.Set.Theory._.IndexedSumUnionᵐ.∪ˡ-finite
d_'8746''737''45'finite_668 ::
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
d_'8746''737''45'finite_668 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_'8746''737''45'finite_1166
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v4 v5 v6 v7 v8 v9
-- Ledger.Set.Theory._.Lookupᵐᵈ._∪⁺_
d__'8746''8314'__674 ::
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
d__'8746''8314'__674 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
      (coe d_List'45'Model'7496'_10) v3 v4
-- Ledger.Set.Theory._.Lookupᵐᵈ.aggregate₊
d_aggregate'8330'_676 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregate'8330'_676 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_504
      (coe d_List'45'Model'7496'_10) v3 v4 v5
-- Ledger.Set.Theory._.Lookupᵐᵈ.dom∪⁺⇔∪dom
d_dom'8746''8314''8660''8746'dom_678 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_dom'8746''8314''8660''8746'dom_678 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8660''8746'dom_566
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6 v7
-- Ledger.Set.Theory._.Lookupᵐᵈ.dom∪⁺≡∪dom
d_dom'8746''8314''8801''8746'dom_680 ::
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
d_dom'8746''8314''8801''8746'dom_680 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8801''8746'dom_570
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6
-- Ledger.Set.Theory._.Lookupᵐᵈ.dom∪⁺⊆∪dom
d_dom'8746''8314''8838''8746'dom_682 ::
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
d_dom'8746''8314''8838''8746'dom_682 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_528
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6 v7 v8
-- Ledger.Set.Theory._.Lookupᵐᵈ.unionThese
d_unionThese_684 ::
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
d_unionThese_684 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_348
      (coe d_List'45'Model'7496'_10) v4 v5 v6 v7 v8
-- Ledger.Set.Theory._.Lookupᵐᵈ.unionWith
d_unionWith_686 ::
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
d_unionWith_686 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionWith_410
      (coe d_List'45'Model'7496'_10) v5 v6 v7 v8
-- Ledger.Set.Theory._.Lookupᵐᵈ.∪dom-lookup
d_'8746'dom'45'lookup_688 ::
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
d_'8746'dom'45'lookup_688 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'45'lookup_522
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6 v7
-- Ledger.Set.Theory._.Lookupᵐᵈ.∪dom⊆dom∪⁺
d_'8746'dom'8838'dom'8746''8314'_690 ::
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
d_'8746'dom'8838'dom'8746''8314'_690 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'8838'dom'8746''8314'_544
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6 v7 v8
-- Ledger.Set.Theory._._ᶠ
d__'7584'_694 ::
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584'_694 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Factor.du__'7584'_312 v1 v2
-- Ledger.Set.Theory._.∪-preserves-finite'
d_'8746''45'preserves'45'finite''_696 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite''_696 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_'8746''45'preserves'45'finite''_322
      (coe d_List'45'Model_6) v1 v2 v3 v4
-- Ledger.Set.Theory._.Factor.factor
d_factor_700 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  ([AgdaAny] -> AgdaAny) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor_700 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.Factor.du_factor_344 v3 v5
-- Ledger.Set.Theory._.Factor.factor-cong
d_factor'45'cong_702 ::
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
d_factor'45'cong_702 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45'cong_348 v4 v5 v6 v7
-- Ledger.Set.Theory._.Factor.factor-∪
d_factor'45''8746'_704 ::
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
d_factor'45''8746'_704 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'_384 v6 v7 v8 v9
      v10
-- Ledger.Set.Theory._.FactorUnique.deduplicate-Σ
d_deduplicate'45'Σ_708 ::
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
d_deduplicate'45'Σ_708 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Axiom.Set.Factor.du_deduplicate'45'Σ_420 v2 v6
-- Ledger.Set.Theory._.FactorUnique.ext
d_ext_710 ::
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
d_ext_710 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Axiom.Set.Factor.du_ext_424 v2 v4 v6
-- Ledger.Set.Theory._.FactorUnique.ext-cong
d_ext'45'cong_712 ::
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
d_ext'45'cong_712 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_ext'45'cong_430 v2 v5 v6 v7 v8
-- Ledger.Set.Theory._.FactorUnique.f-cong'
d_f'45'cong''_714 ::
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
d_f'45'cong''_714 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe MAlonzo.Code.Axiom.Set.Factor.du_f'45'cong''_412 v5 v6 v7 v8
-- Ledger.Set.Theory._.FactorUnique.factor
d_factor_716 ::
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
d_factor_716 ~v0 ~v1 v2 ~v3 v4 ~v5 = du_factor_716 v2 v4
du_factor_716 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor_716 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor_344
      (coe MAlonzo.Code.Axiom.Set.Factor.du_ext_424 (coe v0) (coe v1))
-- Ledger.Set.Theory._.FactorUnique.factor-cong
d_factor'45'cong_718 ::
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
d_factor'45'cong_718 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_factor'45'cong_718 v2 v5
du_factor'45'cong_718 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor'45'cong_718 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45'cong_348
      (coe
         MAlonzo.Code.Axiom.Set.Factor.du_ext'45'cong_430 (coe v0) (coe v1))
-- Ledger.Set.Theory._.FactorUnique.factor-∪
d_factor'45''8746'_720 ::
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
d_factor'45''8746'_720 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_factor'45''8746'_720
du_factor'45''8746'_720 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] -> [AgdaAny] -> AgdaAny) -> AgdaAny
du_factor'45''8746'_720 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'_384 v1 v2 v3 v4
      v5
-- Ledger.Set.Theory._.FactorUnique.factor-∪'
d_factor'45''8746'''_722 ::
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
d_factor'45''8746'''_722 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'''_466 v9 v10 v12
-- Ledger.Set.Theory._._._∣_
d__'8739'__734 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'__734 ~v0 v1 = du__'8739'__734 v1
du__'8739'__734 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739'__734 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'__728
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣_ᶜ
d__'8739'_'7580'_736 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'_'7580'_736 ~v0 v1 = du__'8739'_'7580'_736 v1
du__'8739'_'7580'_736 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739'_'7580'_736 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_734
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._⟪$⟫_
d__'10218''36''10219'__738 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
d__'10218''36''10219'__738 ~v0 v1 = du__'10218''36''10219'__738 v1
du__'10218''36''10219'__738 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
du__'10218''36''10219'__738 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'10218''36''10219'__740
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._.curryʳ
d_curry'691'_740 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_curry'691'_740 ~v0 v1 = du_curry'691'_740 v1
du_curry'691'_740 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_curry'691'_740 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_892
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.ex-⊆
d_ex'45''8838'_742 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_ex'45''8838'_742 ~v0 v1 = du_ex'45''8838'_742 v1
du_ex'45''8838'_742 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_ex'45''8838'_742 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_826
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.res-comp-cong
d_res'45'comp'45'cong_744 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'comp'45'cong_744 ~v0 v1 = du_res'45'comp'45'cong_744 v1
du_res'45'comp'45'cong_744 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'comp'45'cong_744 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_784
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-comp-dom
d_res'45'comp'45'dom_746 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'comp'45'dom_746 = erased
-- Ledger.Set.Theory._._.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_748 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'comp'45'dom'7504'_748 ~v0 v1
  = du_res'45'comp'45'dom'7504'_748 v1
du_res'45'comp'45'dom'7504'_748 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'comp'45'dom'7504'_748 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'dom'7504'_812
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-cong
d_res'45'cong_750 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'cong_750 ~v0 v1 = du_res'45'cong_750 v1
du_res'45'cong_750 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'cong_750 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'cong_748
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-dom
d_res'45'dom_752 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom_752 ~v0 v1 = du_res'45'dom_752 v1
du_res'45'dom_752 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom_752 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_758
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-dom-comm
d_res'45'dom'45'comm_754 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_754 ~v0 v1 = du_res'45'dom'45'comm_754 v1
du_res'45'dom'45'comm_754 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm_754 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm_1032
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.res-dom-comm'
d_res'45'dom'45'comm''_756 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_756 ~v0 v1 = du_res'45'dom'45'comm''_756 v1
du_res'45'dom'45'comm''_756 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm''_756 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm''_1026
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_758 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8745''8838'_758 ~v0 v1
  = du_res'45'dom'45'comm'8745''8838'_758 v1
du_res'45'dom'45'comm'8745''8838'_758 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'45'comm'8745''8838'_758 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8745''8838'_978
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5 v6
-- Ledger.Set.Theory._._.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_760 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8838''8745'_760 ~v0 v1
  = du_res'45'dom'45'comm'8838''8745'_760 v1
du_res'45'dom'45'comm'8838''8745'_760 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'45'comm'8838''8745'_760 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8838''8745'_970
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5 v6
-- Ledger.Set.Theory._._.res-domᵐ
d_res'45'dom'7504'_762 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'7504'_762 ~v0 v1 = du_res'45'dom'7504'_762 v1
du_res'45'dom'7504'_762 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'7504'_762 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'7504'_770
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_764 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45'disj'45''8746'_764 ~v0 v1
  = du_res'45'ex'45'disj'45''8746'_764 v1
du_res'45'ex'45'disj'45''8746'_764 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45'disj'45''8746'_764 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45'disj'45''8746'_884
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v1 v3 v4
-- Ledger.Set.Theory._._.res-ex-disjoint
d_res'45'ex'45'disjoint_766 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'ex'45'disjoint_766 = erased
-- Ledger.Set.Theory._._.res-ex-∪
d_res'45'ex'45''8746'_768 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45''8746'_768 ~v0 v1 = du_res'45'ex'45''8746'_768 v1
du_res'45'ex'45''8746'_768 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45''8746'_768 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45''8746'_862
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v1 v3 v4
-- Ledger.Set.Theory._._.res-∅
d_res'45''8709'_770 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_770 ~v0 ~v1 = du_res'45''8709'_770
du_res'45''8709'_770 ::
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709'_770 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709'_828
-- Ledger.Set.Theory._._.res-∅ᶜ
d_res'45''8709''7580'_772 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709''7580'_772 ~v0 v1 = du_res'45''8709''7580'_772 v1
du_res'45''8709''7580'_772 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709''7580'_772 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709''7580'_830
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2
-- Ledger.Set.Theory._._.res-⊆
d_res'45''8838'_774 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45''8838'_774 ~v0 v1 = du_res'45''8838'_774 v1
du_res'45''8838'_774 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45''8838'_774 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_824
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.∈-curryʳ
d_'8712''45'curry'691'_776 ::
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
d_'8712''45'curry'691'_776 ~v0 v1 = du_'8712''45'curry'691'_776 v1
du_'8712''45'curry'691'_776 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'curry'691'_776 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_904
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory._._.∈-resᶜ-dom
d_'8712''45'res'7580''45'dom_778 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'res'7580''45'dom_778 ~v0 v1
  = du_'8712''45'res'7580''45'dom_778 v1
du_'8712''45'res'7580''45'dom_778 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'res'7580''45'dom_778 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom_858
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.∈-resᶜ-dom⁺
d_'8712''45'res'7580''45'dom'8314'_780 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'res'7580''45'dom'8314'_780 ~v0 v1
  = du_'8712''45'res'7580''45'dom'8314'_780 v1
du_'8712''45'res'7580''45'dom'8314'_780 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'res'7580''45'dom'8314'_780 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8314'_846
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v1 v3 v4 v5
-- Ledger.Set.Theory._._.∈-resᶜ-dom⁻
d_'8712''45'res'7580''45'dom'8315'_782 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'res'7580''45'dom'8315'_782 ~v0 v1
  = du_'8712''45'res'7580''45'dom'8315'_782 v1
du_'8712''45'res'7580''45'dom'8315'_782 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'res'7580''45'dom'8315'_782 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_838
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._._∣^_
d__'8739''94'__786 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'__786 ~v0 v1 = du__'8739''94'__786 v1
du__'8739''94'__786 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739''94'__786 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1088
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣^_ᶜ
d__'8739''94'_'7580'_788 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'_'7580'_788 ~v0 v1 = du__'8739''94'_'7580'_788 v1
du__'8739''94'_'7580'_788 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739''94'_'7580'_788 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'_'7580'_1094
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._.coex-⊆
d_coex'45''8838'_790 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_coex'45''8838'_790 ~v0 v1 = du_coex'45''8838'_790 v1
du_coex'45''8838'_790 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_coex'45''8838'_790 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_coex'45''8838'_1102
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.cores-⊆
d_cores'45''8838'_792 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_cores'45''8838'_792 ~v0 v1 = du_cores'45''8838'_792 v1
du_cores'45''8838'_792 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_cores'45''8838'_792 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_cores'45''8838'_1100
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._._∣_
d__'8739'__796 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__796 ~v0 v1 = du__'8739'__796 v1
du__'8739'__796 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'__796 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1336
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣_ᶜ
d__'8739'_'7580'_798 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_798 ~v0 v1 = du__'8739'_'7580'_798 v1
du__'8739'_'7580'_798 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'_'7580'_798 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1344
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._⦅_,-⦆
d__'10629'_'44''45''10630'_800 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_800 ~v0 v1
  = du__'10629'_'44''45''10630'_800 v1
du__'10629'_'44''45''10630'_800 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'10629'_'44''45''10630'_800 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'10629'_'44''45''10630'_1522
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory._._.curryᵐ
d_curry'7504'_802 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_802 ~v0 v1 = du_curry'7504'_802 v1
du_curry'7504'_802 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_curry'7504'_802 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_curry'7504'_1372
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.mapSingleValue
d_mapSingleValue_804 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_804 ~v0 v1 = du_mapSingleValue_804 v1
du_mapSingleValue_804 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapSingleValue_804 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapSingleValue_1364
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.mapValueRestricted
d_mapValueRestricted_806 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_806 ~v0 v1 = du_mapValueRestricted_806 v1
du_mapValueRestricted_806 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValueRestricted_806 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1356
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.res-dom∈
d_res'45'dom'8712'_808 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_res'45'dom'8712'_808 ~v0 v1 = du_res'45'dom'8712'_808 v1
du_res'45'dom'8712'_808 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_res'45'dom'8712'_808 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'dom'8712'_1384
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v4 v5 v6
-- Ledger.Set.Theory._._.res-singleton
d_res'45'singleton_810 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_810 ~v0 v1 = du_res'45'singleton_810 v1
du_res'45'singleton_810 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton_810 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton_1430
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.res-singleton'
d_res'45'singleton''_812 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''_812 ~v0 v1 = du_res'45'singleton''_812 v1
du_res'45'singleton''_812 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''_812 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''_1466
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-singleton''
d_res'45'singleton''''_814 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''''_814 ~v0 v1 = du_res'45'singleton''''_814 v1
du_res'45'singleton''''_814 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''''_814 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''''_1508
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-singleton-inhabited
d_res'45'singleton'45'inhabited_816 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'singleton'45'inhabited_816 ~v0 v1
  = du_res'45'singleton'45'inhabited_816 v1
du_res'45'singleton'45'inhabited_816 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'singleton'45'inhabited_816 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'45'inhabited_1490
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-singleton⁺
d_res'45'singleton'8314'_818 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'singleton'8314'_818 ~v0 v1
  = du_res'45'singleton'8314'_818 v1
du_res'45'singleton'8314'_818 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'singleton'8314'_818 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'8314'_1482
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-subset
d_res'45'subset_820 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'subset_820 ~v0 v1 = du_res'45'subset_820 v1
du_res'45'subset_820 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'subset_820 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'subset_1388
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.resᵐ-∅ᶜ
d_res'7504''45''8709''7580'_822 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7504''45''8709''7580'_822 ~v0 v1
  = du_res'7504''45''8709''7580'_822 v1
du_res'7504''45''8709''7580'_822 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'7504''45''8709''7580'_822 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'7504''45''8709''7580'_1354
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2
-- Ledger.Set.Theory._._.update
d_update_824 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_824 ~v0 v1 = du_update_824 v1
du_update_824 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_update_824 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_update_1524
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._._⁻¹_
d__'8315''185'__828 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
d__'8315''185'__828 ~v0 v1 = du__'8315''185'__828 v1
du__'8315''185'__828 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
du__'8315''185'__828 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1728
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣^_
d__'8739''94'__830 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'__830 ~v0 v1 = du__'8739''94'__830 v1
du__'8739''94'__830 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'__830 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__1712
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣^_ᶜ
d__'8739''94'_'7580'_832 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'_'7580'_832 ~v0 v1 = du__'8739''94'_'7580'_832 v1
du__'8739''94'_'7580'_832 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'_'7580'_832 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1720
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∪ˡ_
d__'8746''737'__836 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__836 ~v0 v1 = du__'8746''737'__836 v1
du__'8746''737'__836 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__836 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__892
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∪ˡ'_
d__'8746''737'''__838 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8746''737'''__838 ~v0 v1 = du__'8746''737'''__838 v1
du__'8746''737'''__838 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8746''737'''__838 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__886
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_840 ::
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
d_disjoint'45''8746''737''45'mapValues_840 ~v0 v1
  = du_disjoint'45''8746''737''45'mapValues_840 v1
du_disjoint'45''8746''737''45'mapValues_840 ::
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
du_disjoint'45''8746''737''45'mapValues_840 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45'mapValues_978
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5
-- Ledger.Set.Theory._._.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_842 ::
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
d_disjoint'45''8746''737''45''8746'_842 ~v0 v1
  = du_disjoint'45''8746''737''45''8746'_842 v1
du_disjoint'45''8746''737''45''8746'_842 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_842 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_906
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.insert
d_insert_844 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_844 ~v0 v1 = du_insert_844 v1
du_insert_844 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_844 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insert_950
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.insertIfJust
d_insertIfJust_846 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_846 ~v0 v1 = du_insertIfJust_846 v1
du_insertIfJust_846 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_846 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_958
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5
-- Ledger.Set.Theory._._.singleton-∈-∪ˡ
d_singleton'45''8712''45''8746''737'_848 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45''8712''45''8746''737'_848 ~v0 v1
  = du_singleton'45''8712''45''8746''737'_848 v1
du_singleton'45''8712''45''8746''737'_848 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'45''8712''45''8746''737'_848 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_singleton'45''8712''45''8746''737'_914
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v1 v3 v4
-- Ledger.Set.Theory._._._∩_
d__'8745'__852 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8745'__852 ~v0 v1 = du__'8745'__852 v1
du__'8745'__852 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'8745'__852 v0
  = let v1 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__704
         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
            erased v0))
-- Ledger.Set.Theory._._._＼_
d__'65340'__854 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'65340'__854 ~v0 v1 = du__'65340'__854 v1
du__'65340'__854 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'65340'__854 v0
  = let v1 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'65340'__730
         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
            erased v0))
-- Ledger.Set.Theory._._.disjoint'
d_disjoint''_856 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> ()
d_disjoint''_856 = erased
-- Ledger.Set.Theory._._.∈-∩
d_'8712''45''8745'_858 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_858 ~v0 v1 = du_'8712''45''8745'_858 v1
du_'8712''45''8745'_858 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45''8745'_858 v0
  = let v1 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_712
         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
            erased v0))
-- Ledger.Set.Theory._._.lookupᵐ
d_lookup'7504'_862 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_lookup'7504'_862 ~v0 ~v1 = du_lookup'7504'_862
du_lookup'7504'_862 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_lookup'7504'_862 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1674
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory._._.lookupᵐ?
d_lookup'7504''63'_864 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
d_lookup'7504''63'_864 ~v0 ~v1 = du_lookup'7504''63'_864
du_lookup'7504''63'_864 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
du_lookup'7504''63'_864 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1678
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory._._.pullbackMap
d_pullbackMap_866 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pullbackMap_866 ~v0 ~v1 = du_pullbackMap_866
du_pullbackMap_866 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pullbackMap_866 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1684
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory._._._∪⁺_
d__'8746''8314'__870 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''8314'__870 ~v0 ~v1 = du__'8746''8314'__870
du__'8746''8314'__870 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''8314'__870 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
      (coe d_List'45'Model'7496'_10) v1 v2
-- Ledger.Set.Theory._._.aggregate₊
d_aggregate'8330'_872 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregate'8330'_872 ~v0 ~v1 = du_aggregate'8330'_872
du_aggregate'8330'_872 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_aggregate'8330'_872 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_504
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._._.dom∪⁺⇔∪dom
d_dom'8746''8314''8660''8746'dom_874 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_dom'8746''8314''8660''8746'dom_874 ~v0 ~v1
  = du_dom'8746''8314''8660''8746'dom_874
du_dom'8746''8314''8660''8746'dom_874 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_dom'8746''8314''8660''8746'dom_874 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8660''8746'dom_566
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4 v5
-- Ledger.Set.Theory._._.dom∪⁺≡∪dom
d_dom'8746''8314''8801''8746'dom_876 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8746''8314''8801''8746'dom_876 ~v0 ~v1
  = du_dom'8746''8314''8801''8746'dom_876
du_dom'8746''8314''8801''8746'dom_876 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'8746''8314''8801''8746'dom_876 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8801''8746'dom_570
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4
-- Ledger.Set.Theory._._.dom∪⁺⊆∪dom
d_dom'8746''8314''8838''8746'dom_878 ::
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
d_dom'8746''8314''8838''8746'dom_878 ~v0 ~v1
  = du_dom'8746''8314''8838''8746'dom_878
du_dom'8746''8314''8838''8746'dom_878 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_dom'8746''8314''8838''8746'dom_878 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_528
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4 v5 v6
-- Ledger.Set.Theory._._.unionThese
d_unionThese_880 ::
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
d_unionThese_880 ~v0 ~v1 = du_unionThese_880
du_unionThese_880 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
du_unionThese_880 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_348
      (coe d_List'45'Model'7496'_10) v2 v3 v4 v5 v6
-- Ledger.Set.Theory._._.unionWith
d_unionWith_882 ::
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
d_unionWith_882 ~v0 ~v1 = du_unionWith_882
du_unionWith_882 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unionWith_882 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionWith_410
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6
-- Ledger.Set.Theory._._.∪dom-lookup
d_'8746'dom'45'lookup_884 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746'dom'45'lookup_884 ~v0 ~v1 = du_'8746'dom'45'lookup_884
du_'8746'dom'45'lookup_884 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746'dom'45'lookup_884 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'45'lookup_522
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4 v5
-- Ledger.Set.Theory._._.∪dom⊆dom∪⁺
d_'8746'dom'8838'dom'8746''8314'_886 ::
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
d_'8746'dom'8838'dom'8746''8314'_886 ~v0 ~v1
  = du_'8746'dom'8838'dom'8746''8314'_886
du_'8746'dom'8838'dom'8746''8314'_886 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8746'dom'8838'dom'8746''8314'_886 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'8838'dom'8746''8314'_544
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4 v5 v6
-- Ledger.Set.Theory._._._∩ᵐ_
d__'8745''7504'__902 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__902 ~v0 ~v1 v2 v3 = du__'8745''7504'__902 v2 v3
du__'8745''7504'__902 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8745''7504'__902 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8745''7504'__672
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            v0 v1))
-- Ledger.Set.Theory._._._∪ˡᶠ_
d__'8746''737''7584'__908 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737''7584'__908 ~v0 ~v1 v2 ~v3
  = du__'8746''737''7584'__908 v2
du__'8746''737''7584'__908 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737''7584'__908 v0
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du__'8746''737''7584'__1172
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1602 d_List'45'Model'7496'_10
              erased v0 v2 v1))
-- Ledger.Set.Theory._._.indexedSumᵐ-partition
d_indexedSum'7504''45'partition_910 ::
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
d_indexedSum'7504''45'partition_910 ~v0 ~v1 v2 v3
  = du_indexedSum'7504''45'partition_910 v2 v3
du_indexedSum'7504''45'partition_910 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7504''45'partition_910 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'partition_1226
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v9 v10 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1602 d_List'45'Model'7496'_10
              erased v0 v10 v9))
      v3 v4 v5 v6 v7 v8
-- Ledger.Set.Theory._._.indexedSumᵐ-∪
d_indexedSum'7504''45''8746'_912 ::
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
d_indexedSum'7504''45''8746'_912 ~v0 ~v1 v2 v3
  = du_indexedSum'7504''45''8746'_912 v2 v3
du_indexedSum'7504''45''8746'_912 ::
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
du_indexedSum'7504''45''8746'_912 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45''8746'_1190
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v8 v9 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1602 d_List'45'Model'7496'_10
              erased v0 v9 v8))
      v3 v4 v5 v6
-- Ledger.Set.Theory._._.∪ˡ-finite
d_'8746''737''45'finite_914 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''737''45'finite_914 ~v0 ~v1 v2 ~v3
  = du_'8746''737''45'finite_914 v2
du_'8746''737''45'finite_914 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''737''45'finite_914 v0
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_'8746''737''45'finite_1166
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1602 d_List'45'Model'7496'_10
              erased v0 v2 v1))
-- Ledger.Set.Theory.Properties._._≡_⨿_
d__'8801'_'10815'__920 ::
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801'_'10815'__920 = erased
-- Ledger.Set.Theory.Properties._.Dec-∈-fromList
d_Dec'45''8712''45'fromList_922 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'fromList_922 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'fromList_626
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.Dec-∈-singleton
d_Dec'45''8712''45'singleton_924 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'singleton_924 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'singleton_632
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Set-BddSemilattice
d_Set'45'BddSemilattice_926 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102
d_Set'45'BddSemilattice_926 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'BddSemilattice_736
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.Set-BoundedJoinSemilattice
d_Set'45'BoundedJoinSemilattice_928 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedJoinSemilattice_116
d_Set'45'BoundedJoinSemilattice_928 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'BoundedJoinSemilattice_732
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.Set-JoinSemilattice
d_Set'45'JoinSemilattice_930 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_Set'45'JoinSemilattice_930 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'JoinSemilattice_730
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.card-≡ᵉ
d_card'45''8801''7497'_932 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8801''7497'_932 = erased
-- Ledger.Set.Theory.Properties._.cong-⊆⇒cong
d_cong'45''8838''8658'cong_934 ::
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
d_cong'45''8838''8658'cong_934 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_cong'45''8838''8658'cong_260
      v3 v4 v5 v6
-- Ledger.Set.Theory.Properties._.cong-⊆⇒cong₂
d_cong'45''8838''8658'cong'8322'_936 ::
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
d_cong'45''8838''8658'cong'8322'_936 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
                                     v10
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_cong'45''8838''8658'cong'8322'_268
      v4 v5 v6 v7 v8 v9 v10
-- Ledger.Set.Theory.Properties._.disjoint-subst
d_disjoint'45'subst_938 ::
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
d_disjoint'45'subst_938 = erased
-- Ledger.Set.Theory.Properties._.disjoint-sym
d_disjoint'45'sym_940 ::
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
d_disjoint'45'sym_940 = erased
-- Ledger.Set.Theory.Properties._.filter-finite
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
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'finite_650
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Properties._.filter-hom-∪
d_filter'45'hom'45''8746'_944 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'hom'45''8746'_944 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8746'_618
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.filter-hom-⊆
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
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8838'_596
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6
-- Ledger.Set.Theory.Properties._.filter-hom-⊇
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
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8839'_608
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6
-- Ledger.Set.Theory.Properties._.filter-pres-≡ᵉ
d_filter'45'pres'45''8801''7497'_950 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'pres'45''8801''7497'_950 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8801''7497'_574
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.filter-pres-⊆
d_filter'45'pres'45''8838'_952 ::
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
d_filter'45'pres'45''8838'_952 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8838'_566
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.filter-split-∪
d_filter'45'split'45''8746'_954 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_filter'45'split'45''8746'_954 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'split'45''8746'_582
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6
-- Ledger.Set.Theory.Properties._.filter-∅
d_filter'45''8709'_956 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45''8709'_956 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8709'_536
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory.Properties._.filter-⊆
d_filter'45''8838'_958 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45''8838'_958 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_564
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.fromList-∪-singleton
d_fromList'45''8746''45'singleton_960 ::
  () ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'45''8746''45'singleton_960 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_fromList'45''8746''45'singleton_792
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.map-∅
d_map'45''8709'_962 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8709'_962 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8709'_444
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3
-- Ledger.Set.Theory.Properties._.map-∘
d_map'45''8728'_964 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8728'_964 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8728'_378
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4 v5
-- Ledger.Set.Theory.Properties._.map-∘⊆
d_map'45''8728''8838'_966 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8728''8838'_966 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8728''8838'_362
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.map-∪
d_map'45''8746'_968 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8746'_968 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8746'_458
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.map-≡ᵉ
d_map'45''8801''7497'_970 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8801''7497'_970 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8801''7497'_416
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.map-⊆
d_map'45''8838'_972 ::
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
d_map'45''8838'_972 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8838'_390
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.map-⊆∘
d_map'45''8838''8728'_974 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8838''8728'_974 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8838''8728'_340
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.mapPartial-∅
d_mapPartial'45''8709'_976 ::
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartial'45''8709'_976 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_mapPartial'45''8709'_484
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2
-- Ledger.Set.Theory.Properties._.singleton-finite
d_singleton'45'finite_978 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'finite_978 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_636
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory.Properties._.sublist-⇔
d_sublist'45''8660'_980 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_sublist'45''8660'_980 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_sublist'45''8660'_1000
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∃-sublist-⇔
d_'8707''45'sublist'45''8660'_982 ::
  () ->
  [AgdaAny] ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8707''45'sublist'45''8660'_982 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8707''45'sublist'45''8660'_1034
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory.Properties._.∅-finite
d_'8709''45'finite_984 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'finite_984 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_438
-- Ledger.Set.Theory.Properties._.∅-least
d_'8709''45'least_986 ::
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'least_986 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_432 v2
-- Ledger.Set.Theory.Properties._.∅-minimum
d_'8709''45'minimum_988 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8709''45'minimum_988 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'minimum_428
-- Ledger.Set.Theory.Properties._.∅-weakly-finite
d_'8709''45'weakly'45'finite_990 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'weakly'45'finite_990 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'weakly'45'finite_436
-- Ledger.Set.Theory.Properties._.∈-filter⁺'
d_'8712''45'filter'8314'''_992 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'filter'8314'''_992 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Properties._.∈-filter⁻'
d_'8712''45'filter'8315'''_994 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'filter'8315'''_994 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Properties._.∈-fromList⁺
d_'8712''45'fromList'8314'_996 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8314'_996 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8314'_228
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∈-fromList⁻
d_'8712''45'fromList'8315'_998 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8315'_998 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8315'_226
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∈-map⁺'
d_'8712''45'map'8314'''_1000 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314'''_1000 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''_170
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.∈-map⁺''
d_'8712''45'map'8314'''''_1002 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314'''''_1002 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_178
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.∈-map⁺-∘
d_'8712''45'map'8314''45''8728'_1004 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314''45''8728'_1004 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314''45''8728'_382
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.∈-map⁻'
d_'8712''45'map'8315'''_1006 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'map'8315'''_1006 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_166
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.∈-×
d_'8712''45''215'_1008 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45''215'_1008 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''215'_318
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.∈-∪⁺
d_'8712''45''8746''8314'_1010 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45''8746''8314'_1010 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_214
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.∈-∪⁻
d_'8712''45''8746''8315'_1012 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8712''45''8746''8315'_1012 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8315'_212
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.∉-∅
d_'8713''45''8709'_1014 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45''8709'_1014 = erased
-- Ledger.Set.Theory.Properties._.∪-Supremum
d_'8746''45'Supremum_1016 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'Supremum_1016 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'Supremum_696
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∪-assoc
d_'8746''45'assoc_1018 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'assoc_1018 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'assoc_784
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.∪-comm
d_'8746''45'comm_1020 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'comm_1020 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'comm_776
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∪-cong
d_'8746''45'cong_1022 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'cong_1022 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_706
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4
-- Ledger.Set.Theory.Properties._.∪-cong-⊆
d_'8746''45'cong'45''8838'_1024 ::
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
d_'8746''45'cong'45''8838'_1024 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong'45''8838'_700
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.∪-fromList-++
d_'8746''45'fromList'45''43''43'_1026 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'fromList'45''43''43'_1026 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'fromList'45''43''43'_824
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∪-identityʳ
d_'8746''45'identity'691'_1028 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'691'_1028 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'691'_770
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.∪-identityˡ
d_'8746''45'identity'737'_1030 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'737'_1030 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'737'_766
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.∪-preserves-finite
d_'8746''45'preserves'45'finite_1032 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite_1032 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4
-- Ledger.Set.Theory.Properties._.∪-sym
d_'8746''45'sym_1034 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'sym_1034 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'sym_728
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∪-⊆
d_'8746''45''8838'_1036 ::
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
d_'8746''45''8838'_1036 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838'_674
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.∪-⊆ʳ
d_'8746''45''8838''691'_1038 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838''691'_1038 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''691'_672
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.∪-⊆ˡ
d_'8746''45''8838''737'_1040 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838''737'_1040 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''737'_670
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.≡ᵉ-Setoid
d_'8801''7497''45'Setoid_1042 ::
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''7497''45'Setoid_1042 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_296
-- Ledger.Set.Theory.Properties._.≡ᵉ-isEquivalence
d_'8801''7497''45'isEquivalence_1044 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'8801''7497''45'isEquivalence_1044 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_282
-- Ledger.Set.Theory.Properties._.≡ᵉ⇔≡ᵉ'
d_'8801''7497''8660''8801''7497'''_1046 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''7497''8660''8801''7497'''_1046 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_244
-- Ledger.Set.Theory.Properties._.⊆-PartialOrder
d_'8838''45'PartialOrder_1048 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8838''45'PartialOrder_1048 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'PartialOrder_312
-- Ledger.Set.Theory.Properties._.⊆-Preorder
d_'8838''45'Preorder_1050 ::
  () ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8838''45'Preorder_1050 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Preorder_308
-- Ledger.Set.Theory.Properties._.⊆-Transitive
d_'8838''45'Transitive_1052 ::
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
d_'8838''45'Transitive_1052 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276 v4 v5
      v6 v7
-- Ledger.Set.Theory.Properties._.⊆-isPreorder
d_'8838''45'isPreorder_1054 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8838''45'isPreorder_1054 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'isPreorder_300
-- Ledger.Set.Theory.Properties._.⊆→∪
d_'8838''8594''8746'_1056 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''8594''8746'_1056 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''8594''8746'_682
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.Set-Lattice
d_Set'45'Lattice_1060 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
d_Set'45'Lattice_1060 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'Lattice_972
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_1062 ::
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
d_disjoint'''8658'disjoint_1062 = erased
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_1064 ::
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
d_disjoint'8658'disjoint''_1064 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_916
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-Infimum
d_'8745''45'Infimum_1066 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_1066 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'Infimum_940
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_1068 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'691'_1068 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'691'_964
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_1070 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'737'_1070 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'737'_970
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-cong
d_'8745''45'cong_1072 ::
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
d_'8745''45'cong_1072 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong_958
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-cong-⊆
d_'8745''45'cong'45''8838'_1074 ::
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
d_'8745''45'cong'45''8838'_1074 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong'45''8838'_950
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5 v6 v7 v8 v9
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-preserves-finite
d_'8745''45'preserves'45'finite_1076 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_1076 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'preserves'45'finite_948
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-sym
d_'8745''45'sym_1078 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_1078 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_988
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-sym⊆
d_'8745''45'sym'8838'_1080 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'sym'8838'_1080 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym'8838'_974
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-⊆
d_'8745''45''8838'_1082 ::
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
d_'8745''45''8838'_1082 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838'_932
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6 v7 v8
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-⊆ʳ
d_'8745''45''8838''691'_1084 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''691'_1084 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''691'_930
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-⊆ˡ
d_'8745''45''8838''737'_1086 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''737'_1086 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''737'_928
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._._.Set-Lattice
d_Set'45'Lattice_1098 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
d_Set'45'Lattice_1098 ~v0 v1 = du_Set'45'Lattice_1098 v1
du_Set'45'Lattice_1098 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
du_Set'45'Lattice_1098 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'Lattice_972
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_1100 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'''8658'disjoint_1100 = erased
-- Ledger.Set.Theory.Properties._._.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_1102 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'8658'disjoint''_1102 ~v0 ~v1
  = du_disjoint'8658'disjoint''_1102
du_disjoint'8658'disjoint''_1102 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'8658'disjoint''_1102 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_916
-- Ledger.Set.Theory.Properties._._.∩-Infimum
d_'8745''45'Infimum_1104 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_1104 ~v0 v1 = du_'8745''45'Infimum_1104 v1
du_'8745''45'Infimum_1104 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'Infimum_1104 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'Infimum_940
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_1106 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'691'_1106 ~v0 v1
  = du_'8745''45'OrderHomomorphism'691'_1106 v1
du_'8745''45'OrderHomomorphism'691'_1106 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
du_'8745''45'OrderHomomorphism'691'_1106 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'691'_964
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_1108 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'737'_1108 ~v0 v1
  = du_'8745''45'OrderHomomorphism'737'_1108 v1
du_'8745''45'OrderHomomorphism'737'_1108 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
du_'8745''45'OrderHomomorphism'737'_1108 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'737'_970
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-cong
d_'8745''45'cong_1110 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'cong_1110 ~v0 v1 = du_'8745''45'cong_1110 v1
du_'8745''45'cong_1110 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'cong_1110 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong_958
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-cong-⊆
d_'8745''45'cong'45''8838'_1112 ::
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
d_'8745''45'cong'45''8838'_1112 ~v0 v1
  = du_'8745''45'cong'45''8838'_1112 v1
du_'8745''45'cong'45''8838'_1112 ::
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
du_'8745''45'cong'45''8838'_1112 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong'45''8838'_950
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-preserves-finite
d_'8745''45'preserves'45'finite_1114 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_1114 ~v0 v1
  = du_'8745''45'preserves'45'finite_1114 v1
du_'8745''45'preserves'45'finite_1114 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'preserves'45'finite_1114 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'preserves'45'finite_948
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v1 v2
-- Ledger.Set.Theory.Properties._._.∩-sym
d_'8745''45'sym_1116 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_1116 ~v0 v1 = du_'8745''45'sym_1116 v1
du_'8745''45'sym_1116 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'sym_1116 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_988
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-sym⊆
d_'8745''45'sym'8838'_1118 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'sym'8838'_1118 ~v0 v1 = du_'8745''45'sym'8838'_1118 v1
du_'8745''45'sym'8838'_1118 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45'sym'8838'_1118 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym'8838'_974
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-⊆
d_'8745''45''8838'_1120 ::
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
d_'8745''45''8838'_1120 ~v0 v1 = du_'8745''45''8838'_1120 v1
du_'8745''45''8838'_1120 ::
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
du_'8745''45''8838'_1120 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838'_932
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._._.∩-⊆ʳ
d_'8745''45''8838''691'_1122 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''691'_1122 ~v0 v1
  = du_'8745''45''8838''691'_1122 v1
du_'8745''45''8838''691'_1122 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45''8838''691'_1122 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''691'_930
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-⊆ˡ
d_'8745''45''8838''737'_1124 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''737'_1124 ~v0 v1
  = du_'8745''45''8838''737'_1124 v1
du_'8745''45''8838''737'_1124 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45''8838''737'_1124 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''737'_928
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory._ᶠᵐ
d__'7584''7504'_1126 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584''7504'_1126 ~v0 ~v1 v2 = du__'7584''7504'_1126 v2
du__'7584''7504'_1126 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7584''7504'_1126 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                (coe du_finiteness_220 v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Set.Theory._ᶠˢ
d__'7584''738'_1132 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584''738'_1132 ~v0 v1 = du__'7584''738'_1132 v1
du__'7584''738'_1132 ::
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7584''738'_1132 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
      (coe du_finiteness_220 v0)
-- Ledger.Set.Theory.filterˢ
d_filter'738'_1140 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> [AgdaAny]
d_filter'738'_1140 ~v0 ~v1 v2 = du_filter'738'_1140 v2
du_filter'738'_1140 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> [AgdaAny]
du_filter'738'_1140 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_filter_420
      (MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe du_to'45'sp_216 (coe v0))
-- Ledger.Set.Theory.filterᵐ
d_filter'7504'_1148 ::
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_1148 ~v0 ~v1 ~v2 v3 = du_filter'7504'_1148 v3
du_filter'7504'_1148 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504'_1148 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_714
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe du_to'45'sp_216 (coe v0))
-- Ledger.Set.Theory.filterKeys
d_filterKeys_1156 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_1156 ~v0 ~v1 ~v2 v3 = du_filterKeys_1156 v3
du_filterKeys_1156 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterKeys_1156 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filterKeys_728
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe du_to'45'sp_216 (coe v0))
-- Ledger.Set.Theory._∣^'_
d__'8739''94'''__1164 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'''__1164 ~v0 ~v1 v2 ~v3 v4
  = du__'8739''94'''__1164 v2 v4
du__'8739''94'''__1164 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'''__1164 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'''__1150
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe v0) (coe du_to'45'sp_216 (coe v1))
-- Ledger.Set.Theory.indexedSumᵛ'
d_indexedSum'7515'''_1170 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515'''_1170 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_indexedSum'7515'''_1170 v3 v4 v5 v6 v7
du_indexedSum'7515'''_1170 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7515'''_1170 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7515'_1112 v0 v1 v2 v3
      (coe du__'7584''7504'_1126 (coe v4))
-- Ledger.Set.Theory.indexedSum'
d_indexedSum''_1176 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_indexedSum''_1176 ~v0 ~v1 v2 v3 v4 v5
  = du_indexedSum''_1176 v2 v3 v4 v5
du_indexedSum''_1176 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_indexedSum''_1176 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum_930 v1 v0 v2
      (coe du__'7584''738'_1132 (coe v3))
-- Ledger.Set.Theory.singleton-≢-∅
d_singleton'45''8802''45''8709'_1186 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_singleton'45''8802''45''8709'_1186 = erased
-- Ledger.Set.Theory.aggregateBy
d_aggregateBy_1190 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregateBy_1190 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_aggregateBy_1190 v3 v4 v5 v6 v7 v8
du_aggregateBy_1190 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_aggregateBy_1190 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1072
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
      (coe
         (\ v6 ->
            coe
              du_indexedSum'7515'''_1170 (coe v0) (coe v2) (coe v3)
              (coe (\ v7 -> v7))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1336
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
                    erased v0)
                 (coe v5)
                 (coe
                    MAlonzo.Code.Axiom.Set.Rel.du_dom_338
                    (MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1088
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
                       (coe
                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600 d_List'45'Model'7496'_10
                          erased v1)
                       (coe v4)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                          (MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
                          erased v6))))))
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_range_340
         (MAlonzo.Code.Axiom.Set.d_th_1470 (coe d_List'45'Model'7496'_10))
         v4)
-- Ledger.Set.Theory._._._≈_
d__'8776'__1222 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1222 = erased
-- Ledger.Set.Theory._.indexedSumᵛ'-cong
d_indexedSum'7515''''45'cong_1328 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515''''45'cong_1328 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8 v9
  = du_indexedSum'7515''''45'cong_1328 v3 v4 v5 v6 v7 v8 v9
du_indexedSum'7515''''45'cong_1328 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7515''''45'cong_1328 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'cong_1032 v3
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160 (coe v0)
         (coe v1))
      (\ v7 ->
         coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7)))
      (coe
         du__'7584''738'_1132
         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_544 (coe v4)))
      (coe
         du__'7584''738'_1132
         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_544 (coe v5)))
      v6
