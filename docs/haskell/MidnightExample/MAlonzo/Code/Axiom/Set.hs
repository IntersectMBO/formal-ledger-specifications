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

module MAlonzo.Code.Axiom.Set where

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
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Ext.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.Unique.DecPropositional.Properties
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product.Algebra
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Product.Properties.Ext
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Axiom.Set._Preserves₁_⟶_
d__Preserves'8321'_'10230'__18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d__Preserves'8321'_'10230'__18 = erased
-- Axiom.Set._Preserves₁₂_⟶_⟶_
d__Preserves'8321''8322'_'10230'_'10230'__32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d__Preserves'8321''8322'_'10230'_'10230'__32 = erased
-- Axiom.Set.SpecProperty
d_SpecProperty_48 a0 = ()
data T_SpecProperty_48
  = C_SpecProperty'46'constructor_1793 (() ->
                                        (AgdaAny -> ()) ->
                                        () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny)
                                       (() -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny)
-- Axiom.Set.SpecProperty.specProperty
d_specProperty_64 ::
  T_SpecProperty_48 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_64 = erased
-- Axiom.Set.SpecProperty.sp-∘
d_sp'45''8728'_68 ::
  T_SpecProperty_48 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_68 v0
  = case coe v0 of
      C_SpecProperty'46'constructor_1793 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.SpecProperty.sp-¬
d_sp'45''172'_70 ::
  T_SpecProperty_48 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_70 v0
  = case coe v0 of
      C_SpecProperty'46'constructor_1793 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Dec-SpecProperty
d_Dec'45'SpecProperty_72 :: T_SpecProperty_48
d_Dec'45'SpecProperty_72
  = coe
      C_SpecProperty'46'constructor_1793
      (\ v0 v1 v2 v3 v4 v5 -> coe v3 (coe v4 v5))
      (\ v0 v1 v2 v3 ->
         coe
           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_62
           (coe v2 v3))
-- Axiom.Set.Theory
d_Theory_82 a0 = ()
data T_Theory_82
  = C_Theory'46'constructor_6913 T_SpecProperty_48
                                 (() ->
                                  (AgdaAny -> ()) ->
                                  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                 (() -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                 (() ->
                                  () ->
                                  (AgdaAny -> AgdaAny) ->
                                  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                 (() -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Axiom.Set._.sp-¬
d_sp'45''172'_94 ::
  T_SpecProperty_48 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_94 v0 = coe d_sp'45''172'_70 (coe v0)
-- Axiom.Set._.sp-∘
d_sp'45''8728'_96 ::
  T_SpecProperty_48 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_96 v0 = coe d_sp'45''8728'_68 (coe v0)
-- Axiom.Set._.specProperty
d_specProperty_98 ::
  T_SpecProperty_48 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_98 = erased
-- Axiom.Set.Theory.Set
d_Set_146 :: T_Theory_82 -> () -> ()
d_Set_146 = erased
-- Axiom.Set.Theory._∈_
d__'8712'__148 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__148 = erased
-- Axiom.Set.Theory.sp
d_sp_150 :: T_Theory_82 -> T_SpecProperty_48
d_sp_150 v0
  = case coe v0 of
      C_Theory'46'constructor_6913 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory._.sp-¬
d_sp'45''172'_154 ::
  T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_154 v0 = coe d_sp'45''172'_70 (coe d_sp_150 (coe v0))
-- Axiom.Set.Theory._.sp-∘
d_sp'45''8728'_156 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_156 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe v0))
-- Axiom.Set.Theory._.specProperty
d_specProperty_158 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_158 = erased
-- Axiom.Set.Theory._⊆_
d__'8838'__160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__160 = erased
-- Axiom.Set.Theory.specification
d_specification_174 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_174 v0
  = case coe v0 of
      C_Theory'46'constructor_6913 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.unions
d_unions_184 ::
  T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_184 v0
  = case coe v0 of
      C_Theory'46'constructor_6913 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.replacement
d_replacement_196 ::
  T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_196 v0
  = case coe v0 of
      C_Theory'46'constructor_6913 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.listing
d_listing_204 ::
  T_Theory_82 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_204 v0
  = case coe v0 of
      C_Theory'46'constructor_6913 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory._≡ᵉ_
d__'8801''7497'__212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__212 = erased
-- Axiom.Set.Theory._≡ᵉ'_
d__'8801''7497'''__218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__218 = erased
-- Axiom.Set.Theory._∉_
d__'8713'__226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__226 = erased
-- Axiom.Set.Theory.≡→∈
d_'8801''8594''8712'_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_234 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7
  = du_'8801''8594''8712'_234 v6
du_'8801''8594''8712'_234 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_234 v0 = coe v0
-- Axiom.Set.Theory.∈-irrelevant
d_'8712''45'irrelevant_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_238 = erased
-- Axiom.Set.Theory._Preservesˢ_
d__Preserves'738'__250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__250 = erased
-- Axiom.Set.Theory._Preservesˢ₂_
d__Preserves'738''8322'__258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__258 = erased
-- Axiom.Set.Theory.disjoint
d_disjoint_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_264 = erased
-- Axiom.Set.Theory.finite
d_finite_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> ()
d_finite_272 = erased
-- Axiom.Set.Theory.weakly-finite
d_weakly'45'finite_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> ()
d_weakly'45'finite_280 = erased
-- Axiom.Set.Theory.strongly-finite
d_strongly'45'finite_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> ()
d_strongly'45'finite_288 = erased
-- Axiom.Set.Theory.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_300 ~v0 ~v1 ~v2 v3 ~v4
                                                v5
  = du_DecEq'8743'finite'8658'strongly'45'finite_300 v3 v5
du_DecEq'8743'finite'8658'strongly'45'finite_300 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_300 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Data.List.Base.du_deduplicate_934
                (MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0)) v2)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   MAlonzo.Code.Data.List.Relation.Unary.Unique.DecPropositional.Properties.du_deduplicate'45''33'_42
                   (MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0)) v2)
                (coe
                   (\ v4 ->
                      coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                        (\ v5 v6 v7 ->
                           coe
                             MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                             (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                        erased erased erased
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                           (\ v5 v6 v7 ->
                              coe
                                MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                           erased erased erased
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                              (\ v5 ->
                                 coe
                                   MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                   (coe
                                      MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                              erased)
                           (coe
                              MAlonzo.Code.Data.List.Ext.Properties.du_'8712''45'dedup_178
                              (coe v0) (coe v2) (coe v4)))
                        (coe v3 v4))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.card
d_card_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_318 ~v0 ~v1 ~v2 v3 = du_card_318 v3
du_card_318 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_318 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe MAlonzo.Code.Data.List.Base.du_length_304 v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.⊆-weakly-finite
d_'8838''45'weakly'45'finite_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_322 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_'8838''45'weakly'45'finite_322 v5 v6
du_'8838''45'weakly'45'finite_322 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_322 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe (\ v4 v5 -> coe v3 v4 (coe v0 v4 v5)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.isMaximal
d_isMaximal_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> ()
d_isMaximal_330 = erased
-- Axiom.Set.Theory.maximal-⊆
d_maximal'45''8838'_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_338 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7
  = du_maximal'45''8838'_338 v5 v6
du_maximal'45''8838'_338 ::
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_maximal'45''8838'_338 v0 v1 = coe v0 v1
-- Axiom.Set.Theory.maximal-unique
d_maximal'45'unique_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_342 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_maximal'45'unique_342 v5 v6
du_maximal'45'unique_342 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_342 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v2 v3 -> coe du_maximal'45''8838'_338 (coe v1) v2)
      (\ v2 v3 -> coe du_maximal'45''8838'_338 (coe v0) v2)
-- Axiom.Set.Theory.FinSet
d_FinSet_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_Theory_82 -> () -> ()
d_FinSet_348 = erased
-- Axiom.Set.Theory.strictify
d_strictify_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_360 ~v0 v1 ~v2 ~v3 v4 v5 = du_strictify_360 v1 v4 v5
du_strictify_360 ::
  T_Theory_82 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_strictify_360 v0 v1 v2
  = let v3
          = coe
              d_specification_174 v0 erased erased
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)) v1 in
    coe
      (case coe v3 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
           -> coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                (coe
                   (\ v6 ->
                      coe
                        MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.Function.Bundles.d_to_1724 (coe v5 v6)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v2 v6 v7))))
                        (coe
                           (\ v7 ->
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe MAlonzo.Code.Function.Bundles.d_from_1726 (coe v5 v6) v7)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Theory.map
d_map_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_380 ~v0 v1 ~v2 ~v3 = du_map_380 v1
du_map_380 ::
  T_Theory_82 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map_380 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe
         (\ v1 v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe d_replacement_196 v0 erased erased)
-- Axiom.Set.Theory.∈-map
d_'8712''45'map_388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_388 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'map_388 v1 v4 v5 v6
du_'8712''45'map_388 ::
  T_Theory_82 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'map_388 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_replacement_196 v0 erased erased v2 v1) v3
-- Axiom.Set.Theory.∈-map′
d_'8712''45'map'8242'_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_394 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8712''45'map'8242'_394 v1 v4 v5 v6 v7
du_'8712''45'map'8242'_394 ::
  T_Theory_82 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8712''45'map'8242'_394 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe du_'8712''45'map_388 (coe v0) (coe v1) (coe v2) (coe v2 v3))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v4)))
-- Axiom.Set.Theory.filter
d_filter_402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_402 ~v0 v1 ~v2 ~v3 = du_filter_402 v1
du_filter_402 :: T_Theory_82 -> AgdaAny -> AgdaAny -> AgdaAny
du_filter_402 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe
         (\ v1 v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe (\ v1 v2 -> coe d_specification_174 v0 erased erased v2 v1))
-- Axiom.Set.Theory.∈-filter
d_'8712''45'filter_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_408 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'filter_408 v1 v4 v5 v6
du_'8712''45'filter_408 ::
  T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'filter_408 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_specification_174 v0 erased erased v1 v2) v3
-- Axiom.Set.Theory.fromList
d_fromList_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> [AgdaAny] -> AgdaAny
d_fromList_410 ~v0 v1 ~v2 v3 = du_fromList_410 v1 v3
du_fromList_410 :: T_Theory_82 -> [AgdaAny] -> AgdaAny
du_fromList_410 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_listing_204 v0 erased v1)
-- Axiom.Set.Theory.∈-fromList
d_'8712''45'fromList_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_414 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'fromList_414 v1 v3 v4
du_'8712''45'fromList_414 ::
  T_Theory_82 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'fromList_414 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_listing_204 v0 erased v1) v2
-- Axiom.Set.Theory.∈-unions
d_'8712''45'unions_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_422 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'unions_422 v1 v3 v4
du_'8712''45'unions_422 ::
  T_Theory_82 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'unions_422 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_unions_184 v0 erased v2) v1
-- Axiom.Set.Theory.∅
d_'8709'_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny
d_'8709'_424 ~v0 v1 ~v2 = du_'8709'_424 v1
du_'8709'_424 :: T_Theory_82 -> AgdaAny
du_'8709'_424 v0
  = coe
      du_fromList_410 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Axiom.Set.Theory.∅-strongly-finite
d_'8709''45'strongly'45'finite_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_426 ~v0 v1 ~v2
  = du_'8709''45'strongly'45'finite_426 v1
du_'8709''45'strongly'45'finite_426 ::
  T_Theory_82 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''45'strongly'45'finite_426 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22)
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
                 (coe
                    du_'8712''45'fromList_414 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v1)))))
-- Axiom.Set.Theory.card-∅
d_card'45''8709'_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_428 = erased
-- Axiom.Set.Theory.singleton
d_singleton_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_singleton_430 ~v0 v1 ~v2 v3 = du_singleton_430 v1 v3
du_singleton_430 :: T_Theory_82 -> AgdaAny -> AgdaAny
du_singleton_430 v0 v1
  = coe
      du_fromList_410 (coe v0)
      (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306 (coe v1))
-- Axiom.Set.Theory.❴_❵
d_'10100'_'10101'_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_434 ~v0 v1 = du_'10100'_'10101'_434 v1
du_'10100'_'10101'_434 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
du_'10100'_'10101'_434 v0 v1 v2 = coe du_singleton_430 (coe v0) v2
-- Axiom.Set.Theory.∈-singleton
d_'8712''45'singleton_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_440 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'singleton_440 v1 v3 v4
du_'8712''45'singleton_440 ::
  T_Theory_82 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'singleton_440 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
           (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
      erased erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
            (\ v3 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
            erased)
         (coe
            du_'8712''45'fromList_414 (coe v0)
            (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306 (coe v2))
            (coe v1)))
      (coe
         MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
         (coe
            (\ v3 ->
               coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased))
         erased)
-- Axiom.Set.Theory.partialToSet
d_partialToSet_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_454 ~v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_partialToSet_454 v1 v5 v6
du_partialToSet_454 ::
  T_Theory_82 -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
du_partialToSet_454 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_36
      (coe
         (\ v3 ->
            coe
              du_fromList_410 (coe v0)
              (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306 (coe v3))))
      (coe du_'8709'_424 (coe v0)) (coe v1 v2)
-- Axiom.Set.Theory.∈-partialToSet
d_'8712''45'partialToSet_466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_466 ~v0 v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7
  = du_'8712''45'partialToSet_466 v1 v6
du_'8712''45'partialToSet_466 ::
  T_Theory_82 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'partialToSet_466 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1724
              (coe du_'8712''45'singleton_440 (coe v0) (coe v1) (coe v1))
              erased))
      erased
-- Axiom.Set.Theory.concatMapˢ
d_concatMap'738'_490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_490 ~v0 v1 ~v2 ~v3 v4 v5
  = du_concatMap'738'_490 v1 v4 v5
du_concatMap'738'_490 ::
  T_Theory_82 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_concatMap'738'_490 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_unions_184 v0 erased (coe du_map_380 v0 v1 v2))
-- Axiom.Set.Theory.∈-concatMapˢ
d_'8712''45'concatMap'738'_502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_502 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'concatMap'738'_502 v1 v4 v5 v6
du_'8712''45'concatMap'738'_502 ::
  T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'concatMap'738'_502 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
           (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
      erased erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
         (\ v4 v5 v6 ->
            coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__216
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                 (coe
                    MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
               (\ v4 v5 v6 ->
                  coe
                    MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                    (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
               erased erased erased
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                  (\ v4 v5 v6 ->
                     coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                       (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                  erased erased erased
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                          (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                     erased)
                  (coe
                     du_'8712''45'unions_422 (coe v0) (coe v2)
                     (coe du_map_380 v0 v3 v1)))
               (coe
                  MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_46
                  (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                  (coe
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                          (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                          (coe du_'8712''45'map_388 (coe v0) (coe v1) (coe v3) (coe v4))
                          (coe
                             MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                             (coe
                                MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))))))
            (coe
               MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_46
               (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
                       (coe
                          (\ v5 ->
                             case coe v5 of
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                                 -> case coe v7 of
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                                        -> case coe v9 of
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                               -> coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe v6)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe v8) (coe v10)))
                                                    (coe v11)
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               _ -> MAlonzo.RTE.mazUnreachableError))
                       (coe
                          (\ v5 ->
                             case coe v5 of
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                                 -> case coe v6 of
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                                        -> case coe v9 of
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                               -> coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe v8)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe v10)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe v11) (coe v7)))
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               _ -> MAlonzo.RTE.mazUnreachableError))))))
         (coe
            MAlonzo.Code.Data.Product.Properties.du_'8707''8707''8596''8707''8707'_250))
      (coe
         MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_46
         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
         (coe
            (\ v4 ->
               coe
                 MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45''8801'_58
                 (coe v3 v4))))
-- Axiom.Set.Theory.mapPartial
d_mapPartial_558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_558 ~v0 v1 ~v2 ~v3 v4 = du_mapPartial_558 v1 v4
du_mapPartial_558 ::
  T_Theory_82 -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
du_mapPartial_558 v0 v1
  = coe
      du_concatMap'738'_490 (coe v0)
      (coe du_partialToSet_454 (coe v0) (coe v1))
-- Axiom.Set.Theory.∈-mapPartial
d_'8712''45'mapPartial_568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_568 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'mapPartial_568 v1 v4 v5 v6
du_'8712''45'mapPartial_568 ::
  T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'mapPartial_568 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
           (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
      erased erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
         (\ v4 v5 v6 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
            (\ v4 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
            erased)
         (coe
            du_'8712''45'concatMap'738'_502 (coe v0) (coe v1) (coe v2)
            (coe du_partialToSet_454 (coe v0) (coe v3))))
      (coe
         MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_46
         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
         (coe
            (\ v4 ->
               coe
                 MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                 (coe
                    MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                    (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                 (coe du_'8712''45'partialToSet_466 (coe v0) (coe v2)))))
-- Axiom.Set.Theory.⊆-mapPartial
d_'8838''45'mapPartial_586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_586 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8838''45'mapPartial_586 v1 v4 v5 v6 v7
du_'8838''45'mapPartial_586 ::
  T_Theory_82 ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du_'8838''45'mapPartial_586 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 du_'8712''45'map_388 (coe v0) (coe du_mapPartial_558 v0 v2 v1)
                 (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16) (coe v3))
              v4 in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> case coe v7 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                  -> let v10
                           = coe
                               MAlonzo.Code.Function.Bundles.d_from_1726
                               (coe
                                  du_'8712''45'mapPartial_568 (coe v0) (coe v1) (coe v6) (coe v2))
                               v9 in
                     coe
                       (case coe v10 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                            -> case coe v12 of
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                   -> coe
                                        MAlonzo.Code.Function.Bundles.d_to_1724
                                        (coe
                                           du_'8712''45'map_388 (coe v0) (coe v1) (coe v2)
                                           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v6)))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v11)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                              (coe v13)))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Theory.binary-unions
d_binary'45'unions_626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_626 ~v0 v1 ~v2 v3 v4
  = du_binary'45'unions_626 v1 v3 v4
du_binary'45'unions_626 ::
  T_Theory_82 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_binary'45'unions_626 v0 v1 v2
  = let v3
          = coe
              d_unions_184 v0 erased
              (coe
                 du_fromList_410 (coe v0)
                 (coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                    (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306 (coe v2)))) in
    coe
      (case coe v3 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
           -> coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                (coe
                   (\ v6 ->
                      coe
                        MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
                        (coe
                           (\ v7 ->
                              case coe v7 of
                                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                                  -> coe
                                       MAlonzo.Code.Function.Bundles.d_to_1724 (coe v5 v6)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Function.Bundles.d_to_1724
                                                (coe
                                                   du_'8712''45'fromList_414 (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe v1)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe v2)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                   (coe v1))
                                                (coe
                                                   MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46
                                                   erased))
                                             (coe v8)))
                                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                                  -> coe
                                       MAlonzo.Code.Function.Bundles.d_to_1724 (coe v5 v6)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Function.Bundles.d_to_1724
                                                (coe
                                                   du_'8712''45'fromList_414 (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe v1)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe v2)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                   (coe v2))
                                                (coe
                                                   MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                                                   (coe
                                                      MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46
                                                      erased)))
                                             (coe v8)))
                                _ -> MAlonzo.RTE.mazUnreachableError))
                        (coe
                           (\ v7 ->
                              let v8
                                    = coe
                                        MAlonzo.Code.Function.Bundles.d_from_1726 (coe v5 v6) v7 in
                              coe
                                (let v9
                                       = coe
                                           MAlonzo.Code.Function.Bundles.d_from_1726
                                           (coe
                                              du_'8712''45'fromList_414 (coe v0)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                 (coe v1)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                    (coe v2)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                 (coe
                                                    MAlonzo.Code.Function.Bundles.d_from_1726
                                                    (coe v5 v6) v7)))
                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                 (coe
                                                    MAlonzo.Code.Function.Bundles.d_from_1726
                                                    (coe v5 v6) v7))) in
                                 coe
                                   (case coe v9 of
                                      MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v12
                                        -> case coe v8 of
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                               -> coe
                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe v14))
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v12
                                        -> coe
                                             seq (coe v12)
                                             (case coe v8 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                                  -> coe
                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe v14))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      _ -> MAlonzo.RTE.mazUnreachableError))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Theory._∪_
d__'8746'__662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__662 ~v0 v1 ~v2 v3 v4 = du__'8746'__662 v1 v3 v4
du__'8746'__662 :: T_Theory_82 -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746'__662 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe du_binary'45'unions_626 (coe v0) (coe v1) (coe v2))
-- Axiom.Set.Theory.∈-∪
d_'8712''45''8746'_670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_670 ~v0 v1 ~v2 v3 v4 v5
  = du_'8712''45''8746'_670 v1 v3 v4 v5
du_'8712''45''8746'_670 ::
  T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45''8746'_670 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe du_binary'45'unions_626 (coe v0) (coe v1) (coe v2)) v3
-- Axiom.Set.Theory.spec-∈
d_spec'45''8712'_672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_Theory_82 -> () -> ()
d_spec'45''8712'_672 = erased
-- Axiom.Set.Theory.Intersection._∩_
d__'8745'__686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__686 ~v0 v1 ~v2 v3 v4 v5 = du__'8745'__686 v1 v3 v4 v5
du__'8745'__686 ::
  T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8745'__686 v0 v1 v2 v3 = coe du_filter_402 v0 (coe v1 v3) v2
-- Axiom.Set.Theory.Intersection.∈-∩
d_'8712''45''8745'_694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_694 ~v0 v1 ~v2 v3 v4 v5 v6
  = du_'8712''45''8745'_694 v1 v3 v4 v5 v6
du_'8712''45''8745'_694 ::
  T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45''8745'_694 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Function.Base.du__'8728''8242'__216
           (coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
           (coe
              MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
              (coe
                 MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)))
      erased erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
         (\ v5 v6 v7 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
            (\ v5 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
            erased)
         (coe
            du_'8712''45'filter_408 (coe v0) (coe v2) (coe v1 v3) (coe v4)))
      (coe MAlonzo.Code.Data.Product.Algebra.du_'215''45'comm_224)
-- Axiom.Set.Theory.Intersection.disjoint'
d_disjoint''_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_706 = erased
-- Axiom.Set.Theory.All
d_All_712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_712 = erased
-- Axiom.Set.Theory.Any
d_Any_720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_720 = erased
-- Axiom.Set.Theoryᶠ
d_Theory'7584'_728 = ()
data T_Theory'7584'_728
  = C_Theory'7584''46'constructor_99269 T_Theory_82
                                        (() -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Axiom.Set._._Preservesˢ_
d__Preserves'738'__734 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__734 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__736 ::
  T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__736 = erased
-- Axiom.Set._._∈_
d__'8712'__738 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__738 = erased
-- Axiom.Set._._∉_
d__'8713'__740 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__740 = erased
-- Axiom.Set._._∪_
d__'8746'__742 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__742 v0 v1 v2 v3 = coe du__'8746'__662 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__744 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__744 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__746 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__746 = erased
-- Axiom.Set._._⊆_
d__'8838'__748 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__748 = erased
-- Axiom.Set._.All
d_All_750 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_750 = erased
-- Axiom.Set._.Any
d_Any_752 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_752 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_754 ::
  T_Theory_82 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_754 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_754
du_DecEq'8743'finite'8658'strongly'45'finite_754 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_754 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_300 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_756 :: T_Theory_82 -> () -> ()
d_FinSet_756 = erased
-- Axiom.Set._.Set
d_Set_758 :: T_Theory_82 -> () -> ()
d_Set_758 = erased
-- Axiom.Set._.binary-unions
d_binary'45'unions_760 ::
  T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_760 v0 v1 v2 v3
  = coe du_binary'45'unions_626 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_762 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_762 ~v0 = du_card_762
du_card_762 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_762 v0 v1 = coe du_card_318 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_764 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_764 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_766 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_766 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_490 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_768 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_768 = erased
-- Axiom.Set._.filter
d_filter_770 ::
  T_Theory_82 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_770 v0 v1 v2 = coe du_filter_402 (coe v0)
-- Axiom.Set._.finite
d_finite_772 :: T_Theory_82 -> () -> AgdaAny -> ()
d_finite_772 = erased
-- Axiom.Set._.fromList
d_fromList_774 :: T_Theory_82 -> () -> [AgdaAny] -> AgdaAny
d_fromList_774 v0 v1 v2 = coe du_fromList_410 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_776 :: T_Theory_82 -> () -> AgdaAny -> ()
d_isMaximal_776 = erased
-- Axiom.Set._.listing
d_listing_778 ::
  T_Theory_82 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_778 v0 = coe d_listing_204 (coe v0)
-- Axiom.Set._.map
d_map_780 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_780 v0 v1 v2 = coe du_map_380 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_782 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_782 v0 v1 v2 v3 = coe du_mapPartial_558 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_784 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_784 ~v0 = du_maximal'45'unique_784
du_maximal'45'unique_784 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_784 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_342 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_786 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_786 ~v0 = du_maximal'45''8838'_786
du_maximal'45''8838'_786 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_786 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_338 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_788 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_788 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_454 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_790 ::
  T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_790 v0 = coe d_replacement_196 (coe v0)
-- Axiom.Set._.singleton
d_singleton_792 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_singleton_792 v0 v1 v2 = coe du_singleton_430 (coe v0) v2
-- Axiom.Set._.sp
d_sp_794 :: T_Theory_82 -> T_SpecProperty_48
d_sp_794 v0 = coe d_sp_150 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_796 ::
  T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_796 v0 = coe d_sp'45''172'_70 (coe d_sp_150 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_798 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_798 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_800 :: T_Theory_82 -> () -> ()
d_spec'45''8712'_800 = erased
-- Axiom.Set._.specProperty
d_specProperty_802 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_802 = erased
-- Axiom.Set._.specification
d_specification_804 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_804 v0 = coe d_specification_174 (coe v0)
-- Axiom.Set._.strictify
d_strictify_806 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_806 v0 v1 v2 v3 v4
  = coe du_strictify_360 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_808 :: T_Theory_82 -> () -> AgdaAny -> ()
d_strongly'45'finite_808 = erased
-- Axiom.Set._.unions
d_unions_810 ::
  T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_810 v0 = coe d_unions_184 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_812 :: T_Theory_82 -> () -> AgdaAny -> ()
d_weakly'45'finite_812 = erased
-- Axiom.Set._.∅
d_'8709'_814 :: T_Theory_82 -> () -> AgdaAny
d_'8709'_814 v0 v1 = coe du_'8709'_424 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_816 ::
  T_Theory_82 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_816 v0 v1
  = coe du_'8709''45'strongly'45'finite_426 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_818 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_818 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_502 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_820 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_820 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_408 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_822 ::
  T_Theory_82 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_822 v0 v1 v2 v3
  = coe du_'8712''45'fromList_414 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_824 :: T_Theory_82 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_824 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_826 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_826 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_388 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_828 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_828 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_568 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_830 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_830 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_394 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_832 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_832 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_466 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_834 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_834 v0 v1 v2 v3
  = coe du_'8712''45'singleton_440 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_836 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_836 v0 v1 v2 v3
  = coe du_'8712''45'unions_422 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_838 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_838 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_670 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_840 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_840 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_840 v5
du_'8801''8594''8712'_840 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_840 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_842 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_842 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_586 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_844 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_844 ~v0
  = du_'8838''45'weakly'45'finite_844
du_'8838''45'weakly'45'finite_844 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_844 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_322 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_846 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_846 v0 = coe du_'10100'_'10101'_434 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__850 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__850 v0 v1 v2 v3 v4
  = coe du__'8745'__686 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_852 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_852 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_854 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_854 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_694 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryᶠ.theory
d_theory_860 :: T_Theory'7584'_728 -> T_Theory_82
d_theory_860 v0
  = case coe v0 of
      C_Theory'7584''46'constructor_99269 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᶠ._._Preservesˢ_
d__Preserves'738'__864 ::
  T_Theory'7584'_728 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__864 = erased
-- Axiom.Set.Theoryᶠ._._Preservesˢ₂_
d__Preserves'738''8322'__866 ::
  T_Theory'7584'_728 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__866 = erased
-- Axiom.Set.Theoryᶠ._._∈_
d__'8712'__868 ::
  T_Theory'7584'_728 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__868 = erased
-- Axiom.Set.Theoryᶠ._._∉_
d__'8713'__870 ::
  T_Theory'7584'_728 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__870 = erased
-- Axiom.Set.Theoryᶠ._._∪_
d__'8746'__872 ::
  T_Theory'7584'_728 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__872 v0 v1 v2 v3
  = coe du__'8746'__662 (coe d_theory_860 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._._≡ᵉ_
d__'8801''7497'__874 ::
  T_Theory'7584'_728 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__874 = erased
-- Axiom.Set.Theoryᶠ._._≡ᵉ'_
d__'8801''7497'''__876 ::
  T_Theory'7584'_728 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__876 = erased
-- Axiom.Set.Theoryᶠ._._⊆_
d__'8838'__878 ::
  T_Theory'7584'_728 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__878 = erased
-- Axiom.Set.Theoryᶠ._.All
d_All_880 ::
  T_Theory'7584'_728 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_880 = erased
-- Axiom.Set.Theoryᶠ._.Any
d_Any_882 ::
  T_Theory'7584'_728 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_882 = erased
-- Axiom.Set.Theoryᶠ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_884 ::
  T_Theory'7584'_728 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_884 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_884
du_DecEq'8743'finite'8658'strongly'45'finite_884 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_884 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_300 v1 v3
-- Axiom.Set.Theoryᶠ._.FinSet
d_FinSet_886 :: T_Theory'7584'_728 -> () -> ()
d_FinSet_886 = erased
-- Axiom.Set.Theoryᶠ._.Set
d_Set_888 :: T_Theory'7584'_728 -> () -> ()
d_Set_888 = erased
-- Axiom.Set.Theoryᶠ._.binary-unions
d_binary'45'unions_890 ::
  T_Theory'7584'_728 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_890 v0 v1 v2 v3
  = coe du_binary'45'unions_626 (coe d_theory_860 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.card
d_card_892 ::
  T_Theory'7584'_728 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_892 ~v0 = du_card_892
du_card_892 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_892 v0 v1 = coe du_card_318 v1
-- Axiom.Set.Theoryᶠ._.card-∅
d_card'45''8709'_894 ::
  T_Theory'7584'_728 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_894 = erased
-- Axiom.Set.Theoryᶠ._.concatMapˢ
d_concatMap'738'_896 ::
  T_Theory'7584'_728 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_896 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_490 (coe d_theory_860 (coe v0)) v3 v4
-- Axiom.Set.Theoryᶠ._.disjoint
d_disjoint_898 ::
  T_Theory'7584'_728 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_898 = erased
-- Axiom.Set.Theoryᶠ._.filter
d_filter_900 ::
  T_Theory'7584'_728 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_900 v0 v1 v2
  = coe du_filter_402 (coe d_theory_860 (coe v0))
-- Axiom.Set.Theoryᶠ._.finite
d_finite_902 :: T_Theory'7584'_728 -> () -> AgdaAny -> ()
d_finite_902 = erased
-- Axiom.Set.Theoryᶠ._.fromList
d_fromList_904 :: T_Theory'7584'_728 -> () -> [AgdaAny] -> AgdaAny
d_fromList_904 v0 v1 v2
  = coe du_fromList_410 (coe d_theory_860 (coe v0)) v2
-- Axiom.Set.Theoryᶠ._.isMaximal
d_isMaximal_906 :: T_Theory'7584'_728 -> () -> AgdaAny -> ()
d_isMaximal_906 = erased
-- Axiom.Set.Theoryᶠ._.listing
d_listing_908 ::
  T_Theory'7584'_728 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_908 v0 = coe d_listing_204 (coe d_theory_860 (coe v0))
-- Axiom.Set.Theoryᶠ._.map
d_map_910 ::
  T_Theory'7584'_728 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_910 v0 v1 v2 = coe du_map_380 (coe d_theory_860 (coe v0))
-- Axiom.Set.Theoryᶠ._.mapPartial
d_mapPartial_912 ::
  T_Theory'7584'_728 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_912 v0 v1 v2 v3
  = coe du_mapPartial_558 (coe d_theory_860 (coe v0)) v3
-- Axiom.Set.Theoryᶠ._.maximal-unique
d_maximal'45'unique_914 ::
  T_Theory'7584'_728 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_914 ~v0 = du_maximal'45'unique_914
du_maximal'45'unique_914 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_914 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_342 v3 v4
-- Axiom.Set.Theoryᶠ._.maximal-⊆
d_maximal'45''8838'_916 ::
  T_Theory'7584'_728 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_916 ~v0 = du_maximal'45''8838'_916
du_maximal'45''8838'_916 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_916 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_338 v3 v4
-- Axiom.Set.Theoryᶠ._.partialToSet
d_partialToSet_918 ::
  T_Theory'7584'_728 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_918 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_454 (coe d_theory_860 (coe v0)) v4 v5
-- Axiom.Set.Theoryᶠ._.replacement
d_replacement_920 ::
  T_Theory'7584'_728 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_920 v0
  = coe d_replacement_196 (coe d_theory_860 (coe v0))
-- Axiom.Set.Theoryᶠ._.singleton
d_singleton_922 :: T_Theory'7584'_728 -> () -> AgdaAny -> AgdaAny
d_singleton_922 v0 v1 v2
  = coe du_singleton_430 (coe d_theory_860 (coe v0)) v2
-- Axiom.Set.Theoryᶠ._.sp
d_sp_924 :: T_Theory'7584'_728 -> T_SpecProperty_48
d_sp_924 v0 = coe d_sp_150 (coe d_theory_860 (coe v0))
-- Axiom.Set.Theoryᶠ._.sp-¬
d_sp'45''172'_926 ::
  T_Theory'7584'_728 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_926 v0
  = coe d_sp'45''172'_70 (coe d_sp_150 (coe d_theory_860 (coe v0)))
-- Axiom.Set.Theoryᶠ._.sp-∘
d_sp'45''8728'_928 ::
  T_Theory'7584'_728 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_928 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe d_theory_860 (coe v0)))
-- Axiom.Set.Theoryᶠ._.spec-∈
d_spec'45''8712'_930 :: T_Theory'7584'_728 -> () -> ()
d_spec'45''8712'_930 = erased
-- Axiom.Set.Theoryᶠ._.specProperty
d_specProperty_932 ::
  T_Theory'7584'_728 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_932 = erased
-- Axiom.Set.Theoryᶠ._.specification
d_specification_934 ::
  T_Theory'7584'_728 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_934 v0
  = coe d_specification_174 (coe d_theory_860 (coe v0))
-- Axiom.Set.Theoryᶠ._.strictify
d_strictify_936 ::
  T_Theory'7584'_728 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_936 v0 v1 v2 v3 v4
  = coe du_strictify_360 (coe d_theory_860 (coe v0)) v3 v4
-- Axiom.Set.Theoryᶠ._.strongly-finite
d_strongly'45'finite_938 ::
  T_Theory'7584'_728 -> () -> AgdaAny -> ()
d_strongly'45'finite_938 = erased
-- Axiom.Set.Theoryᶠ._.unions
d_unions_940 ::
  T_Theory'7584'_728 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_940 v0 = coe d_unions_184 (coe d_theory_860 (coe v0))
-- Axiom.Set.Theoryᶠ._.weakly-finite
d_weakly'45'finite_942 :: T_Theory'7584'_728 -> () -> AgdaAny -> ()
d_weakly'45'finite_942 = erased
-- Axiom.Set.Theoryᶠ._.∅
d_'8709'_944 :: T_Theory'7584'_728 -> () -> AgdaAny
d_'8709'_944 v0 v1 = coe du_'8709'_424 (coe d_theory_860 (coe v0))
-- Axiom.Set.Theoryᶠ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_946 ::
  T_Theory'7584'_728 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_946 v0 v1
  = coe
      du_'8709''45'strongly'45'finite_426 (coe d_theory_860 (coe v0))
-- Axiom.Set.Theoryᶠ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_948 ::
  T_Theory'7584'_728 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_948 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_502 (coe d_theory_860 (coe v0)) v3 v4
      v5
-- Axiom.Set.Theoryᶠ._.∈-filter
d_'8712''45'filter_950 ::
  T_Theory'7584'_728 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_950 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_408 (coe d_theory_860 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-fromList
d_'8712''45'fromList_952 ::
  T_Theory'7584'_728 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_952 v0 v1 v2 v3
  = coe du_'8712''45'fromList_414 (coe d_theory_860 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-irrelevant
d_'8712''45'irrelevant_954 ::
  T_Theory'7584'_728 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_954 = erased
-- Axiom.Set.Theoryᶠ._.∈-map
d_'8712''45'map_956 ::
  T_Theory'7584'_728 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_956 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_388 (coe d_theory_860 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-mapPartial
d_'8712''45'mapPartial_958 ::
  T_Theory'7584'_728 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_958 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'mapPartial_568 (coe d_theory_860 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-map′
d_'8712''45'map'8242'_960 ::
  T_Theory'7584'_728 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_960 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_394 (coe d_theory_860 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᶠ._.∈-partialToSet
d_'8712''45'partialToSet_962 ::
  T_Theory'7584'_728 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_962 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_466 (coe d_theory_860 (coe v0)) v5
-- Axiom.Set.Theoryᶠ._.∈-singleton
d_'8712''45'singleton_964 ::
  T_Theory'7584'_728 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_964 v0 v1 v2 v3
  = coe du_'8712''45'singleton_440 (coe d_theory_860 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-unions
d_'8712''45'unions_966 ::
  T_Theory'7584'_728 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_966 v0 v1 v2 v3
  = coe du_'8712''45'unions_422 (coe d_theory_860 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-∪
d_'8712''45''8746'_968 ::
  T_Theory'7584'_728 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_968 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_670 (coe d_theory_860 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᶠ._.≡→∈
d_'8801''8594''8712'_970 ::
  T_Theory'7584'_728 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_970 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_970 v5
du_'8801''8594''8712'_970 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_970 v0 = coe v0
-- Axiom.Set.Theoryᶠ._.⊆-mapPartial
d_'8838''45'mapPartial_972 ::
  T_Theory'7584'_728 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_972 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_586 (coe d_theory_860 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᶠ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_974 ::
  T_Theory'7584'_728 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_974 ~v0
  = du_'8838''45'weakly'45'finite_974
du_'8838''45'weakly'45'finite_974 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_974 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_322 v3 v4
-- Axiom.Set.Theoryᶠ._.❴_❵
d_'10100'_'10101'_976 ::
  T_Theory'7584'_728 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_976 v0
  = coe du_'10100'_'10101'_434 (coe d_theory_860 (coe v0))
-- Axiom.Set.Theoryᶠ._.Intersection._∩_
d__'8745'__980 ::
  T_Theory'7584'_728 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__980 v0 v1 v2 v3 v4
  = coe du__'8745'__686 (coe d_theory_860 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᶠ._.Intersection.disjoint'
d_disjoint''_982 ::
  T_Theory'7584'_728 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_982 = erased
-- Axiom.Set.Theoryᶠ._.Intersection.∈-∩
d_'8712''45''8745'_984 ::
  T_Theory'7584'_728 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_984 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45''8745'_694 (coe d_theory_860 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryᶠ.finiteness
d_finiteness_988 ::
  T_Theory'7584'_728 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_finiteness_988 v0
  = case coe v0 of
      C_Theory'7584''46'constructor_99269 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᶠ.DecEq⇒strongly-finite
d_DecEq'8658'strongly'45'finite_992 ::
  T_Theory'7584'_728 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8658'strongly'45'finite_992 v0 ~v1 v2 v3
  = du_DecEq'8658'strongly'45'finite_992 v0 v2 v3
du_DecEq'8658'strongly'45'finite_992 ::
  T_Theory'7584'_728 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8658'strongly'45'finite_992 v0 v1 v2
  = coe
      du_DecEq'8743'finite'8658'strongly'45'finite_300 (coe v1)
      (coe d_finiteness_988 v0 erased v2)
-- Axiom.Set.Theoryᶠ.lengthˢ
d_length'738'_996 ::
  T_Theory'7584'_728 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> Integer
d_length'738'_996 v0 ~v1 v2 v3 = du_length'738'_996 v0 v2 v3
du_length'738'_996 ::
  T_Theory'7584'_728 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> Integer
du_length'738'_996 v0 v1 v2
  = coe
      du_card_318
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
         (coe
            du_DecEq'8658'strongly'45'finite_992 (coe v0) (coe v1) (coe v2)))
-- Axiom.Set.Theoryⁱ
d_Theory'8305'_1000 = ()
data T_Theory'8305'_1000
  = C_Theory'8305''46'constructor_102489 T_Theory_82
                                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Axiom.Set._._Preservesˢ_
d__Preserves'738'__1006 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1006 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__1008 ::
  T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1008 = erased
-- Axiom.Set._._∈_
d__'8712'__1010 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1010 = erased
-- Axiom.Set._._∉_
d__'8713'__1012 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1012 = erased
-- Axiom.Set._._∪_
d__'8746'__1014 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1014 v0 v1 v2 v3 = coe du__'8746'__662 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__1016 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1016 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__1018 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1018 = erased
-- Axiom.Set._._⊆_
d__'8838'__1020 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1020 = erased
-- Axiom.Set._.All
d_All_1022 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1022 = erased
-- Axiom.Set._.Any
d_Any_1024 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1024 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1026 ::
  T_Theory_82 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1026 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1026
du_DecEq'8743'finite'8658'strongly'45'finite_1026 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1026 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_300 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_1028 :: T_Theory_82 -> () -> ()
d_FinSet_1028 = erased
-- Axiom.Set._.Set
d_Set_1030 :: T_Theory_82 -> () -> ()
d_Set_1030 = erased
-- Axiom.Set._.binary-unions
d_binary'45'unions_1032 ::
  T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1032 v0 v1 v2 v3
  = coe du_binary'45'unions_626 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_1034 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1034 ~v0 = du_card_1034
du_card_1034 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1034 v0 v1 = coe du_card_318 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_1036 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1036 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_1038 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1038 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_490 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_1040 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1040 = erased
-- Axiom.Set._.filter
d_filter_1042 ::
  T_Theory_82 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1042 v0 v1 v2 = coe du_filter_402 (coe v0)
-- Axiom.Set._.finite
d_finite_1044 :: T_Theory_82 -> () -> AgdaAny -> ()
d_finite_1044 = erased
-- Axiom.Set._.fromList
d_fromList_1046 :: T_Theory_82 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1046 v0 v1 v2 = coe du_fromList_410 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_1048 :: T_Theory_82 -> () -> AgdaAny -> ()
d_isMaximal_1048 = erased
-- Axiom.Set._.listing
d_listing_1050 ::
  T_Theory_82 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1050 v0 = coe d_listing_204 (coe v0)
-- Axiom.Set._.map
d_map_1052 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1052 v0 v1 v2 = coe du_map_380 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_1054 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1054 v0 v1 v2 v3 = coe du_mapPartial_558 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_1056 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1056 ~v0 = du_maximal'45'unique_1056
du_maximal'45'unique_1056 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1056 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_342 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_1058 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1058 ~v0 = du_maximal'45''8838'_1058
du_maximal'45''8838'_1058 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1058 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_338 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_1060 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1060 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_454 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_1062 ::
  T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1062 v0 = coe d_replacement_196 (coe v0)
-- Axiom.Set._.singleton
d_singleton_1064 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_singleton_1064 v0 v1 v2 = coe du_singleton_430 (coe v0) v2
-- Axiom.Set._.sp
d_sp_1066 :: T_Theory_82 -> T_SpecProperty_48
d_sp_1066 v0 = coe d_sp_150 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_1068 ::
  T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1068 v0
  = coe d_sp'45''172'_70 (coe d_sp_150 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_1070 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1070 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_1072 :: T_Theory_82 -> () -> ()
d_spec'45''8712'_1072 = erased
-- Axiom.Set._.specProperty
d_specProperty_1074 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1074 = erased
-- Axiom.Set._.specification
d_specification_1076 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1076 v0 = coe d_specification_174 (coe v0)
-- Axiom.Set._.strictify
d_strictify_1078 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1078 v0 v1 v2 v3 v4
  = coe du_strictify_360 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_1080 :: T_Theory_82 -> () -> AgdaAny -> ()
d_strongly'45'finite_1080 = erased
-- Axiom.Set._.unions
d_unions_1082 ::
  T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1082 v0 = coe d_unions_184 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_1084 :: T_Theory_82 -> () -> AgdaAny -> ()
d_weakly'45'finite_1084 = erased
-- Axiom.Set._.∅
d_'8709'_1086 :: T_Theory_82 -> () -> AgdaAny
d_'8709'_1086 v0 v1 = coe du_'8709'_424 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1088 ::
  T_Theory_82 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1088 v0 v1
  = coe du_'8709''45'strongly'45'finite_426 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1090 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_1090 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_502 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_1092 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_1092 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_408 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_1094 ::
  T_Theory_82 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_1094 v0 v1 v2 v3
  = coe du_'8712''45'fromList_414 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_1096 :: T_Theory_82 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1096 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_1098 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_1098 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_388 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_1100 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_1100 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_568 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_1102 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1102 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_394 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_1104 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_1104 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_466 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_1106 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_1106 v0 v1 v2 v3
  = coe du_'8712''45'singleton_440 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_1108 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_1108 v0 v1 v2 v3
  = coe du_'8712''45'unions_422 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_1110 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_1110 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_670 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_1112 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1112 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1112 v5
du_'8801''8594''8712'_1112 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1112 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_1114 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1114 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_586 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1116 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1116 ~v0
  = du_'8838''45'weakly'45'finite_1116
du_'8838''45'weakly'45'finite_1116 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1116 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_322 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_1118 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1118 v0 = coe du_'10100'_'10101'_434 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__1122 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1122 v0 v1 v2 v3 v4
  = coe du__'8745'__686 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_1124 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1124 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_1126 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1126 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_694 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryⁱ.theory
d_theory_1134 :: T_Theory'8305'_1000 -> T_Theory_82
d_theory_1134 v0
  = case coe v0 of
      C_Theory'8305''46'constructor_102489 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryⁱ._._Preservesˢ_
d__Preserves'738'__1138 ::
  T_Theory'8305'_1000 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1138 = erased
-- Axiom.Set.Theoryⁱ._._Preservesˢ₂_
d__Preserves'738''8322'__1140 ::
  T_Theory'8305'_1000 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1140 = erased
-- Axiom.Set.Theoryⁱ._._∈_
d__'8712'__1142 ::
  T_Theory'8305'_1000 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1142 = erased
-- Axiom.Set.Theoryⁱ._._∉_
d__'8713'__1144 ::
  T_Theory'8305'_1000 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1144 = erased
-- Axiom.Set.Theoryⁱ._._∪_
d__'8746'__1146 ::
  T_Theory'8305'_1000 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1146 v0 v1 v2 v3
  = coe du__'8746'__662 (coe d_theory_1134 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._._≡ᵉ_
d__'8801''7497'__1148 ::
  T_Theory'8305'_1000 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1148 = erased
-- Axiom.Set.Theoryⁱ._._≡ᵉ'_
d__'8801''7497'''__1150 ::
  T_Theory'8305'_1000 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1150 = erased
-- Axiom.Set.Theoryⁱ._._⊆_
d__'8838'__1152 ::
  T_Theory'8305'_1000 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1152 = erased
-- Axiom.Set.Theoryⁱ._.All
d_All_1154 ::
  T_Theory'8305'_1000 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1154 = erased
-- Axiom.Set.Theoryⁱ._.Any
d_Any_1156 ::
  T_Theory'8305'_1000 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1156 = erased
-- Axiom.Set.Theoryⁱ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1158 ::
  T_Theory'8305'_1000 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1158 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1158
du_DecEq'8743'finite'8658'strongly'45'finite_1158 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1158 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_300 v1 v3
-- Axiom.Set.Theoryⁱ._.FinSet
d_FinSet_1160 :: T_Theory'8305'_1000 -> () -> ()
d_FinSet_1160 = erased
-- Axiom.Set.Theoryⁱ._.Set
d_Set_1162 :: T_Theory'8305'_1000 -> () -> ()
d_Set_1162 = erased
-- Axiom.Set.Theoryⁱ._.binary-unions
d_binary'45'unions_1164 ::
  T_Theory'8305'_1000 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1164 v0 v1 v2 v3
  = coe du_binary'45'unions_626 (coe d_theory_1134 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.card
d_card_1166 ::
  T_Theory'8305'_1000 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1166 ~v0 = du_card_1166
du_card_1166 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1166 v0 v1 = coe du_card_318 v1
-- Axiom.Set.Theoryⁱ._.card-∅
d_card'45''8709'_1168 ::
  T_Theory'8305'_1000 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1168 = erased
-- Axiom.Set.Theoryⁱ._.concatMapˢ
d_concatMap'738'_1170 ::
  T_Theory'8305'_1000 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1170 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_490 (coe d_theory_1134 (coe v0)) v3 v4
-- Axiom.Set.Theoryⁱ._.disjoint
d_disjoint_1172 ::
  T_Theory'8305'_1000 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1172 = erased
-- Axiom.Set.Theoryⁱ._.filter
d_filter_1174 ::
  T_Theory'8305'_1000 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1174 v0 v1 v2
  = coe du_filter_402 (coe d_theory_1134 (coe v0))
-- Axiom.Set.Theoryⁱ._.finite
d_finite_1176 :: T_Theory'8305'_1000 -> () -> AgdaAny -> ()
d_finite_1176 = erased
-- Axiom.Set.Theoryⁱ._.fromList
d_fromList_1178 ::
  T_Theory'8305'_1000 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1178 v0 v1 v2
  = coe du_fromList_410 (coe d_theory_1134 (coe v0)) v2
-- Axiom.Set.Theoryⁱ._.isMaximal
d_isMaximal_1180 :: T_Theory'8305'_1000 -> () -> AgdaAny -> ()
d_isMaximal_1180 = erased
-- Axiom.Set.Theoryⁱ._.listing
d_listing_1182 ::
  T_Theory'8305'_1000 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1182 v0 = coe d_listing_204 (coe d_theory_1134 (coe v0))
-- Axiom.Set.Theoryⁱ._.map
d_map_1184 ::
  T_Theory'8305'_1000 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1184 v0 v1 v2 = coe du_map_380 (coe d_theory_1134 (coe v0))
-- Axiom.Set.Theoryⁱ._.mapPartial
d_mapPartial_1186 ::
  T_Theory'8305'_1000 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1186 v0 v1 v2 v3
  = coe du_mapPartial_558 (coe d_theory_1134 (coe v0)) v3
-- Axiom.Set.Theoryⁱ._.maximal-unique
d_maximal'45'unique_1188 ::
  T_Theory'8305'_1000 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1188 ~v0 = du_maximal'45'unique_1188
du_maximal'45'unique_1188 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1188 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_342 v3 v4
-- Axiom.Set.Theoryⁱ._.maximal-⊆
d_maximal'45''8838'_1190 ::
  T_Theory'8305'_1000 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1190 ~v0 = du_maximal'45''8838'_1190
du_maximal'45''8838'_1190 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1190 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_338 v3 v4
-- Axiom.Set.Theoryⁱ._.partialToSet
d_partialToSet_1192 ::
  T_Theory'8305'_1000 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1192 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_454 (coe d_theory_1134 (coe v0)) v4 v5
-- Axiom.Set.Theoryⁱ._.replacement
d_replacement_1194 ::
  T_Theory'8305'_1000 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1194 v0
  = coe d_replacement_196 (coe d_theory_1134 (coe v0))
-- Axiom.Set.Theoryⁱ._.singleton
d_singleton_1196 :: T_Theory'8305'_1000 -> () -> AgdaAny -> AgdaAny
d_singleton_1196 v0 v1 v2
  = coe du_singleton_430 (coe d_theory_1134 (coe v0)) v2
-- Axiom.Set.Theoryⁱ._.sp
d_sp_1198 :: T_Theory'8305'_1000 -> T_SpecProperty_48
d_sp_1198 v0 = coe d_sp_150 (coe d_theory_1134 (coe v0))
-- Axiom.Set.Theoryⁱ._.sp-¬
d_sp'45''172'_1200 ::
  T_Theory'8305'_1000 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1200 v0
  = coe d_sp'45''172'_70 (coe d_sp_150 (coe d_theory_1134 (coe v0)))
-- Axiom.Set.Theoryⁱ._.sp-∘
d_sp'45''8728'_1202 ::
  T_Theory'8305'_1000 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1202 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe d_theory_1134 (coe v0)))
-- Axiom.Set.Theoryⁱ._.spec-∈
d_spec'45''8712'_1204 :: T_Theory'8305'_1000 -> () -> ()
d_spec'45''8712'_1204 = erased
-- Axiom.Set.Theoryⁱ._.specProperty
d_specProperty_1206 ::
  T_Theory'8305'_1000 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1206 = erased
-- Axiom.Set.Theoryⁱ._.specification
d_specification_1208 ::
  T_Theory'8305'_1000 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1208 v0
  = coe d_specification_174 (coe d_theory_1134 (coe v0))
-- Axiom.Set.Theoryⁱ._.strictify
d_strictify_1210 ::
  T_Theory'8305'_1000 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1210 v0 v1 v2 v3 v4
  = coe du_strictify_360 (coe d_theory_1134 (coe v0)) v3 v4
-- Axiom.Set.Theoryⁱ._.strongly-finite
d_strongly'45'finite_1212 ::
  T_Theory'8305'_1000 -> () -> AgdaAny -> ()
d_strongly'45'finite_1212 = erased
-- Axiom.Set.Theoryⁱ._.unions
d_unions_1214 ::
  T_Theory'8305'_1000 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1214 v0 = coe d_unions_184 (coe d_theory_1134 (coe v0))
-- Axiom.Set.Theoryⁱ._.weakly-finite
d_weakly'45'finite_1216 ::
  T_Theory'8305'_1000 -> () -> AgdaAny -> ()
d_weakly'45'finite_1216 = erased
-- Axiom.Set.Theoryⁱ._.∅
d_'8709'_1218 :: T_Theory'8305'_1000 -> () -> AgdaAny
d_'8709'_1218 v0 v1
  = coe du_'8709'_424 (coe d_theory_1134 (coe v0))
-- Axiom.Set.Theoryⁱ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1220 ::
  T_Theory'8305'_1000 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1220 v0 v1
  = coe
      du_'8709''45'strongly'45'finite_426 (coe d_theory_1134 (coe v0))
-- Axiom.Set.Theoryⁱ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1222 ::
  T_Theory'8305'_1000 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_1222 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_502 (coe d_theory_1134 (coe v0)) v3 v4
      v5
-- Axiom.Set.Theoryⁱ._.∈-filter
d_'8712''45'filter_1224 ::
  T_Theory'8305'_1000 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_1224 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_408 (coe d_theory_1134 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-fromList
d_'8712''45'fromList_1226 ::
  T_Theory'8305'_1000 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_1226 v0 v1 v2 v3
  = coe du_'8712''45'fromList_414 (coe d_theory_1134 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-irrelevant
d_'8712''45'irrelevant_1228 ::
  T_Theory'8305'_1000 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1228 = erased
-- Axiom.Set.Theoryⁱ._.∈-map
d_'8712''45'map_1230 ::
  T_Theory'8305'_1000 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_1230 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_388 (coe d_theory_1134 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-mapPartial
d_'8712''45'mapPartial_1232 ::
  T_Theory'8305'_1000 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_1232 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'mapPartial_568 (coe d_theory_1134 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-map′
d_'8712''45'map'8242'_1234 ::
  T_Theory'8305'_1000 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1234 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_394 (coe d_theory_1134 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryⁱ._.∈-partialToSet
d_'8712''45'partialToSet_1236 ::
  T_Theory'8305'_1000 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_1236 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_466 (coe d_theory_1134 (coe v0)) v5
-- Axiom.Set.Theoryⁱ._.∈-singleton
d_'8712''45'singleton_1238 ::
  T_Theory'8305'_1000 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_1238 v0 v1 v2 v3
  = coe du_'8712''45'singleton_440 (coe d_theory_1134 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-unions
d_'8712''45'unions_1240 ::
  T_Theory'8305'_1000 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_1240 v0 v1 v2 v3
  = coe du_'8712''45'unions_422 (coe d_theory_1134 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-∪
d_'8712''45''8746'_1242 ::
  T_Theory'8305'_1000 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_1242 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_670 (coe d_theory_1134 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryⁱ._.≡→∈
d_'8801''8594''8712'_1244 ::
  T_Theory'8305'_1000 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1244 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1244 v5
du_'8801''8594''8712'_1244 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1244 v0 = coe v0
-- Axiom.Set.Theoryⁱ._.⊆-mapPartial
d_'8838''45'mapPartial_1246 ::
  T_Theory'8305'_1000 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1246 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_586 (coe d_theory_1134 (coe v0)) v3 v4 v5
      v6
-- Axiom.Set.Theoryⁱ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1248 ::
  T_Theory'8305'_1000 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1248 ~v0
  = du_'8838''45'weakly'45'finite_1248
du_'8838''45'weakly'45'finite_1248 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1248 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_322 v3 v4
-- Axiom.Set.Theoryⁱ._.❴_❵
d_'10100'_'10101'_1250 ::
  T_Theory'8305'_1000 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1250 v0
  = coe du_'10100'_'10101'_434 (coe d_theory_1134 (coe v0))
-- Axiom.Set.Theoryⁱ._.Intersection._∩_
d__'8745'__1254 ::
  T_Theory'8305'_1000 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1254 v0 v1 v2 v3 v4
  = coe du__'8745'__686 (coe d_theory_1134 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryⁱ._.Intersection.disjoint'
d_disjoint''_1256 ::
  T_Theory'8305'_1000 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1256 = erased
-- Axiom.Set.Theoryⁱ._.Intersection.∈-∩
d_'8712''45''8745'_1258 ::
  T_Theory'8305'_1000 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1258 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45''8745'_694 (coe d_theory_1134 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryⁱ.infinity
d_infinity_1264 ::
  T_Theory'8305'_1000 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infinity_1264 v0
  = case coe v0 of
      C_Theory'8305''46'constructor_102489 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ
d_Theory'7496'_1266 = ()
data T_Theory'7496'_1266
  = C_Theory'7496''46'constructor_106085 T_Theory_82
                                         (() ->
                                          MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
                                          AgdaAny -> AgdaAny)
                                         (() ->
                                          MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
                                          AgdaAny ->
                                          AgdaAny ->
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
                                         (() ->
                                          MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
                                          (AgdaAny -> ()) ->
                                          (AgdaAny ->
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
                                          AgdaAny ->
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
                                         (() ->
                                          MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
                                          (AgdaAny -> ()) ->
                                          (AgdaAny ->
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
                                          AgdaAny ->
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
-- Axiom.Set._._Preservesˢ_
d__Preserves'738'__1272 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1272 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__1274 ::
  T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1274 = erased
-- Axiom.Set._._∈_
d__'8712'__1276 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1276 = erased
-- Axiom.Set._._∉_
d__'8713'__1278 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1278 = erased
-- Axiom.Set._._∪_
d__'8746'__1280 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1280 v0 v1 v2 v3 = coe du__'8746'__662 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__1282 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1282 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__1284 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1284 = erased
-- Axiom.Set._._⊆_
d__'8838'__1286 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1286 = erased
-- Axiom.Set._.All
d_All_1288 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1288 = erased
-- Axiom.Set._.Any
d_Any_1290 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1290 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1292 ::
  T_Theory_82 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1292 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1292
du_DecEq'8743'finite'8658'strongly'45'finite_1292 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1292 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_300 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_1294 :: T_Theory_82 -> () -> ()
d_FinSet_1294 = erased
-- Axiom.Set._.Set
d_Set_1296 :: T_Theory_82 -> () -> ()
d_Set_1296 = erased
-- Axiom.Set._.binary-unions
d_binary'45'unions_1298 ::
  T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1298 v0 v1 v2 v3
  = coe du_binary'45'unions_626 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_1300 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1300 ~v0 = du_card_1300
du_card_1300 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1300 v0 v1 = coe du_card_318 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_1302 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1302 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_1304 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1304 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_490 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_1306 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1306 = erased
-- Axiom.Set._.filter
d_filter_1308 ::
  T_Theory_82 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1308 v0 v1 v2 = coe du_filter_402 (coe v0)
-- Axiom.Set._.finite
d_finite_1310 :: T_Theory_82 -> () -> AgdaAny -> ()
d_finite_1310 = erased
-- Axiom.Set._.fromList
d_fromList_1312 :: T_Theory_82 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1312 v0 v1 v2 = coe du_fromList_410 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_1314 :: T_Theory_82 -> () -> AgdaAny -> ()
d_isMaximal_1314 = erased
-- Axiom.Set._.listing
d_listing_1316 ::
  T_Theory_82 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1316 v0 = coe d_listing_204 (coe v0)
-- Axiom.Set._.map
d_map_1318 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1318 v0 v1 v2 = coe du_map_380 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_1320 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1320 v0 v1 v2 v3 = coe du_mapPartial_558 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_1322 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1322 ~v0 = du_maximal'45'unique_1322
du_maximal'45'unique_1322 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1322 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_342 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_1324 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1324 ~v0 = du_maximal'45''8838'_1324
du_maximal'45''8838'_1324 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1324 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_338 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_1326 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1326 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_454 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_1328 ::
  T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1328 v0 = coe d_replacement_196 (coe v0)
-- Axiom.Set._.singleton
d_singleton_1330 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_singleton_1330 v0 v1 v2 = coe du_singleton_430 (coe v0) v2
-- Axiom.Set._.sp
d_sp_1332 :: T_Theory_82 -> T_SpecProperty_48
d_sp_1332 v0 = coe d_sp_150 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_1334 ::
  T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1334 v0
  = coe d_sp'45''172'_70 (coe d_sp_150 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_1336 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1336 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_1338 :: T_Theory_82 -> () -> ()
d_spec'45''8712'_1338 = erased
-- Axiom.Set._.specProperty
d_specProperty_1340 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1340 = erased
-- Axiom.Set._.specification
d_specification_1342 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1342 v0 = coe d_specification_174 (coe v0)
-- Axiom.Set._.strictify
d_strictify_1344 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1344 v0 v1 v2 v3 v4
  = coe du_strictify_360 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_1346 :: T_Theory_82 -> () -> AgdaAny -> ()
d_strongly'45'finite_1346 = erased
-- Axiom.Set._.unions
d_unions_1348 ::
  T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1348 v0 = coe d_unions_184 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_1350 :: T_Theory_82 -> () -> AgdaAny -> ()
d_weakly'45'finite_1350 = erased
-- Axiom.Set._.∅
d_'8709'_1352 :: T_Theory_82 -> () -> AgdaAny
d_'8709'_1352 v0 v1 = coe du_'8709'_424 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1354 ::
  T_Theory_82 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1354 v0 v1
  = coe du_'8709''45'strongly'45'finite_426 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1356 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_1356 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_502 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_1358 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_1358 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_408 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_1360 ::
  T_Theory_82 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_1360 v0 v1 v2 v3
  = coe du_'8712''45'fromList_414 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_1362 :: T_Theory_82 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1362 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_1364 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_1364 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_388 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_1366 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_1366 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_568 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_1368 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1368 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_394 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_1370 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_1370 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_466 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_1372 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_1372 v0 v1 v2 v3
  = coe du_'8712''45'singleton_440 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_1374 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_1374 v0 v1 v2 v3
  = coe du_'8712''45'unions_422 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_1376 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_1376 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_670 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_1378 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1378 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1378 v5
du_'8801''8594''8712'_1378 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1378 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_1380 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1380 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_586 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1382 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1382 ~v0
  = du_'8838''45'weakly'45'finite_1382
du_'8838''45'weakly'45'finite_1382 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1382 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_322 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_1384 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1384 v0 = coe du_'10100'_'10101'_434 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__1388 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1388 v0 v1 v2 v3 v4
  = coe du__'8745'__686 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_1390 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1390 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_1392 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1392 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_694 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryᵈ.th
d_th_1414 :: T_Theory'7496'_1266 -> T_Theory_82
d_th_1414 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_106085 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._._Preservesˢ_
d__Preserves'738'__1418 ::
  T_Theory'7496'_1266 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1418 = erased
-- Axiom.Set.Theoryᵈ._._Preservesˢ₂_
d__Preserves'738''8322'__1420 ::
  T_Theory'7496'_1266 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1420 = erased
-- Axiom.Set.Theoryᵈ._._∈_
d__'8712'__1422 ::
  T_Theory'7496'_1266 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1422 = erased
-- Axiom.Set.Theoryᵈ._._∉_
d__'8713'__1424 ::
  T_Theory'7496'_1266 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1424 = erased
-- Axiom.Set.Theoryᵈ._._∪_
d__'8746'__1426 ::
  T_Theory'7496'_1266 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1426 v0 v1 v2 v3
  = coe du__'8746'__662 (coe d_th_1414 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._._≡ᵉ_
d__'8801''7497'__1428 ::
  T_Theory'7496'_1266 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1428 = erased
-- Axiom.Set.Theoryᵈ._._≡ᵉ'_
d__'8801''7497'''__1430 ::
  T_Theory'7496'_1266 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1430 = erased
-- Axiom.Set.Theoryᵈ._._⊆_
d__'8838'__1432 ::
  T_Theory'7496'_1266 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1432 = erased
-- Axiom.Set.Theoryᵈ._.All
d_All_1434 ::
  T_Theory'7496'_1266 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1434 = erased
-- Axiom.Set.Theoryᵈ._.Any
d_Any_1436 ::
  T_Theory'7496'_1266 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1436 = erased
-- Axiom.Set.Theoryᵈ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1438 ::
  T_Theory'7496'_1266 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1438 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1438
du_DecEq'8743'finite'8658'strongly'45'finite_1438 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1438 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_300 v1 v3
-- Axiom.Set.Theoryᵈ._.FinSet
d_FinSet_1440 :: T_Theory'7496'_1266 -> () -> ()
d_FinSet_1440 = erased
-- Axiom.Set.Theoryᵈ._.Set
d_Set_1442 :: T_Theory'7496'_1266 -> () -> ()
d_Set_1442 = erased
-- Axiom.Set.Theoryᵈ._.binary-unions
d_binary'45'unions_1444 ::
  T_Theory'7496'_1266 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1444 v0 v1 v2 v3
  = coe du_binary'45'unions_626 (coe d_th_1414 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.card
d_card_1446 ::
  T_Theory'7496'_1266 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1446 ~v0 = du_card_1446
du_card_1446 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1446 v0 v1 = coe du_card_318 v1
-- Axiom.Set.Theoryᵈ._.card-∅
d_card'45''8709'_1448 ::
  T_Theory'7496'_1266 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1448 = erased
-- Axiom.Set.Theoryᵈ._.concatMapˢ
d_concatMap'738'_1450 ::
  T_Theory'7496'_1266 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1450 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_490 (coe d_th_1414 (coe v0)) v3 v4
-- Axiom.Set.Theoryᵈ._.disjoint
d_disjoint_1452 ::
  T_Theory'7496'_1266 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1452 = erased
-- Axiom.Set.Theoryᵈ._.filter
d_filter_1454 ::
  T_Theory'7496'_1266 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1454 v0 v1 v2 = coe du_filter_402 (coe d_th_1414 (coe v0))
-- Axiom.Set.Theoryᵈ._.finite
d_finite_1456 :: T_Theory'7496'_1266 -> () -> AgdaAny -> ()
d_finite_1456 = erased
-- Axiom.Set.Theoryᵈ._.fromList
d_fromList_1458 ::
  T_Theory'7496'_1266 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1458 v0 v1 v2
  = coe du_fromList_410 (coe d_th_1414 (coe v0)) v2
-- Axiom.Set.Theoryᵈ._.isMaximal
d_isMaximal_1460 :: T_Theory'7496'_1266 -> () -> AgdaAny -> ()
d_isMaximal_1460 = erased
-- Axiom.Set.Theoryᵈ._.listing
d_listing_1462 ::
  T_Theory'7496'_1266 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1462 v0 = coe d_listing_204 (coe d_th_1414 (coe v0))
-- Axiom.Set.Theoryᵈ._.map
d_map_1464 ::
  T_Theory'7496'_1266 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1464 v0 v1 v2 = coe du_map_380 (coe d_th_1414 (coe v0))
-- Axiom.Set.Theoryᵈ._.mapPartial
d_mapPartial_1466 ::
  T_Theory'7496'_1266 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1466 v0 v1 v2 v3
  = coe du_mapPartial_558 (coe d_th_1414 (coe v0)) v3
-- Axiom.Set.Theoryᵈ._.maximal-unique
d_maximal'45'unique_1468 ::
  T_Theory'7496'_1266 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1468 ~v0 = du_maximal'45'unique_1468
du_maximal'45'unique_1468 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1468 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_342 v3 v4
-- Axiom.Set.Theoryᵈ._.maximal-⊆
d_maximal'45''8838'_1470 ::
  T_Theory'7496'_1266 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1470 ~v0 = du_maximal'45''8838'_1470
du_maximal'45''8838'_1470 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1470 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_338 v3 v4
-- Axiom.Set.Theoryᵈ._.partialToSet
d_partialToSet_1472 ::
  T_Theory'7496'_1266 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1472 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_454 (coe d_th_1414 (coe v0)) v4 v5
-- Axiom.Set.Theoryᵈ._.replacement
d_replacement_1474 ::
  T_Theory'7496'_1266 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1474 v0
  = coe d_replacement_196 (coe d_th_1414 (coe v0))
-- Axiom.Set.Theoryᵈ._.singleton
d_singleton_1476 :: T_Theory'7496'_1266 -> () -> AgdaAny -> AgdaAny
d_singleton_1476 v0 v1 v2
  = coe du_singleton_430 (coe d_th_1414 (coe v0)) v2
-- Axiom.Set.Theoryᵈ._.sp
d_sp_1478 :: T_Theory'7496'_1266 -> T_SpecProperty_48
d_sp_1478 v0 = coe d_sp_150 (coe d_th_1414 (coe v0))
-- Axiom.Set.Theoryᵈ._.sp-¬
d_sp'45''172'_1480 ::
  T_Theory'7496'_1266 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1480 v0
  = coe d_sp'45''172'_70 (coe d_sp_150 (coe d_th_1414 (coe v0)))
-- Axiom.Set.Theoryᵈ._.sp-∘
d_sp'45''8728'_1482 ::
  T_Theory'7496'_1266 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1482 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe d_th_1414 (coe v0)))
-- Axiom.Set.Theoryᵈ._.spec-∈
d_spec'45''8712'_1484 :: T_Theory'7496'_1266 -> () -> ()
d_spec'45''8712'_1484 = erased
-- Axiom.Set.Theoryᵈ._.specProperty
d_specProperty_1486 ::
  T_Theory'7496'_1266 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1486 = erased
-- Axiom.Set.Theoryᵈ._.specification
d_specification_1488 ::
  T_Theory'7496'_1266 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1488 v0
  = coe d_specification_174 (coe d_th_1414 (coe v0))
-- Axiom.Set.Theoryᵈ._.strictify
d_strictify_1490 ::
  T_Theory'7496'_1266 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1490 v0 v1 v2 v3 v4
  = coe du_strictify_360 (coe d_th_1414 (coe v0)) v3 v4
-- Axiom.Set.Theoryᵈ._.strongly-finite
d_strongly'45'finite_1492 ::
  T_Theory'7496'_1266 -> () -> AgdaAny -> ()
d_strongly'45'finite_1492 = erased
-- Axiom.Set.Theoryᵈ._.unions
d_unions_1494 ::
  T_Theory'7496'_1266 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1494 v0 = coe d_unions_184 (coe d_th_1414 (coe v0))
-- Axiom.Set.Theoryᵈ._.weakly-finite
d_weakly'45'finite_1496 ::
  T_Theory'7496'_1266 -> () -> AgdaAny -> ()
d_weakly'45'finite_1496 = erased
-- Axiom.Set.Theoryᵈ._.∅
d_'8709'_1498 :: T_Theory'7496'_1266 -> () -> AgdaAny
d_'8709'_1498 v0 v1 = coe du_'8709'_424 (coe d_th_1414 (coe v0))
-- Axiom.Set.Theoryᵈ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1500 ::
  T_Theory'7496'_1266 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1500 v0 v1
  = coe du_'8709''45'strongly'45'finite_426 (coe d_th_1414 (coe v0))
-- Axiom.Set.Theoryᵈ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1502 ::
  T_Theory'7496'_1266 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_1502 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_502 (coe d_th_1414 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-filter
d_'8712''45'filter_1504 ::
  T_Theory'7496'_1266 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_1504 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_408 (coe d_th_1414 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-fromList
d_'8712''45'fromList_1506 ::
  T_Theory'7496'_1266 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_1506 v0 v1 v2 v3
  = coe du_'8712''45'fromList_414 (coe d_th_1414 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-irrelevant
d_'8712''45'irrelevant_1508 ::
  T_Theory'7496'_1266 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1508 = erased
-- Axiom.Set.Theoryᵈ._.∈-map
d_'8712''45'map_1510 ::
  T_Theory'7496'_1266 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_1510 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_388 (coe d_th_1414 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-mapPartial
d_'8712''45'mapPartial_1512 ::
  T_Theory'7496'_1266 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_1512 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_568 (coe d_th_1414 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-map′
d_'8712''45'map'8242'_1514 ::
  T_Theory'7496'_1266 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1514 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_394 (coe d_th_1414 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᵈ._.∈-partialToSet
d_'8712''45'partialToSet_1516 ::
  T_Theory'7496'_1266 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_1516 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_466 (coe d_th_1414 (coe v0)) v5
-- Axiom.Set.Theoryᵈ._.∈-singleton
d_'8712''45'singleton_1518 ::
  T_Theory'7496'_1266 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_1518 v0 v1 v2 v3
  = coe du_'8712''45'singleton_440 (coe d_th_1414 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-unions
d_'8712''45'unions_1520 ::
  T_Theory'7496'_1266 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_1520 v0 v1 v2 v3
  = coe du_'8712''45'unions_422 (coe d_th_1414 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-∪
d_'8712''45''8746'_1522 ::
  T_Theory'7496'_1266 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_1522 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_670 (coe d_th_1414 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᵈ._.≡→∈
d_'8801''8594''8712'_1524 ::
  T_Theory'7496'_1266 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1524 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1524 v5
du_'8801''8594''8712'_1524 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1524 v0 = coe v0
-- Axiom.Set.Theoryᵈ._.⊆-mapPartial
d_'8838''45'mapPartial_1526 ::
  T_Theory'7496'_1266 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1526 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_586 (coe d_th_1414 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᵈ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1528 ::
  T_Theory'7496'_1266 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1528 ~v0
  = du_'8838''45'weakly'45'finite_1528
du_'8838''45'weakly'45'finite_1528 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1528 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_322 v3 v4
-- Axiom.Set.Theoryᵈ._.❴_❵
d_'10100'_'10101'_1530 ::
  T_Theory'7496'_1266 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1530 v0
  = coe du_'10100'_'10101'_434 (coe d_th_1414 (coe v0))
-- Axiom.Set.Theoryᵈ._.Intersection._∩_
d__'8745'__1534 ::
  T_Theory'7496'_1266 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1534 v0 v1 v2 v3 v4
  = coe du__'8745'__686 (coe d_th_1414 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᵈ._.Intersection.disjoint'
d_disjoint''_1536 ::
  T_Theory'7496'_1266 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1536 = erased
-- Axiom.Set.Theoryᵈ._.Intersection.∈-∩
d_'8712''45''8745'_1538 ::
  T_Theory'7496'_1266 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1538 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_694 (coe d_th_1414 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryᵈ.∈-sp
d_'8712''45'sp_1540 ::
  T_Theory'7496'_1266 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
d_'8712''45'sp_1540 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_106085 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._∈?_
d__'8712''63'__1542 ::
  T_Theory'7496'_1266 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8712''63'__1542 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_106085 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ.all?
d_all'63'_1550 ::
  T_Theory'7496'_1266 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_all'63'_1550 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_106085 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ.any?
d_any'63'_1558 ::
  T_Theory'7496'_1266 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63'_1558 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_106085 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._._∈ᵇ_
d__'8712''7495'__1568 ::
  T_Theory'7496'_1266 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Bool
d__'8712''7495'__1568 v0 ~v1 v2 v3 v4
  = du__'8712''7495'__1568 v0 v2 v3 v4
du__'8712''7495'__1568 ::
  T_Theory'7496'_1266 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Bool
du__'8712''7495'__1568 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_106 ()
      erased (coe d__'8712''63'__1542 v0 erased v1 v2 v3)
-- Axiom.Set.Theoryᵈ._.Dec-∈
d_Dec'45''8712'_1574 ::
  T_Theory'7496'_1266 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8712'_1574 v0 ~v1 v2 v3 v4
  = du_Dec'45''8712'_1574 v0 v2 v3 v4
du_Dec'45''8712'_1574 ::
  T_Theory'7496'_1266 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45''8712'_1574 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
      (coe d__'8712''63'__1542 v0 erased v1) (coe v2) (coe v3)
-- Axiom.Set.Theoryᵈ._._.Dec-Allˢ
d_Dec'45'All'738'_1584 ::
  T_Theory'7496'_1266 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'All'738'_1584 v0 ~v1 v2 ~v3 v4 v5
  = du_Dec'45'All'738'_1584 v0 v2 v4 v5
du_Dec'45'All'738'_1584 ::
  T_Theory'7496'_1266 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'All'738'_1584 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
      (coe
         (\ v4 ->
            coe
              d_all'63'_1550 v0 erased v1 erased
              (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v2))
              v4))
      (coe v3)
-- Axiom.Set.Theoryᵈ._._.Dec-Anyˢ
d_Dec'45'Any'738'_1588 ::
  T_Theory'7496'_1266 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'Any'738'_1588 v0 ~v1 v2 ~v3 v4 v5
  = du_Dec'45'Any'738'_1588 v0 v2 v4 v5
du_Dec'45'Any'738'_1588 ::
  T_Theory'7496'_1266 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'Any'738'_1588 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
      (coe
         d_any'63'_1558 v0 erased v1 erased
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v2)))
      (coe v3)
-- Axiom.Set.Theoryᵈ._._.allᵇ
d_all'7495'_1600 ::
  T_Theory'7496'_1266 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
d_all'7495'_1600 v0 ~v1 v2 ~v3 v4 v5
  = du_all'7495'_1600 v0 v2 v4 v5
du_all'7495'_1600 ::
  T_Theory'7496'_1266 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
du_all'7495'_1600 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_106 ()
      erased (coe d_all'63'_1550 v0 erased v1 erased v2 v3)
-- Axiom.Set.Theoryᵈ._._.anyᵇ
d_any'7495'_1604 ::
  T_Theory'7496'_1266 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
d_any'7495'_1604 v0 ~v1 v2 ~v3 v4 v5
  = du_any'7495'_1604 v0 v2 v4 v5
du_any'7495'_1604 ::
  T_Theory'7496'_1266 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
du_any'7495'_1604 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_106 ()
      erased (coe d_any'63'_1558 v0 erased v1 erased v2 v3)
-- Axiom.Set.Theoryᵈ._.incl-set'
d_incl'45'set''_1620 ::
  T_Theory'7496'_1266 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set''_1620 v0 ~v1 v2 v3 v4
  = du_incl'45'set''_1620 v0 v2 v3 v4
du_incl'45'set''_1620 ::
  T_Theory'7496'_1266 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incl'45'set''_1620 v0 v1 v2 v3
  = let v4 = coe d__'8712''63'__1542 v0 erased v1 v3 v2 in
    coe
      (case coe v4 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
           -> if coe v5
                then case coe v6 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v7))
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v6) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Theoryᵈ._.incl-set
d_incl'45'set_1646 ::
  T_Theory'7496'_1266 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
d_incl'45'set_1646 v0 ~v1 v2 v3 = du_incl'45'set_1646 v0 v2 v3
du_incl'45'set_1646 ::
  T_Theory'7496'_1266 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
du_incl'45'set_1646 v0 v1 v2
  = coe
      du_mapPartial_558 (d_th_1414 (coe v0))
      (coe du_incl'45'set''_1620 (coe v0) (coe v1) (coe v2)) v2
-- Axiom.Set.Theoryᵈ._._.incl-set-proj₁⊆
d_incl'45'set'45'proj'8321''8838'_1656 ::
  T_Theory'7496'_1266 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_incl'45'set'45'proj'8321''8838'_1656 v0 ~v1 v2 v3 v4 v5
  = du_incl'45'set'45'proj'8321''8838'_1656 v0 v2 v3 v4 v5
du_incl'45'set'45'proj'8321''8838'_1656 ::
  T_Theory'7496'_1266 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_incl'45'set'45'proj'8321''8838'_1656 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 du_'8712''45'map_388 (coe d_th_1414 (coe v0))
                 (coe du_incl'45'set_1646 (coe v0) (coe v1) (coe v2))
                 (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                 (coe v3))
              v4 in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> case coe v6 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                  -> coe seq (coe v7) (coe v9)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Theoryᵈ._._.incl-set-proj₁⊇
d_incl'45'set'45'proj'8321''8839'_1668 ::
  T_Theory'7496'_1266 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_incl'45'set'45'proj'8321''8839'_1668 v0 ~v1 v2 v3 v4 v5
  = du_incl'45'set'45'proj'8321''8839'_1668 v0 v2 v3 v4 v5
du_incl'45'set'45'proj'8321''8839'_1668 ::
  T_Theory'7496'_1266 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_incl'45'set'45'proj'8321''8839'_1668 v0 v1 v2 v3 v4
  = let v5 = coe d__'8712''63'__1542 v0 erased v1 v3 v2 in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
           -> if coe v6
                then case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                         -> coe
                              MAlonzo.Code.Function.Bundles.d_to_1724
                              (coe
                                 du_'8712''45'map_388 (coe d_th_1414 (coe v0))
                                 (coe
                                    du_mapPartial_558 (d_th_1414 (coe v0))
                                    (coe du_incl'45'set''_1620 (coe v0) (coe v1) (coe v2)) v2)
                                 (coe (\ v9 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                 (coe v3))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v8))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                    (coe
                                       MAlonzo.Code.Function.Bundles.d_to_1724
                                       (coe
                                          du_'8712''45'mapPartial_568 (coe d_th_1414 (coe v0))
                                          (coe v2)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                             (coe v8))
                                          (coe du_incl'45'set''_1620 (coe v0) (coe v1) (coe v2)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                                             erased)))))
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v7)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Theoryᵈ._._._.helper
d_helper_1696 ::
  T_Theory'7496'_1266 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_helper_1696 = erased
-- Axiom.Set.Theoryᵈ._._.incl-set-proj₁
d_incl'45'set'45'proj'8321'_1706 ::
  T_Theory'7496'_1266 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set'45'proj'8321'_1706 v0 ~v1 v2 v3
  = du_incl'45'set'45'proj'8321'_1706 v0 v2 v3
du_incl'45'set'45'proj'8321'_1706 ::
  T_Theory'7496'_1266 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incl'45'set'45'proj'8321'_1706 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_incl'45'set'45'proj'8321''8838'_1656 (coe v0) (coe v1) (coe v2))
      (coe
         du_incl'45'set'45'proj'8321''8839'_1668 (coe v0) (coe v1) (coe v2))
