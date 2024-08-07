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
import qualified MAlonzo.Code.Function.Properties.Inverse
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
           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_68
           (coe v2 v3))
-- Axiom.Set.Theory
d_Theory_82 a0 = ()
data T_Theory_82
  = C_Theory'46'constructor_6887 T_SpecProperty_48
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
      C_Theory'46'constructor_6887 v3 v4 v5 v6 v7 -> coe v3
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
      C_Theory'46'constructor_6887 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.unions
d_unions_184 ::
  T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_184 v0
  = case coe v0 of
      C_Theory'46'constructor_6887 v3 v4 v5 v6 v7 -> coe v5
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
      C_Theory'46'constructor_6887 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.listing
d_listing_204 ::
  T_Theory_82 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_204 v0
  = case coe v0 of
      C_Theory'46'constructor_6887 v3 v4 v5 v6 v7 -> coe v7
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
                MAlonzo.Code.Data.List.Base.du_deduplicate_1000
                (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0))
                (coe v2))
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
                  MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_54
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
               MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_54
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
         MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_54
         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
         (coe
            (\ v4 ->
               coe
                 MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45''8801'_66
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
         MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_54
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
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    d_replacement_196 v0 erased erased
                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                    (coe du_mapPartial_558 v0 v2 v1))
                 v3)
              v4 in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> case coe v7 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                  -> let v10
                           = coe
                               MAlonzo.Code.Function.Bundles.du_to'8315'_920
                               (coe
                                  MAlonzo.Code.Function.Properties.Inverse.du_'8596''8658''8608'_644
                                  (coe
                                     MAlonzo.Code.Function.Bundles.du_mk'8596'_2348
                                     (coe (\ v10 -> v10)) (coe (\ v10 -> v10))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe (\ v10 v11 v12 -> v12)) (coe (\ v10 v11 v12 -> v12)))))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe
                                     MAlonzo.Code.Function.Bundles.d_from_1726
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                        (\ v10 v11 v12 ->
                                           coe
                                             MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                             (coe
                                                MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                        erased erased erased
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                           (\ v10 ->
                                              coe
                                                MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                                (coe
                                                   MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                           erased)
                                        (coe
                                           du_'8712''45'concatMap'738'_502 (coe v0) (coe v1)
                                           (coe v6) (coe du_partialToSet_454 (coe v0) (coe v2))))
                                     v9)) in
                     coe
                       (let v11
                              = coe
                                  MAlonzo.Code.Function.Bundles.d_from_1726
                                  (coe
                                     MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                                     (coe
                                        MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                                     (coe
                                        MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                        (coe
                                           MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                     (coe du_'8712''45'partialToSet_466 (coe v0) (coe v6)))
                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Function.Bundles.d_from_1726
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                           (\ v11 v12 v13 ->
                                              coe
                                                MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                (coe
                                                   MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                           erased erased erased
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                              (\ v11 ->
                                                 coe
                                                   MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                                   (coe
                                                      MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                              erased)
                                           (coe
                                              du_'8712''45'concatMap'738'_502 (coe v0) (coe v1)
                                              (coe v6) (coe du_partialToSet_454 (coe v0) (coe v2))))
                                        v9)) in
                        coe
                          (case coe v11 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                               -> coe
                                    MAlonzo.Code.Function.Bundles.d_to_1724
                                    (coe
                                       du_'8712''45'map_388 (coe v0) (coe v1) (coe v2)
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v6)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v10)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                          (coe v12)))
                             _ -> MAlonzo.RTE.mazUnreachableError))
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
-- Axiom.Set.Theory.Intersection._＼_
d__'65340'__712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__712 ~v0 v1 ~v2 v3 v4 v5 = du__'65340'__712 v1 v3 v4 v5
du__'65340'__712 ::
  T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'65340'__712 v0 v1 v2 v3
  = coe
      du_filter_402 v0
      (coe
         d_sp'45''172'_70 (d_sp_150 (coe v0)) erased erased (coe v1 v3))
      v2
-- Axiom.Set.Theory.All
d_All_718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_718 = erased
-- Axiom.Set.Theory.Any
d_Any_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_726 = erased
-- Axiom.Set.Theoryᶠ
d_Theory'7584'_734 = ()
data T_Theory'7584'_734
  = C_Theory'7584''46'constructor_99503 T_Theory_82
                                        (() -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Axiom.Set._._Preservesˢ_
d__Preserves'738'__740 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__740 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__742 ::
  T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__742 = erased
-- Axiom.Set._._∈_
d__'8712'__744 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__744 = erased
-- Axiom.Set._._∉_
d__'8713'__746 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__746 = erased
-- Axiom.Set._._∪_
d__'8746'__748 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__748 v0 v1 v2 v3 = coe du__'8746'__662 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__750 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__750 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__752 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__752 = erased
-- Axiom.Set._._⊆_
d__'8838'__754 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__754 = erased
-- Axiom.Set._.All
d_All_756 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_756 = erased
-- Axiom.Set._.Any
d_Any_758 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_758 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_760 ::
  T_Theory_82 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_760 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_760
du_DecEq'8743'finite'8658'strongly'45'finite_760 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_760 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_300 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_762 :: T_Theory_82 -> () -> ()
d_FinSet_762 = erased
-- Axiom.Set._.Set
d_Set_764 :: T_Theory_82 -> () -> ()
d_Set_764 = erased
-- Axiom.Set._.binary-unions
d_binary'45'unions_766 ::
  T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_766 v0 v1 v2 v3
  = coe du_binary'45'unions_626 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_768 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_768 ~v0 = du_card_768
du_card_768 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_768 v0 v1 = coe du_card_318 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_770 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_770 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_772 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_772 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_490 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_774 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_774 = erased
-- Axiom.Set._.filter
d_filter_776 ::
  T_Theory_82 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_776 v0 v1 v2 = coe du_filter_402 (coe v0)
-- Axiom.Set._.finite
d_finite_778 :: T_Theory_82 -> () -> AgdaAny -> ()
d_finite_778 = erased
-- Axiom.Set._.fromList
d_fromList_780 :: T_Theory_82 -> () -> [AgdaAny] -> AgdaAny
d_fromList_780 v0 v1 v2 = coe du_fromList_410 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_782 :: T_Theory_82 -> () -> AgdaAny -> ()
d_isMaximal_782 = erased
-- Axiom.Set._.listing
d_listing_784 ::
  T_Theory_82 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_784 v0 = coe d_listing_204 (coe v0)
-- Axiom.Set._.map
d_map_786 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_786 v0 v1 v2 = coe du_map_380 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_788 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_788 v0 v1 v2 v3 = coe du_mapPartial_558 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_790 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_790 ~v0 = du_maximal'45'unique_790
du_maximal'45'unique_790 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_790 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_342 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_792 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_792 ~v0 = du_maximal'45''8838'_792
du_maximal'45''8838'_792 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_792 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_338 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_794 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_794 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_454 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_796 ::
  T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_796 v0 = coe d_replacement_196 (coe v0)
-- Axiom.Set._.singleton
d_singleton_798 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_singleton_798 v0 v1 v2 = coe du_singleton_430 (coe v0) v2
-- Axiom.Set._.sp
d_sp_800 :: T_Theory_82 -> T_SpecProperty_48
d_sp_800 v0 = coe d_sp_150 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_802 ::
  T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_802 v0 = coe d_sp'45''172'_70 (coe d_sp_150 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_804 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_804 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_806 :: T_Theory_82 -> () -> ()
d_spec'45''8712'_806 = erased
-- Axiom.Set._.specProperty
d_specProperty_808 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_808 = erased
-- Axiom.Set._.specification
d_specification_810 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_810 v0 = coe d_specification_174 (coe v0)
-- Axiom.Set._.strictify
d_strictify_812 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_812 v0 v1 v2 v3 v4
  = coe du_strictify_360 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_814 :: T_Theory_82 -> () -> AgdaAny -> ()
d_strongly'45'finite_814 = erased
-- Axiom.Set._.unions
d_unions_816 ::
  T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_816 v0 = coe d_unions_184 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_818 :: T_Theory_82 -> () -> AgdaAny -> ()
d_weakly'45'finite_818 = erased
-- Axiom.Set._.∅
d_'8709'_820 :: T_Theory_82 -> () -> AgdaAny
d_'8709'_820 v0 v1 = coe du_'8709'_424 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_822 ::
  T_Theory_82 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_822 v0 v1
  = coe du_'8709''45'strongly'45'finite_426 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_824 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_824 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_502 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_826 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_826 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_408 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_828 ::
  T_Theory_82 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_828 v0 v1 v2 v3
  = coe du_'8712''45'fromList_414 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_830 :: T_Theory_82 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_830 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_832 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_832 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_388 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_834 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_834 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_568 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_836 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_836 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_394 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_838 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_838 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_466 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_840 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_840 v0 v1 v2 v3
  = coe du_'8712''45'singleton_440 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_842 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_842 v0 v1 v2 v3
  = coe du_'8712''45'unions_422 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_844 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_844 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_670 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_846 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_846 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_846 v5
du_'8801''8594''8712'_846 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_846 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_848 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_848 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_586 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_850 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_850 ~v0
  = du_'8838''45'weakly'45'finite_850
du_'8838''45'weakly'45'finite_850 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_850 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_322 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_852 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_852 v0 = coe du_'10100'_'10101'_434 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__856 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__856 v0 v1 v2 v3 v4
  = coe du__'8745'__686 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection._＼_
d__'65340'__858 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__858 v0 v1 v2 v3 v4
  = coe du__'65340'__712 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_860 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_860 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_862 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_862 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_694 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryᶠ.theory
d_theory_868 :: T_Theory'7584'_734 -> T_Theory_82
d_theory_868 v0
  = case coe v0 of
      C_Theory'7584''46'constructor_99503 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᶠ._._Preservesˢ_
d__Preserves'738'__872 ::
  T_Theory'7584'_734 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__872 = erased
-- Axiom.Set.Theoryᶠ._._Preservesˢ₂_
d__Preserves'738''8322'__874 ::
  T_Theory'7584'_734 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__874 = erased
-- Axiom.Set.Theoryᶠ._._∈_
d__'8712'__876 ::
  T_Theory'7584'_734 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__876 = erased
-- Axiom.Set.Theoryᶠ._._∉_
d__'8713'__878 ::
  T_Theory'7584'_734 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__878 = erased
-- Axiom.Set.Theoryᶠ._._∪_
d__'8746'__880 ::
  T_Theory'7584'_734 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__880 v0 v1 v2 v3
  = coe du__'8746'__662 (coe d_theory_868 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._._≡ᵉ_
d__'8801''7497'__882 ::
  T_Theory'7584'_734 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__882 = erased
-- Axiom.Set.Theoryᶠ._._≡ᵉ'_
d__'8801''7497'''__884 ::
  T_Theory'7584'_734 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__884 = erased
-- Axiom.Set.Theoryᶠ._._⊆_
d__'8838'__886 ::
  T_Theory'7584'_734 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__886 = erased
-- Axiom.Set.Theoryᶠ._.All
d_All_888 ::
  T_Theory'7584'_734 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_888 = erased
-- Axiom.Set.Theoryᶠ._.Any
d_Any_890 ::
  T_Theory'7584'_734 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_890 = erased
-- Axiom.Set.Theoryᶠ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_892 ::
  T_Theory'7584'_734 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_892 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_892
du_DecEq'8743'finite'8658'strongly'45'finite_892 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_892 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_300 v1 v3
-- Axiom.Set.Theoryᶠ._.FinSet
d_FinSet_894 :: T_Theory'7584'_734 -> () -> ()
d_FinSet_894 = erased
-- Axiom.Set.Theoryᶠ._.Set
d_Set_896 :: T_Theory'7584'_734 -> () -> ()
d_Set_896 = erased
-- Axiom.Set.Theoryᶠ._.binary-unions
d_binary'45'unions_898 ::
  T_Theory'7584'_734 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_898 v0 v1 v2 v3
  = coe du_binary'45'unions_626 (coe d_theory_868 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.card
d_card_900 ::
  T_Theory'7584'_734 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_900 ~v0 = du_card_900
du_card_900 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_900 v0 v1 = coe du_card_318 v1
-- Axiom.Set.Theoryᶠ._.card-∅
d_card'45''8709'_902 ::
  T_Theory'7584'_734 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_902 = erased
-- Axiom.Set.Theoryᶠ._.concatMapˢ
d_concatMap'738'_904 ::
  T_Theory'7584'_734 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_904 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_490 (coe d_theory_868 (coe v0)) v3 v4
-- Axiom.Set.Theoryᶠ._.disjoint
d_disjoint_906 ::
  T_Theory'7584'_734 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_906 = erased
-- Axiom.Set.Theoryᶠ._.filter
d_filter_908 ::
  T_Theory'7584'_734 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_908 v0 v1 v2
  = coe du_filter_402 (coe d_theory_868 (coe v0))
-- Axiom.Set.Theoryᶠ._.finite
d_finite_910 :: T_Theory'7584'_734 -> () -> AgdaAny -> ()
d_finite_910 = erased
-- Axiom.Set.Theoryᶠ._.fromList
d_fromList_912 :: T_Theory'7584'_734 -> () -> [AgdaAny] -> AgdaAny
d_fromList_912 v0 v1 v2
  = coe du_fromList_410 (coe d_theory_868 (coe v0)) v2
-- Axiom.Set.Theoryᶠ._.isMaximal
d_isMaximal_914 :: T_Theory'7584'_734 -> () -> AgdaAny -> ()
d_isMaximal_914 = erased
-- Axiom.Set.Theoryᶠ._.listing
d_listing_916 ::
  T_Theory'7584'_734 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_916 v0 = coe d_listing_204 (coe d_theory_868 (coe v0))
-- Axiom.Set.Theoryᶠ._.map
d_map_918 ::
  T_Theory'7584'_734 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_918 v0 v1 v2 = coe du_map_380 (coe d_theory_868 (coe v0))
-- Axiom.Set.Theoryᶠ._.mapPartial
d_mapPartial_920 ::
  T_Theory'7584'_734 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_920 v0 v1 v2 v3
  = coe du_mapPartial_558 (coe d_theory_868 (coe v0)) v3
-- Axiom.Set.Theoryᶠ._.maximal-unique
d_maximal'45'unique_922 ::
  T_Theory'7584'_734 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_922 ~v0 = du_maximal'45'unique_922
du_maximal'45'unique_922 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_922 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_342 v3 v4
-- Axiom.Set.Theoryᶠ._.maximal-⊆
d_maximal'45''8838'_924 ::
  T_Theory'7584'_734 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_924 ~v0 = du_maximal'45''8838'_924
du_maximal'45''8838'_924 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_924 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_338 v3 v4
-- Axiom.Set.Theoryᶠ._.partialToSet
d_partialToSet_926 ::
  T_Theory'7584'_734 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_926 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_454 (coe d_theory_868 (coe v0)) v4 v5
-- Axiom.Set.Theoryᶠ._.replacement
d_replacement_928 ::
  T_Theory'7584'_734 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_928 v0
  = coe d_replacement_196 (coe d_theory_868 (coe v0))
-- Axiom.Set.Theoryᶠ._.singleton
d_singleton_930 :: T_Theory'7584'_734 -> () -> AgdaAny -> AgdaAny
d_singleton_930 v0 v1 v2
  = coe du_singleton_430 (coe d_theory_868 (coe v0)) v2
-- Axiom.Set.Theoryᶠ._.sp
d_sp_932 :: T_Theory'7584'_734 -> T_SpecProperty_48
d_sp_932 v0 = coe d_sp_150 (coe d_theory_868 (coe v0))
-- Axiom.Set.Theoryᶠ._.sp-¬
d_sp'45''172'_934 ::
  T_Theory'7584'_734 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_934 v0
  = coe d_sp'45''172'_70 (coe d_sp_150 (coe d_theory_868 (coe v0)))
-- Axiom.Set.Theoryᶠ._.sp-∘
d_sp'45''8728'_936 ::
  T_Theory'7584'_734 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_936 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe d_theory_868 (coe v0)))
-- Axiom.Set.Theoryᶠ._.spec-∈
d_spec'45''8712'_938 :: T_Theory'7584'_734 -> () -> ()
d_spec'45''8712'_938 = erased
-- Axiom.Set.Theoryᶠ._.specProperty
d_specProperty_940 ::
  T_Theory'7584'_734 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_940 = erased
-- Axiom.Set.Theoryᶠ._.specification
d_specification_942 ::
  T_Theory'7584'_734 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_942 v0
  = coe d_specification_174 (coe d_theory_868 (coe v0))
-- Axiom.Set.Theoryᶠ._.strictify
d_strictify_944 ::
  T_Theory'7584'_734 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_944 v0 v1 v2 v3 v4
  = coe du_strictify_360 (coe d_theory_868 (coe v0)) v3 v4
-- Axiom.Set.Theoryᶠ._.strongly-finite
d_strongly'45'finite_946 ::
  T_Theory'7584'_734 -> () -> AgdaAny -> ()
d_strongly'45'finite_946 = erased
-- Axiom.Set.Theoryᶠ._.unions
d_unions_948 ::
  T_Theory'7584'_734 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_948 v0 = coe d_unions_184 (coe d_theory_868 (coe v0))
-- Axiom.Set.Theoryᶠ._.weakly-finite
d_weakly'45'finite_950 :: T_Theory'7584'_734 -> () -> AgdaAny -> ()
d_weakly'45'finite_950 = erased
-- Axiom.Set.Theoryᶠ._.∅
d_'8709'_952 :: T_Theory'7584'_734 -> () -> AgdaAny
d_'8709'_952 v0 v1 = coe du_'8709'_424 (coe d_theory_868 (coe v0))
-- Axiom.Set.Theoryᶠ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_954 ::
  T_Theory'7584'_734 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_954 v0 v1
  = coe
      du_'8709''45'strongly'45'finite_426 (coe d_theory_868 (coe v0))
-- Axiom.Set.Theoryᶠ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_956 ::
  T_Theory'7584'_734 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_956 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_502 (coe d_theory_868 (coe v0)) v3 v4
      v5
-- Axiom.Set.Theoryᶠ._.∈-filter
d_'8712''45'filter_958 ::
  T_Theory'7584'_734 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_958 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_408 (coe d_theory_868 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-fromList
d_'8712''45'fromList_960 ::
  T_Theory'7584'_734 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_960 v0 v1 v2 v3
  = coe du_'8712''45'fromList_414 (coe d_theory_868 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-irrelevant
d_'8712''45'irrelevant_962 ::
  T_Theory'7584'_734 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_962 = erased
-- Axiom.Set.Theoryᶠ._.∈-map
d_'8712''45'map_964 ::
  T_Theory'7584'_734 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_964 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_388 (coe d_theory_868 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-mapPartial
d_'8712''45'mapPartial_966 ::
  T_Theory'7584'_734 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_966 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'mapPartial_568 (coe d_theory_868 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-map′
d_'8712''45'map'8242'_968 ::
  T_Theory'7584'_734 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_968 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_394 (coe d_theory_868 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᶠ._.∈-partialToSet
d_'8712''45'partialToSet_970 ::
  T_Theory'7584'_734 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_970 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_466 (coe d_theory_868 (coe v0)) v5
-- Axiom.Set.Theoryᶠ._.∈-singleton
d_'8712''45'singleton_972 ::
  T_Theory'7584'_734 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_972 v0 v1 v2 v3
  = coe du_'8712''45'singleton_440 (coe d_theory_868 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-unions
d_'8712''45'unions_974 ::
  T_Theory'7584'_734 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_974 v0 v1 v2 v3
  = coe du_'8712''45'unions_422 (coe d_theory_868 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-∪
d_'8712''45''8746'_976 ::
  T_Theory'7584'_734 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_976 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_670 (coe d_theory_868 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᶠ._.≡→∈
d_'8801''8594''8712'_978 ::
  T_Theory'7584'_734 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_978 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_978 v5
du_'8801''8594''8712'_978 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_978 v0 = coe v0
-- Axiom.Set.Theoryᶠ._.⊆-mapPartial
d_'8838''45'mapPartial_980 ::
  T_Theory'7584'_734 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_980 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_586 (coe d_theory_868 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᶠ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_982 ::
  T_Theory'7584'_734 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_982 ~v0
  = du_'8838''45'weakly'45'finite_982
du_'8838''45'weakly'45'finite_982 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_982 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_322 v3 v4
-- Axiom.Set.Theoryᶠ._.❴_❵
d_'10100'_'10101'_984 ::
  T_Theory'7584'_734 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_984 v0
  = coe du_'10100'_'10101'_434 (coe d_theory_868 (coe v0))
-- Axiom.Set.Theoryᶠ._.Intersection._∩_
d__'8745'__988 ::
  T_Theory'7584'_734 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__988 v0 v1 v2 v3 v4
  = coe du__'8745'__686 (coe d_theory_868 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᶠ._.Intersection._＼_
d__'65340'__990 ::
  T_Theory'7584'_734 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__990 v0 v1 v2 v3 v4
  = coe du__'65340'__712 (coe d_theory_868 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᶠ._.Intersection.disjoint'
d_disjoint''_992 ::
  T_Theory'7584'_734 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_992 = erased
-- Axiom.Set.Theoryᶠ._.Intersection.∈-∩
d_'8712''45''8745'_994 ::
  T_Theory'7584'_734 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_994 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45''8745'_694 (coe d_theory_868 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryᶠ.finiteness
d_finiteness_998 ::
  T_Theory'7584'_734 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_finiteness_998 v0
  = case coe v0 of
      C_Theory'7584''46'constructor_99503 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᶠ.DecEq⇒strongly-finite
d_DecEq'8658'strongly'45'finite_1002 ::
  T_Theory'7584'_734 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8658'strongly'45'finite_1002 v0 ~v1 v2 v3
  = du_DecEq'8658'strongly'45'finite_1002 v0 v2 v3
du_DecEq'8658'strongly'45'finite_1002 ::
  T_Theory'7584'_734 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8658'strongly'45'finite_1002 v0 v1 v2
  = coe
      du_DecEq'8743'finite'8658'strongly'45'finite_300 (coe v1)
      (coe d_finiteness_998 v0 erased v2)
-- Axiom.Set.Theoryᶠ.lengthˢ
d_length'738'_1006 ::
  T_Theory'7584'_734 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> Integer
d_length'738'_1006 v0 ~v1 v2 v3 = du_length'738'_1006 v0 v2 v3
du_length'738'_1006 ::
  T_Theory'7584'_734 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> Integer
du_length'738'_1006 v0 v1 v2
  = coe
      du_card_318
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
         (coe
            du_DecEq'8658'strongly'45'finite_1002 (coe v0) (coe v1) (coe v2)))
-- Axiom.Set.Theoryⁱ
d_Theory'8305'_1010 = ()
data T_Theory'8305'_1010
  = C_Theory'8305''46'constructor_102745 T_Theory_82
                                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Axiom.Set._._Preservesˢ_
d__Preserves'738'__1016 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1016 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__1018 ::
  T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1018 = erased
-- Axiom.Set._._∈_
d__'8712'__1020 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1020 = erased
-- Axiom.Set._._∉_
d__'8713'__1022 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1022 = erased
-- Axiom.Set._._∪_
d__'8746'__1024 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1024 v0 v1 v2 v3 = coe du__'8746'__662 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__1026 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1026 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__1028 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1028 = erased
-- Axiom.Set._._⊆_
d__'8838'__1030 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1030 = erased
-- Axiom.Set._.All
d_All_1032 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1032 = erased
-- Axiom.Set._.Any
d_Any_1034 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1034 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1036 ::
  T_Theory_82 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1036 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1036
du_DecEq'8743'finite'8658'strongly'45'finite_1036 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1036 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_300 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_1038 :: T_Theory_82 -> () -> ()
d_FinSet_1038 = erased
-- Axiom.Set._.Set
d_Set_1040 :: T_Theory_82 -> () -> ()
d_Set_1040 = erased
-- Axiom.Set._.binary-unions
d_binary'45'unions_1042 ::
  T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1042 v0 v1 v2 v3
  = coe du_binary'45'unions_626 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_1044 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1044 ~v0 = du_card_1044
du_card_1044 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1044 v0 v1 = coe du_card_318 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_1046 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1046 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_1048 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1048 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_490 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_1050 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1050 = erased
-- Axiom.Set._.filter
d_filter_1052 ::
  T_Theory_82 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1052 v0 v1 v2 = coe du_filter_402 (coe v0)
-- Axiom.Set._.finite
d_finite_1054 :: T_Theory_82 -> () -> AgdaAny -> ()
d_finite_1054 = erased
-- Axiom.Set._.fromList
d_fromList_1056 :: T_Theory_82 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1056 v0 v1 v2 = coe du_fromList_410 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_1058 :: T_Theory_82 -> () -> AgdaAny -> ()
d_isMaximal_1058 = erased
-- Axiom.Set._.listing
d_listing_1060 ::
  T_Theory_82 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1060 v0 = coe d_listing_204 (coe v0)
-- Axiom.Set._.map
d_map_1062 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1062 v0 v1 v2 = coe du_map_380 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_1064 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1064 v0 v1 v2 v3 = coe du_mapPartial_558 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_1066 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1066 ~v0 = du_maximal'45'unique_1066
du_maximal'45'unique_1066 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1066 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_342 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_1068 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1068 ~v0 = du_maximal'45''8838'_1068
du_maximal'45''8838'_1068 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1068 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_338 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_1070 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1070 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_454 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_1072 ::
  T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1072 v0 = coe d_replacement_196 (coe v0)
-- Axiom.Set._.singleton
d_singleton_1074 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_singleton_1074 v0 v1 v2 = coe du_singleton_430 (coe v0) v2
-- Axiom.Set._.sp
d_sp_1076 :: T_Theory_82 -> T_SpecProperty_48
d_sp_1076 v0 = coe d_sp_150 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_1078 ::
  T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1078 v0
  = coe d_sp'45''172'_70 (coe d_sp_150 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_1080 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1080 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_1082 :: T_Theory_82 -> () -> ()
d_spec'45''8712'_1082 = erased
-- Axiom.Set._.specProperty
d_specProperty_1084 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1084 = erased
-- Axiom.Set._.specification
d_specification_1086 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1086 v0 = coe d_specification_174 (coe v0)
-- Axiom.Set._.strictify
d_strictify_1088 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1088 v0 v1 v2 v3 v4
  = coe du_strictify_360 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_1090 :: T_Theory_82 -> () -> AgdaAny -> ()
d_strongly'45'finite_1090 = erased
-- Axiom.Set._.unions
d_unions_1092 ::
  T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1092 v0 = coe d_unions_184 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_1094 :: T_Theory_82 -> () -> AgdaAny -> ()
d_weakly'45'finite_1094 = erased
-- Axiom.Set._.∅
d_'8709'_1096 :: T_Theory_82 -> () -> AgdaAny
d_'8709'_1096 v0 v1 = coe du_'8709'_424 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1098 ::
  T_Theory_82 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1098 v0 v1
  = coe du_'8709''45'strongly'45'finite_426 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1100 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_1100 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_502 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_1102 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_1102 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_408 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_1104 ::
  T_Theory_82 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_1104 v0 v1 v2 v3
  = coe du_'8712''45'fromList_414 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_1106 :: T_Theory_82 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1106 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_1108 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_1108 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_388 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_1110 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_1110 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_568 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_1112 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1112 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_394 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_1114 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_1114 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_466 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_1116 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_1116 v0 v1 v2 v3
  = coe du_'8712''45'singleton_440 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_1118 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_1118 v0 v1 v2 v3
  = coe du_'8712''45'unions_422 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_1120 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_1120 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_670 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_1122 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1122 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1122 v5
du_'8801''8594''8712'_1122 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1122 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_1124 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1124 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_586 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1126 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1126 ~v0
  = du_'8838''45'weakly'45'finite_1126
du_'8838''45'weakly'45'finite_1126 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1126 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_322 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_1128 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1128 v0 = coe du_'10100'_'10101'_434 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__1132 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1132 v0 v1 v2 v3 v4
  = coe du__'8745'__686 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection._＼_
d__'65340'__1134 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1134 v0 v1 v2 v3 v4
  = coe du__'65340'__712 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_1136 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1136 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_1138 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1138 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_694 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryⁱ.theory
d_theory_1146 :: T_Theory'8305'_1010 -> T_Theory_82
d_theory_1146 v0
  = case coe v0 of
      C_Theory'8305''46'constructor_102745 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryⁱ._._Preservesˢ_
d__Preserves'738'__1150 ::
  T_Theory'8305'_1010 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1150 = erased
-- Axiom.Set.Theoryⁱ._._Preservesˢ₂_
d__Preserves'738''8322'__1152 ::
  T_Theory'8305'_1010 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1152 = erased
-- Axiom.Set.Theoryⁱ._._∈_
d__'8712'__1154 ::
  T_Theory'8305'_1010 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1154 = erased
-- Axiom.Set.Theoryⁱ._._∉_
d__'8713'__1156 ::
  T_Theory'8305'_1010 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1156 = erased
-- Axiom.Set.Theoryⁱ._._∪_
d__'8746'__1158 ::
  T_Theory'8305'_1010 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1158 v0 v1 v2 v3
  = coe du__'8746'__662 (coe d_theory_1146 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._._≡ᵉ_
d__'8801''7497'__1160 ::
  T_Theory'8305'_1010 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1160 = erased
-- Axiom.Set.Theoryⁱ._._≡ᵉ'_
d__'8801''7497'''__1162 ::
  T_Theory'8305'_1010 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1162 = erased
-- Axiom.Set.Theoryⁱ._._⊆_
d__'8838'__1164 ::
  T_Theory'8305'_1010 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1164 = erased
-- Axiom.Set.Theoryⁱ._.All
d_All_1166 ::
  T_Theory'8305'_1010 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1166 = erased
-- Axiom.Set.Theoryⁱ._.Any
d_Any_1168 ::
  T_Theory'8305'_1010 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1168 = erased
-- Axiom.Set.Theoryⁱ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1170 ::
  T_Theory'8305'_1010 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1170 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1170
du_DecEq'8743'finite'8658'strongly'45'finite_1170 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1170 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_300 v1 v3
-- Axiom.Set.Theoryⁱ._.FinSet
d_FinSet_1172 :: T_Theory'8305'_1010 -> () -> ()
d_FinSet_1172 = erased
-- Axiom.Set.Theoryⁱ._.Set
d_Set_1174 :: T_Theory'8305'_1010 -> () -> ()
d_Set_1174 = erased
-- Axiom.Set.Theoryⁱ._.binary-unions
d_binary'45'unions_1176 ::
  T_Theory'8305'_1010 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1176 v0 v1 v2 v3
  = coe du_binary'45'unions_626 (coe d_theory_1146 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.card
d_card_1178 ::
  T_Theory'8305'_1010 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1178 ~v0 = du_card_1178
du_card_1178 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1178 v0 v1 = coe du_card_318 v1
-- Axiom.Set.Theoryⁱ._.card-∅
d_card'45''8709'_1180 ::
  T_Theory'8305'_1010 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1180 = erased
-- Axiom.Set.Theoryⁱ._.concatMapˢ
d_concatMap'738'_1182 ::
  T_Theory'8305'_1010 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1182 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_490 (coe d_theory_1146 (coe v0)) v3 v4
-- Axiom.Set.Theoryⁱ._.disjoint
d_disjoint_1184 ::
  T_Theory'8305'_1010 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1184 = erased
-- Axiom.Set.Theoryⁱ._.filter
d_filter_1186 ::
  T_Theory'8305'_1010 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1186 v0 v1 v2
  = coe du_filter_402 (coe d_theory_1146 (coe v0))
-- Axiom.Set.Theoryⁱ._.finite
d_finite_1188 :: T_Theory'8305'_1010 -> () -> AgdaAny -> ()
d_finite_1188 = erased
-- Axiom.Set.Theoryⁱ._.fromList
d_fromList_1190 ::
  T_Theory'8305'_1010 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1190 v0 v1 v2
  = coe du_fromList_410 (coe d_theory_1146 (coe v0)) v2
-- Axiom.Set.Theoryⁱ._.isMaximal
d_isMaximal_1192 :: T_Theory'8305'_1010 -> () -> AgdaAny -> ()
d_isMaximal_1192 = erased
-- Axiom.Set.Theoryⁱ._.listing
d_listing_1194 ::
  T_Theory'8305'_1010 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1194 v0 = coe d_listing_204 (coe d_theory_1146 (coe v0))
-- Axiom.Set.Theoryⁱ._.map
d_map_1196 ::
  T_Theory'8305'_1010 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1196 v0 v1 v2 = coe du_map_380 (coe d_theory_1146 (coe v0))
-- Axiom.Set.Theoryⁱ._.mapPartial
d_mapPartial_1198 ::
  T_Theory'8305'_1010 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1198 v0 v1 v2 v3
  = coe du_mapPartial_558 (coe d_theory_1146 (coe v0)) v3
-- Axiom.Set.Theoryⁱ._.maximal-unique
d_maximal'45'unique_1200 ::
  T_Theory'8305'_1010 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1200 ~v0 = du_maximal'45'unique_1200
du_maximal'45'unique_1200 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1200 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_342 v3 v4
-- Axiom.Set.Theoryⁱ._.maximal-⊆
d_maximal'45''8838'_1202 ::
  T_Theory'8305'_1010 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1202 ~v0 = du_maximal'45''8838'_1202
du_maximal'45''8838'_1202 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1202 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_338 v3 v4
-- Axiom.Set.Theoryⁱ._.partialToSet
d_partialToSet_1204 ::
  T_Theory'8305'_1010 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1204 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_454 (coe d_theory_1146 (coe v0)) v4 v5
-- Axiom.Set.Theoryⁱ._.replacement
d_replacement_1206 ::
  T_Theory'8305'_1010 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1206 v0
  = coe d_replacement_196 (coe d_theory_1146 (coe v0))
-- Axiom.Set.Theoryⁱ._.singleton
d_singleton_1208 :: T_Theory'8305'_1010 -> () -> AgdaAny -> AgdaAny
d_singleton_1208 v0 v1 v2
  = coe du_singleton_430 (coe d_theory_1146 (coe v0)) v2
-- Axiom.Set.Theoryⁱ._.sp
d_sp_1210 :: T_Theory'8305'_1010 -> T_SpecProperty_48
d_sp_1210 v0 = coe d_sp_150 (coe d_theory_1146 (coe v0))
-- Axiom.Set.Theoryⁱ._.sp-¬
d_sp'45''172'_1212 ::
  T_Theory'8305'_1010 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1212 v0
  = coe d_sp'45''172'_70 (coe d_sp_150 (coe d_theory_1146 (coe v0)))
-- Axiom.Set.Theoryⁱ._.sp-∘
d_sp'45''8728'_1214 ::
  T_Theory'8305'_1010 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1214 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe d_theory_1146 (coe v0)))
-- Axiom.Set.Theoryⁱ._.spec-∈
d_spec'45''8712'_1216 :: T_Theory'8305'_1010 -> () -> ()
d_spec'45''8712'_1216 = erased
-- Axiom.Set.Theoryⁱ._.specProperty
d_specProperty_1218 ::
  T_Theory'8305'_1010 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1218 = erased
-- Axiom.Set.Theoryⁱ._.specification
d_specification_1220 ::
  T_Theory'8305'_1010 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1220 v0
  = coe d_specification_174 (coe d_theory_1146 (coe v0))
-- Axiom.Set.Theoryⁱ._.strictify
d_strictify_1222 ::
  T_Theory'8305'_1010 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1222 v0 v1 v2 v3 v4
  = coe du_strictify_360 (coe d_theory_1146 (coe v0)) v3 v4
-- Axiom.Set.Theoryⁱ._.strongly-finite
d_strongly'45'finite_1224 ::
  T_Theory'8305'_1010 -> () -> AgdaAny -> ()
d_strongly'45'finite_1224 = erased
-- Axiom.Set.Theoryⁱ._.unions
d_unions_1226 ::
  T_Theory'8305'_1010 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1226 v0 = coe d_unions_184 (coe d_theory_1146 (coe v0))
-- Axiom.Set.Theoryⁱ._.weakly-finite
d_weakly'45'finite_1228 ::
  T_Theory'8305'_1010 -> () -> AgdaAny -> ()
d_weakly'45'finite_1228 = erased
-- Axiom.Set.Theoryⁱ._.∅
d_'8709'_1230 :: T_Theory'8305'_1010 -> () -> AgdaAny
d_'8709'_1230 v0 v1
  = coe du_'8709'_424 (coe d_theory_1146 (coe v0))
-- Axiom.Set.Theoryⁱ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1232 ::
  T_Theory'8305'_1010 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1232 v0 v1
  = coe
      du_'8709''45'strongly'45'finite_426 (coe d_theory_1146 (coe v0))
-- Axiom.Set.Theoryⁱ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1234 ::
  T_Theory'8305'_1010 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_1234 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_502 (coe d_theory_1146 (coe v0)) v3 v4
      v5
-- Axiom.Set.Theoryⁱ._.∈-filter
d_'8712''45'filter_1236 ::
  T_Theory'8305'_1010 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_1236 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_408 (coe d_theory_1146 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-fromList
d_'8712''45'fromList_1238 ::
  T_Theory'8305'_1010 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_1238 v0 v1 v2 v3
  = coe du_'8712''45'fromList_414 (coe d_theory_1146 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-irrelevant
d_'8712''45'irrelevant_1240 ::
  T_Theory'8305'_1010 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1240 = erased
-- Axiom.Set.Theoryⁱ._.∈-map
d_'8712''45'map_1242 ::
  T_Theory'8305'_1010 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_1242 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_388 (coe d_theory_1146 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-mapPartial
d_'8712''45'mapPartial_1244 ::
  T_Theory'8305'_1010 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_1244 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'mapPartial_568 (coe d_theory_1146 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-map′
d_'8712''45'map'8242'_1246 ::
  T_Theory'8305'_1010 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1246 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_394 (coe d_theory_1146 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryⁱ._.∈-partialToSet
d_'8712''45'partialToSet_1248 ::
  T_Theory'8305'_1010 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_1248 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_466 (coe d_theory_1146 (coe v0)) v5
-- Axiom.Set.Theoryⁱ._.∈-singleton
d_'8712''45'singleton_1250 ::
  T_Theory'8305'_1010 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_1250 v0 v1 v2 v3
  = coe du_'8712''45'singleton_440 (coe d_theory_1146 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-unions
d_'8712''45'unions_1252 ::
  T_Theory'8305'_1010 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_1252 v0 v1 v2 v3
  = coe du_'8712''45'unions_422 (coe d_theory_1146 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-∪
d_'8712''45''8746'_1254 ::
  T_Theory'8305'_1010 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_1254 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_670 (coe d_theory_1146 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryⁱ._.≡→∈
d_'8801''8594''8712'_1256 ::
  T_Theory'8305'_1010 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1256 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1256 v5
du_'8801''8594''8712'_1256 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1256 v0 = coe v0
-- Axiom.Set.Theoryⁱ._.⊆-mapPartial
d_'8838''45'mapPartial_1258 ::
  T_Theory'8305'_1010 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1258 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_586 (coe d_theory_1146 (coe v0)) v3 v4 v5
      v6
-- Axiom.Set.Theoryⁱ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1260 ::
  T_Theory'8305'_1010 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1260 ~v0
  = du_'8838''45'weakly'45'finite_1260
du_'8838''45'weakly'45'finite_1260 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1260 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_322 v3 v4
-- Axiom.Set.Theoryⁱ._.❴_❵
d_'10100'_'10101'_1262 ::
  T_Theory'8305'_1010 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1262 v0
  = coe du_'10100'_'10101'_434 (coe d_theory_1146 (coe v0))
-- Axiom.Set.Theoryⁱ._.Intersection._∩_
d__'8745'__1266 ::
  T_Theory'8305'_1010 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1266 v0 v1 v2 v3 v4
  = coe du__'8745'__686 (coe d_theory_1146 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryⁱ._.Intersection._＼_
d__'65340'__1268 ::
  T_Theory'8305'_1010 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1268 v0 v1 v2 v3 v4
  = coe du__'65340'__712 (coe d_theory_1146 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryⁱ._.Intersection.disjoint'
d_disjoint''_1270 ::
  T_Theory'8305'_1010 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1270 = erased
-- Axiom.Set.Theoryⁱ._.Intersection.∈-∩
d_'8712''45''8745'_1272 ::
  T_Theory'8305'_1010 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1272 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45''8745'_694 (coe d_theory_1146 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryⁱ.infinity
d_infinity_1278 ::
  T_Theory'8305'_1010 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infinity_1278 v0
  = case coe v0 of
      C_Theory'8305''46'constructor_102745 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ
d_Theory'7496'_1280 = ()
data T_Theory'7496'_1280
  = C_Theory'7496''46'constructor_106279 T_Theory_82
                                         (() ->
                                          MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
                                          AgdaAny -> AgdaAny)
                                         (() ->
                                          MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
                                          AgdaAny ->
                                          AgdaAny ->
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
                                         (() ->
                                          (AgdaAny -> ()) ->
                                          (AgdaAny ->
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
                                          AgdaAny ->
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
                                         (() ->
                                          (AgdaAny -> ()) ->
                                          (AgdaAny ->
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
                                          AgdaAny ->
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
-- Axiom.Set._._Preservesˢ_
d__Preserves'738'__1286 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1286 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__1288 ::
  T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1288 = erased
-- Axiom.Set._._∈_
d__'8712'__1290 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1290 = erased
-- Axiom.Set._._∉_
d__'8713'__1292 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1292 = erased
-- Axiom.Set._._∪_
d__'8746'__1294 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1294 v0 v1 v2 v3 = coe du__'8746'__662 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__1296 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1296 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__1298 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1298 = erased
-- Axiom.Set._._⊆_
d__'8838'__1300 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1300 = erased
-- Axiom.Set._.All
d_All_1302 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1302 = erased
-- Axiom.Set._.Any
d_Any_1304 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1304 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1306 ::
  T_Theory_82 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1306 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1306
du_DecEq'8743'finite'8658'strongly'45'finite_1306 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1306 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_300 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_1308 :: T_Theory_82 -> () -> ()
d_FinSet_1308 = erased
-- Axiom.Set._.Set
d_Set_1310 :: T_Theory_82 -> () -> ()
d_Set_1310 = erased
-- Axiom.Set._.binary-unions
d_binary'45'unions_1312 ::
  T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1312 v0 v1 v2 v3
  = coe du_binary'45'unions_626 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_1314 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1314 ~v0 = du_card_1314
du_card_1314 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1314 v0 v1 = coe du_card_318 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_1316 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1316 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_1318 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1318 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_490 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_1320 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1320 = erased
-- Axiom.Set._.filter
d_filter_1322 ::
  T_Theory_82 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1322 v0 v1 v2 = coe du_filter_402 (coe v0)
-- Axiom.Set._.finite
d_finite_1324 :: T_Theory_82 -> () -> AgdaAny -> ()
d_finite_1324 = erased
-- Axiom.Set._.fromList
d_fromList_1326 :: T_Theory_82 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1326 v0 v1 v2 = coe du_fromList_410 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_1328 :: T_Theory_82 -> () -> AgdaAny -> ()
d_isMaximal_1328 = erased
-- Axiom.Set._.listing
d_listing_1330 ::
  T_Theory_82 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1330 v0 = coe d_listing_204 (coe v0)
-- Axiom.Set._.map
d_map_1332 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1332 v0 v1 v2 = coe du_map_380 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_1334 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1334 v0 v1 v2 v3 = coe du_mapPartial_558 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_1336 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1336 ~v0 = du_maximal'45'unique_1336
du_maximal'45'unique_1336 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1336 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_342 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_1338 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1338 ~v0 = du_maximal'45''8838'_1338
du_maximal'45''8838'_1338 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1338 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_338 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_1340 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1340 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_454 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_1342 ::
  T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1342 v0 = coe d_replacement_196 (coe v0)
-- Axiom.Set._.singleton
d_singleton_1344 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_singleton_1344 v0 v1 v2 = coe du_singleton_430 (coe v0) v2
-- Axiom.Set._.sp
d_sp_1346 :: T_Theory_82 -> T_SpecProperty_48
d_sp_1346 v0 = coe d_sp_150 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_1348 ::
  T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1348 v0
  = coe d_sp'45''172'_70 (coe d_sp_150 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_1350 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1350 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_1352 :: T_Theory_82 -> () -> ()
d_spec'45''8712'_1352 = erased
-- Axiom.Set._.specProperty
d_specProperty_1354 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1354 = erased
-- Axiom.Set._.specification
d_specification_1356 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1356 v0 = coe d_specification_174 (coe v0)
-- Axiom.Set._.strictify
d_strictify_1358 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1358 v0 v1 v2 v3 v4
  = coe du_strictify_360 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_1360 :: T_Theory_82 -> () -> AgdaAny -> ()
d_strongly'45'finite_1360 = erased
-- Axiom.Set._.unions
d_unions_1362 ::
  T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1362 v0 = coe d_unions_184 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_1364 :: T_Theory_82 -> () -> AgdaAny -> ()
d_weakly'45'finite_1364 = erased
-- Axiom.Set._.∅
d_'8709'_1366 :: T_Theory_82 -> () -> AgdaAny
d_'8709'_1366 v0 v1 = coe du_'8709'_424 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1368 ::
  T_Theory_82 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1368 v0 v1
  = coe du_'8709''45'strongly'45'finite_426 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1370 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_1370 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_502 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_1372 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_1372 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_408 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_1374 ::
  T_Theory_82 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_1374 v0 v1 v2 v3
  = coe du_'8712''45'fromList_414 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_1376 :: T_Theory_82 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1376 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_1378 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_1378 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_388 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_1380 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_1380 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_568 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_1382 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1382 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_394 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_1384 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_1384 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_466 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_1386 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_1386 v0 v1 v2 v3
  = coe du_'8712''45'singleton_440 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_1388 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_1388 v0 v1 v2 v3
  = coe du_'8712''45'unions_422 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_1390 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_1390 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_670 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_1392 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1392 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1392 v5
du_'8801''8594''8712'_1392 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1392 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_1394 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1394 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_586 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1396 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1396 ~v0
  = du_'8838''45'weakly'45'finite_1396
du_'8838''45'weakly'45'finite_1396 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1396 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_322 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_1398 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1398 v0 = coe du_'10100'_'10101'_434 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__1402 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1402 v0 v1 v2 v3 v4
  = coe du__'8745'__686 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection._＼_
d__'65340'__1404 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1404 v0 v1 v2 v3 v4
  = coe du__'65340'__712 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_1406 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1406 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_1408 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1408 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_694 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryᵈ.th
d_th_1430 :: T_Theory'7496'_1280 -> T_Theory_82
d_th_1430 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_106279 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._._Preservesˢ_
d__Preserves'738'__1434 ::
  T_Theory'7496'_1280 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1434 = erased
-- Axiom.Set.Theoryᵈ._._Preservesˢ₂_
d__Preserves'738''8322'__1436 ::
  T_Theory'7496'_1280 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1436 = erased
-- Axiom.Set.Theoryᵈ._._∈_
d__'8712'__1438 ::
  T_Theory'7496'_1280 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1438 = erased
-- Axiom.Set.Theoryᵈ._._∉_
d__'8713'__1440 ::
  T_Theory'7496'_1280 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1440 = erased
-- Axiom.Set.Theoryᵈ._._∪_
d__'8746'__1442 ::
  T_Theory'7496'_1280 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1442 v0 v1 v2 v3
  = coe du__'8746'__662 (coe d_th_1430 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._._≡ᵉ_
d__'8801''7497'__1444 ::
  T_Theory'7496'_1280 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1444 = erased
-- Axiom.Set.Theoryᵈ._._≡ᵉ'_
d__'8801''7497'''__1446 ::
  T_Theory'7496'_1280 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1446 = erased
-- Axiom.Set.Theoryᵈ._._⊆_
d__'8838'__1448 ::
  T_Theory'7496'_1280 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1448 = erased
-- Axiom.Set.Theoryᵈ._.All
d_All_1450 ::
  T_Theory'7496'_1280 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1450 = erased
-- Axiom.Set.Theoryᵈ._.Any
d_Any_1452 ::
  T_Theory'7496'_1280 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1452 = erased
-- Axiom.Set.Theoryᵈ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1454 ::
  T_Theory'7496'_1280 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1454 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1454
du_DecEq'8743'finite'8658'strongly'45'finite_1454 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1454 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_300 v1 v3
-- Axiom.Set.Theoryᵈ._.FinSet
d_FinSet_1456 :: T_Theory'7496'_1280 -> () -> ()
d_FinSet_1456 = erased
-- Axiom.Set.Theoryᵈ._.Set
d_Set_1458 :: T_Theory'7496'_1280 -> () -> ()
d_Set_1458 = erased
-- Axiom.Set.Theoryᵈ._.binary-unions
d_binary'45'unions_1460 ::
  T_Theory'7496'_1280 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1460 v0 v1 v2 v3
  = coe du_binary'45'unions_626 (coe d_th_1430 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.card
d_card_1462 ::
  T_Theory'7496'_1280 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1462 ~v0 = du_card_1462
du_card_1462 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1462 v0 v1 = coe du_card_318 v1
-- Axiom.Set.Theoryᵈ._.card-∅
d_card'45''8709'_1464 ::
  T_Theory'7496'_1280 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1464 = erased
-- Axiom.Set.Theoryᵈ._.concatMapˢ
d_concatMap'738'_1466 ::
  T_Theory'7496'_1280 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1466 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_490 (coe d_th_1430 (coe v0)) v3 v4
-- Axiom.Set.Theoryᵈ._.disjoint
d_disjoint_1468 ::
  T_Theory'7496'_1280 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1468 = erased
-- Axiom.Set.Theoryᵈ._.filter
d_filter_1470 ::
  T_Theory'7496'_1280 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1470 v0 v1 v2 = coe du_filter_402 (coe d_th_1430 (coe v0))
-- Axiom.Set.Theoryᵈ._.finite
d_finite_1472 :: T_Theory'7496'_1280 -> () -> AgdaAny -> ()
d_finite_1472 = erased
-- Axiom.Set.Theoryᵈ._.fromList
d_fromList_1474 ::
  T_Theory'7496'_1280 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1474 v0 v1 v2
  = coe du_fromList_410 (coe d_th_1430 (coe v0)) v2
-- Axiom.Set.Theoryᵈ._.isMaximal
d_isMaximal_1476 :: T_Theory'7496'_1280 -> () -> AgdaAny -> ()
d_isMaximal_1476 = erased
-- Axiom.Set.Theoryᵈ._.listing
d_listing_1478 ::
  T_Theory'7496'_1280 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1478 v0 = coe d_listing_204 (coe d_th_1430 (coe v0))
-- Axiom.Set.Theoryᵈ._.map
d_map_1480 ::
  T_Theory'7496'_1280 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1480 v0 v1 v2 = coe du_map_380 (coe d_th_1430 (coe v0))
-- Axiom.Set.Theoryᵈ._.mapPartial
d_mapPartial_1482 ::
  T_Theory'7496'_1280 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1482 v0 v1 v2 v3
  = coe du_mapPartial_558 (coe d_th_1430 (coe v0)) v3
-- Axiom.Set.Theoryᵈ._.maximal-unique
d_maximal'45'unique_1484 ::
  T_Theory'7496'_1280 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1484 ~v0 = du_maximal'45'unique_1484
du_maximal'45'unique_1484 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1484 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_342 v3 v4
-- Axiom.Set.Theoryᵈ._.maximal-⊆
d_maximal'45''8838'_1486 ::
  T_Theory'7496'_1280 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1486 ~v0 = du_maximal'45''8838'_1486
du_maximal'45''8838'_1486 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1486 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_338 v3 v4
-- Axiom.Set.Theoryᵈ._.partialToSet
d_partialToSet_1488 ::
  T_Theory'7496'_1280 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1488 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_454 (coe d_th_1430 (coe v0)) v4 v5
-- Axiom.Set.Theoryᵈ._.replacement
d_replacement_1490 ::
  T_Theory'7496'_1280 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1490 v0
  = coe d_replacement_196 (coe d_th_1430 (coe v0))
-- Axiom.Set.Theoryᵈ._.singleton
d_singleton_1492 :: T_Theory'7496'_1280 -> () -> AgdaAny -> AgdaAny
d_singleton_1492 v0 v1 v2
  = coe du_singleton_430 (coe d_th_1430 (coe v0)) v2
-- Axiom.Set.Theoryᵈ._.sp
d_sp_1494 :: T_Theory'7496'_1280 -> T_SpecProperty_48
d_sp_1494 v0 = coe d_sp_150 (coe d_th_1430 (coe v0))
-- Axiom.Set.Theoryᵈ._.sp-¬
d_sp'45''172'_1496 ::
  T_Theory'7496'_1280 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1496 v0
  = coe d_sp'45''172'_70 (coe d_sp_150 (coe d_th_1430 (coe v0)))
-- Axiom.Set.Theoryᵈ._.sp-∘
d_sp'45''8728'_1498 ::
  T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1498 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe d_th_1430 (coe v0)))
-- Axiom.Set.Theoryᵈ._.spec-∈
d_spec'45''8712'_1500 :: T_Theory'7496'_1280 -> () -> ()
d_spec'45''8712'_1500 = erased
-- Axiom.Set.Theoryᵈ._.specProperty
d_specProperty_1502 ::
  T_Theory'7496'_1280 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1502 = erased
-- Axiom.Set.Theoryᵈ._.specification
d_specification_1504 ::
  T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1504 v0
  = coe d_specification_174 (coe d_th_1430 (coe v0))
-- Axiom.Set.Theoryᵈ._.strictify
d_strictify_1506 ::
  T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1506 v0 v1 v2 v3 v4
  = coe du_strictify_360 (coe d_th_1430 (coe v0)) v3 v4
-- Axiom.Set.Theoryᵈ._.strongly-finite
d_strongly'45'finite_1508 ::
  T_Theory'7496'_1280 -> () -> AgdaAny -> ()
d_strongly'45'finite_1508 = erased
-- Axiom.Set.Theoryᵈ._.unions
d_unions_1510 ::
  T_Theory'7496'_1280 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1510 v0 = coe d_unions_184 (coe d_th_1430 (coe v0))
-- Axiom.Set.Theoryᵈ._.weakly-finite
d_weakly'45'finite_1512 ::
  T_Theory'7496'_1280 -> () -> AgdaAny -> ()
d_weakly'45'finite_1512 = erased
-- Axiom.Set.Theoryᵈ._.∅
d_'8709'_1514 :: T_Theory'7496'_1280 -> () -> AgdaAny
d_'8709'_1514 v0 v1 = coe du_'8709'_424 (coe d_th_1430 (coe v0))
-- Axiom.Set.Theoryᵈ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1516 ::
  T_Theory'7496'_1280 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1516 v0 v1
  = coe du_'8709''45'strongly'45'finite_426 (coe d_th_1430 (coe v0))
-- Axiom.Set.Theoryᵈ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1518 ::
  T_Theory'7496'_1280 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_1518 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_502 (coe d_th_1430 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-filter
d_'8712''45'filter_1520 ::
  T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_1520 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_408 (coe d_th_1430 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-fromList
d_'8712''45'fromList_1522 ::
  T_Theory'7496'_1280 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_1522 v0 v1 v2 v3
  = coe du_'8712''45'fromList_414 (coe d_th_1430 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-irrelevant
d_'8712''45'irrelevant_1524 ::
  T_Theory'7496'_1280 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1524 = erased
-- Axiom.Set.Theoryᵈ._.∈-map
d_'8712''45'map_1526 ::
  T_Theory'7496'_1280 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_1526 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_388 (coe d_th_1430 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-mapPartial
d_'8712''45'mapPartial_1528 ::
  T_Theory'7496'_1280 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_1528 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_568 (coe d_th_1430 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-map′
d_'8712''45'map'8242'_1530 ::
  T_Theory'7496'_1280 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1530 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_394 (coe d_th_1430 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᵈ._.∈-partialToSet
d_'8712''45'partialToSet_1532 ::
  T_Theory'7496'_1280 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_1532 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_466 (coe d_th_1430 (coe v0)) v5
-- Axiom.Set.Theoryᵈ._.∈-singleton
d_'8712''45'singleton_1534 ::
  T_Theory'7496'_1280 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_1534 v0 v1 v2 v3
  = coe du_'8712''45'singleton_440 (coe d_th_1430 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-unions
d_'8712''45'unions_1536 ::
  T_Theory'7496'_1280 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_1536 v0 v1 v2 v3
  = coe du_'8712''45'unions_422 (coe d_th_1430 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-∪
d_'8712''45''8746'_1538 ::
  T_Theory'7496'_1280 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_1538 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_670 (coe d_th_1430 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᵈ._.≡→∈
d_'8801''8594''8712'_1540 ::
  T_Theory'7496'_1280 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1540 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1540 v5
du_'8801''8594''8712'_1540 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1540 v0 = coe v0
-- Axiom.Set.Theoryᵈ._.⊆-mapPartial
d_'8838''45'mapPartial_1542 ::
  T_Theory'7496'_1280 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1542 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_586 (coe d_th_1430 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᵈ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1544 ::
  T_Theory'7496'_1280 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1544 ~v0
  = du_'8838''45'weakly'45'finite_1544
du_'8838''45'weakly'45'finite_1544 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1544 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_322 v3 v4
-- Axiom.Set.Theoryᵈ._.❴_❵
d_'10100'_'10101'_1546 ::
  T_Theory'7496'_1280 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1546 v0
  = coe du_'10100'_'10101'_434 (coe d_th_1430 (coe v0))
-- Axiom.Set.Theoryᵈ._.Intersection._∩_
d__'8745'__1550 ::
  T_Theory'7496'_1280 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1550 v0 v1 v2 v3 v4
  = coe du__'8745'__686 (coe d_th_1430 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᵈ._.Intersection._＼_
d__'65340'__1552 ::
  T_Theory'7496'_1280 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1552 v0 v1 v2 v3 v4
  = coe du__'65340'__712 (coe d_th_1430 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᵈ._.Intersection.disjoint'
d_disjoint''_1554 ::
  T_Theory'7496'_1280 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1554 = erased
-- Axiom.Set.Theoryᵈ._.Intersection.∈-∩
d_'8712''45''8745'_1556 ::
  T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1556 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_694 (coe d_th_1430 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryᵈ.∈-sp
d_'8712''45'sp_1558 ::
  T_Theory'7496'_1280 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
d_'8712''45'sp_1558 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_106279 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._∈?_
d__'8712''63'__1560 ::
  T_Theory'7496'_1280 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8712''63'__1560 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_106279 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ.all?
d_all'63'_1568 ::
  T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_all'63'_1568 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_106279 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ.any?
d_any'63'_1576 ::
  T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63'_1576 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_106279 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._._.Dec-Allˢ
d_Dec'45'All'738'_1592 ::
  T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'All'738'_1592 v0 ~v1 ~v2 v3 v4
  = du_Dec'45'All'738'_1592 v0 v3 v4
du_Dec'45'All'738'_1592 ::
  T_Theory'7496'_1280 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'All'738'_1592 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
      (coe
         (\ v3 ->
            coe
              d_all'63'_1568 v0 erased erased
              (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v1))
              v3))
      (coe v2)
-- Axiom.Set.Theoryᵈ._._.Dec-Anyˢ
d_Dec'45'Any'738'_1596 ::
  T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'Any'738'_1596 v0 ~v1 ~v2 v3 v4
  = du_Dec'45'Any'738'_1596 v0 v3 v4
du_Dec'45'Any'738'_1596 ::
  T_Theory'7496'_1280 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'Any'738'_1596 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
      (coe
         d_any'63'_1576 v0 erased erased
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v1)))
      (coe v2)
-- Axiom.Set.Theoryᵈ._._.allᵇ
d_all'7495'_1606 ::
  T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
d_all'7495'_1606 v0 ~v1 ~v2 v3 v4 = du_all'7495'_1606 v0 v3 v4
du_all'7495'_1606 ::
  T_Theory'7496'_1280 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
du_all'7495'_1606 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_112 ()
      erased (coe d_all'63'_1568 v0 erased erased v1 v2)
-- Axiom.Set.Theoryᵈ._._.anyᵇ
d_any'7495'_1610 ::
  T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
d_any'7495'_1610 v0 ~v1 ~v2 v3 v4 = du_any'7495'_1610 v0 v3 v4
du_any'7495'_1610 ::
  T_Theory'7496'_1280 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
du_any'7495'_1610 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_112 ()
      erased (coe d_any'63'_1576 v0 erased erased v1 v2)
-- Axiom.Set.Theoryᵈ._._∈ᵇ_
d__'8712''7495'__1624 ::
  T_Theory'7496'_1280 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Bool
d__'8712''7495'__1624 v0 ~v1 v2 v3 v4
  = du__'8712''7495'__1624 v0 v2 v3 v4
du__'8712''7495'__1624 ::
  T_Theory'7496'_1280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Bool
du__'8712''7495'__1624 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_112 ()
      erased (coe d__'8712''63'__1560 v0 erased v1 v2 v3)
-- Axiom.Set.Theoryᵈ._.Dec-∈
d_Dec'45''8712'_1630 ::
  T_Theory'7496'_1280 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8712'_1630 v0 ~v1 v2 v3 v4
  = du_Dec'45''8712'_1630 v0 v2 v3 v4
du_Dec'45''8712'_1630 ::
  T_Theory'7496'_1280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45''8712'_1630 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
      (coe d__'8712''63'__1560 v0 erased v1) (coe v2) (coe v3)
-- Axiom.Set.Theoryᵈ._.incl-set'
d_incl'45'set''_1642 ::
  T_Theory'7496'_1280 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set''_1642 v0 ~v1 v2 v3 v4
  = du_incl'45'set''_1642 v0 v2 v3 v4
du_incl'45'set''_1642 ::
  T_Theory'7496'_1280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incl'45'set''_1642 v0 v1 v2 v3
  = let v4 = coe d__'8712''63'__1560 v0 erased v1 v3 v2 in
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
d_incl'45'set_1668 ::
  T_Theory'7496'_1280 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
d_incl'45'set_1668 v0 ~v1 v2 v3 = du_incl'45'set_1668 v0 v2 v3
du_incl'45'set_1668 ::
  T_Theory'7496'_1280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
du_incl'45'set_1668 v0 v1 v2
  = coe
      du_mapPartial_558 (d_th_1430 (coe v0))
      (coe du_incl'45'set''_1642 (coe v0) (coe v1) (coe v2)) v2
-- Axiom.Set.Theoryᵈ._._.incl-set-proj₁⊆
d_incl'45'set'45'proj'8321''8838'_1678 ::
  T_Theory'7496'_1280 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_incl'45'set'45'proj'8321''8838'_1678 v0 ~v1 v2 v3 v4 v5
  = du_incl'45'set'45'proj'8321''8838'_1678 v0 v2 v3 v4 v5
du_incl'45'set'45'proj'8321''8838'_1678 ::
  T_Theory'7496'_1280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_incl'45'set'45'proj'8321''8838'_1678 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    d_replacement_196 (d_th_1430 (coe v0)) erased erased
                    (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                    (coe du_incl'45'set_1668 (coe v0) (coe v1) (coe v2)))
                 v3)
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
d_incl'45'set'45'proj'8321''8839'_1690 ::
  T_Theory'7496'_1280 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_incl'45'set'45'proj'8321''8839'_1690 v0 ~v1 v2 v3 v4 v5
  = du_incl'45'set'45'proj'8321''8839'_1690 v0 v2 v3 v4 v5
du_incl'45'set'45'proj'8321''8839'_1690 ::
  T_Theory'7496'_1280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_incl'45'set'45'proj'8321''8839'_1690 v0 v1 v2 v3 v4
  = let v5 = coe d__'8712''63'__1560 v0 erased v1 v3 v2 in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
           -> if coe v6
                then case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                         -> coe
                              MAlonzo.Code.Function.Bundles.d_to_1724
                              (coe
                                 du_'8712''45'map_388 (coe d_th_1430 (coe v0))
                                 (coe
                                    du_mapPartial_558 (d_th_1430 (coe v0))
                                    (coe du_incl'45'set''_1642 (coe v0) (coe v1) (coe v2)) v2)
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
                                          du_'8712''45'mapPartial_568 (coe d_th_1430 (coe v0))
                                          (coe v2)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                             (coe v8))
                                          (coe du_incl'45'set''_1642 (coe v0) (coe v1) (coe v2)))
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
d_helper_1718 ::
  T_Theory'7496'_1280 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_helper_1718 = erased
-- Axiom.Set.Theoryᵈ._._.incl-set-proj₁
d_incl'45'set'45'proj'8321'_1728 ::
  T_Theory'7496'_1280 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set'45'proj'8321'_1728 v0 ~v1 v2 v3
  = du_incl'45'set'45'proj'8321'_1728 v0 v2 v3
du_incl'45'set'45'proj'8321'_1728 ::
  T_Theory'7496'_1280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incl'45'set'45'proj'8321'_1728 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_incl'45'set'45'proj'8321''8838'_1678 (coe v0) (coe v1) (coe v2))
      (coe
         du_incl'45'set'45'proj'8321''8839'_1690 (coe v0) (coe v1) (coe v2))
