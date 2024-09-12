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
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Ext.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.Unique.DecPropositional.Properties
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product.Algebra
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Product.Properties.Ext
import qualified MAlonzo.Code.Data.String.Base
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
  = C_SpecProperty'46'constructor_1829 (() ->
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
      C_SpecProperty'46'constructor_1829 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.SpecProperty.sp-¬
d_sp'45''172'_70 ::
  T_SpecProperty_48 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_70 v0
  = case coe v0 of
      C_SpecProperty'46'constructor_1829 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Dec-SpecProperty
d_Dec'45'SpecProperty_72 :: T_SpecProperty_48
d_Dec'45'SpecProperty_72
  = coe
      C_SpecProperty'46'constructor_1829
      (\ v0 v1 v2 v3 v4 v5 -> coe v3 (coe v4 v5))
      (\ v0 v1 v2 v3 ->
         coe
           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_70
           (coe v2 v3))
-- Axiom.Set.Theory
d_Theory_82 a0 = ()
data T_Theory_82
  = C_Theory'46'constructor_6959 T_SpecProperty_48
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
      C_Theory'46'constructor_6959 v3 v4 v5 v6 v7 -> coe v3
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
      C_Theory'46'constructor_6959 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.unions
d_unions_184 ::
  T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_184 v0
  = case coe v0 of
      C_Theory'46'constructor_6959 v3 v4 v5 v6 v7 -> coe v5
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
      C_Theory'46'constructor_6959 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.listing
d_listing_204 ::
  T_Theory_82 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_204 v0
  = case coe v0 of
      C_Theory'46'constructor_6959 v3 v4 v5 v6 v7 -> coe v7
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
-- Axiom.Set.Theory.Show-finite
d_Show'45'finite_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_280 ~v0 ~v1 ~v2 v3 = du_Show'45'finite_280 v3
du_Show'45'finite_280 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_280 v0
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v1 ->
            case coe v1 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
                -> case coe v3 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                       -> coe
                            MAlonzo.Code.Data.String.Base.d_braces_48
                            (coe
                               MAlonzo.Code.Data.String.Base.d_intersperse_30
                               (", " :: Data.Text.Text)
                               (coe
                                  MAlonzo.Code.Data.List.Base.du_map_22
                                  (coe MAlonzo.Code.Class.Show.Core.d_show_16 (coe v0)) (coe v4)))
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Axiom.Set.Theory.weakly-finite
d_weakly'45'finite_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> ()
d_weakly'45'finite_286 = erased
-- Axiom.Set.Theory.strongly-finite
d_strongly'45'finite_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> ()
d_strongly'45'finite_294 = erased
-- Axiom.Set.Theory.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_306 ~v0 ~v1 ~v2 v3 ~v4
                                                v5
  = du_DecEq'8743'finite'8658'strongly'45'finite_306 v3 v5
du_DecEq'8743'finite'8658'strongly'45'finite_306 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_306 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Data.List.Base.du_deduplicate_898
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
d_card_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_324 ~v0 ~v1 ~v2 v3 = du_card_324 v3
du_card_324 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_324 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe MAlonzo.Code.Data.List.Base.du_length_284 v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.⊆-weakly-finite
d_'8838''45'weakly'45'finite_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_328 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_'8838''45'weakly'45'finite_328 v5 v6
du_'8838''45'weakly'45'finite_328 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_328 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe (\ v4 v5 -> coe v3 v4 (coe v0 v4 v5)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.isMaximal
d_isMaximal_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> ()
d_isMaximal_336 = erased
-- Axiom.Set.Theory.maximal-⊆
d_maximal'45''8838'_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_344 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7
  = du_maximal'45''8838'_344 v5 v6
du_maximal'45''8838'_344 ::
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_maximal'45''8838'_344 v0 v1 = coe v0 v1
-- Axiom.Set.Theory.maximal-unique
d_maximal'45'unique_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_348 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_maximal'45'unique_348 v5 v6
du_maximal'45'unique_348 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_348 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v2 v3 -> coe du_maximal'45''8838'_344 (coe v1) v2)
      (\ v2 v3 -> coe du_maximal'45''8838'_344 (coe v0) v2)
-- Axiom.Set.Theory.FinSet
d_FinSet_354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_Theory_82 -> () -> ()
d_FinSet_354 = erased
-- Axiom.Set.Theory.strictify
d_strictify_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_366 ~v0 v1 ~v2 ~v3 v4 v5 = du_strictify_366 v1 v4 v5
du_strictify_366 ::
  T_Theory_82 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_strictify_366 v0 v1 v2
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
                        MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
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
d_map_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_386 ~v0 v1 ~v2 ~v3 = du_map_386 v1
du_map_386 ::
  T_Theory_82 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map_386 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe
         (\ v1 v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe d_replacement_196 v0 erased erased)
-- Axiom.Set.Theory.∈-map
d_'8712''45'map_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_394 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'map_394 v1 v4 v5 v6
du_'8712''45'map_394 ::
  T_Theory_82 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'map_394 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_replacement_196 v0 erased erased v2 v1) v3
-- Axiom.Set.Theory.∈-map′
d_'8712''45'map'8242'_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_400 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8712''45'map'8242'_400 v1 v4 v5 v6 v7
du_'8712''45'map'8242'_400 ::
  T_Theory_82 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8712''45'map'8242'_400 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe du_'8712''45'map_394 (coe v0) (coe v1) (coe v2) (coe v2 v3))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v4)))
-- Axiom.Set.Theory.filter
d_filter_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_408 ~v0 v1 ~v2 ~v3 = du_filter_408 v1
du_filter_408 :: T_Theory_82 -> AgdaAny -> AgdaAny -> AgdaAny
du_filter_408 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe
         (\ v1 v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe (\ v1 v2 -> coe d_specification_174 v0 erased erased v2 v1))
-- Axiom.Set.Theory.∈-filter
d_'8712''45'filter_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_414 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'filter_414 v1 v4 v5 v6
du_'8712''45'filter_414 ::
  T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'filter_414 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_specification_174 v0 erased erased v1 v2) v3
-- Axiom.Set.Theory.fromList
d_fromList_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> [AgdaAny] -> AgdaAny
d_fromList_416 ~v0 v1 ~v2 v3 = du_fromList_416 v1 v3
du_fromList_416 :: T_Theory_82 -> [AgdaAny] -> AgdaAny
du_fromList_416 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_listing_204 v0 erased v1)
-- Axiom.Set.Theory.∈-fromList
d_'8712''45'fromList_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_420 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'fromList_420 v1 v3 v4
du_'8712''45'fromList_420 ::
  T_Theory_82 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'fromList_420 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_listing_204 v0 erased v1) v2
-- Axiom.Set.Theory.∈-unions
d_'8712''45'unions_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_428 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'unions_428 v1 v3 v4
du_'8712''45'unions_428 ::
  T_Theory_82 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'unions_428 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_unions_184 v0 erased v2) v1
-- Axiom.Set.Theory.∅
d_'8709'_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny
d_'8709'_430 ~v0 v1 ~v2 = du_'8709'_430 v1
du_'8709'_430 :: T_Theory_82 -> AgdaAny
du_'8709'_430 v0
  = coe
      du_fromList_416 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Axiom.Set.Theory.∅-strongly-finite
d_'8709''45'strongly'45'finite_432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_432 ~v0 v1 ~v2
  = du_'8709''45'strongly'45'finite_432 v1
du_'8709''45'strongly'45'finite_432 ::
  T_Theory_82 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''45'strongly'45'finite_432 v0
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
                    du_'8712''45'fromList_420 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v1)))))
-- Axiom.Set.Theory.card-∅
d_card'45''8709'_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_434 = erased
-- Axiom.Set.Theory.singleton
d_singleton_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_singleton_436 ~v0 v1 ~v2 v3 = du_singleton_436 v1 v3
du_singleton_436 :: T_Theory_82 -> AgdaAny -> AgdaAny
du_singleton_436 v0 v1
  = coe
      du_fromList_416 (coe v0)
      (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
-- Axiom.Set.Theory.❴_❵
d_'10100'_'10101'_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_440 ~v0 v1 = du_'10100'_'10101'_440 v1
du_'10100'_'10101'_440 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
du_'10100'_'10101'_440 v0 v1 v2 = coe du_singleton_436 (coe v0) v2
-- Axiom.Set.Theory.∈-singleton
d_'8712''45'singleton_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_446 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'singleton_446 v1 v3 v4
du_'8712''45'singleton_446 ::
  T_Theory_82 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'singleton_446 v0 v1 v2
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
            du_'8712''45'fromList_420 (coe v0)
            (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v2))
            (coe v1)))
      (coe
         MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
         (coe
            (\ v3 ->
               coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased))
         erased)
-- Axiom.Set.Theory.partialToSet
d_partialToSet_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_460 ~v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_partialToSet_460 v1 v5 v6
du_partialToSet_460 ::
  T_Theory_82 -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
du_partialToSet_460 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe
         (\ v3 ->
            coe
              du_fromList_416 (coe v0)
              (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v3))))
      (coe du_'8709'_430 (coe v0)) (coe v1 v2)
-- Axiom.Set.Theory.∈-partialToSet
d_'8712''45'partialToSet_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_472 ~v0 v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7
  = du_'8712''45'partialToSet_472 v1 v6
du_'8712''45'partialToSet_472 ::
  T_Theory_82 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'partialToSet_472 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1724
              (coe du_'8712''45'singleton_446 (coe v0) (coe v1) (coe v1))
              erased))
      erased
-- Axiom.Set.Theory.concatMapˢ
d_concatMap'738'_496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_496 ~v0 v1 ~v2 ~v3 v4 v5
  = du_concatMap'738'_496 v1 v4 v5
du_concatMap'738'_496 ::
  T_Theory_82 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_concatMap'738'_496 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_unions_184 v0 erased (coe du_map_386 v0 v1 v2))
-- Axiom.Set.Theory.∈-concatMapˢ
d_'8712''45'concatMap'738'_508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_508 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'concatMap'738'_508 v1 v4 v5 v6
du_'8712''45'concatMap'738'_508 ::
  T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'concatMap'738'_508 v0 v1 v2 v3
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
                     du_'8712''45'unions_428 (coe v0) (coe v2)
                     (coe du_map_386 v0 v3 v1)))
               (coe
                  MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
                  (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                       (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                       (coe du_'8712''45'map_394 (coe v0) (coe v1) (coe v3) (coe v4))
                       (coe
                          MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                          (coe
                             MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)))))
            (coe
               MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
               (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
               (\ v4 ->
                  coe
                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
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
                            _ -> MAlonzo.RTE.mazUnreachableError)))))
         (coe
            MAlonzo.Code.Data.Product.Properties.du_'8707''8707''8596''8707''8707'_250))
      (coe
         MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
         (\ v4 ->
            coe
              MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45''8801'_48
              (coe v3 v4)))
-- Axiom.Set.Theory.mapPartial
d_mapPartial_564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_564 ~v0 v1 ~v2 ~v3 v4 = du_mapPartial_564 v1 v4
du_mapPartial_564 ::
  T_Theory_82 -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
du_mapPartial_564 v0 v1
  = coe
      du_concatMap'738'_496 (coe v0)
      (coe du_partialToSet_460 (coe v0) (coe v1))
-- Axiom.Set.Theory.∈-mapPartial
d_'8712''45'mapPartial_574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_574 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'mapPartial_574 v1 v4 v5 v6
du_'8712''45'mapPartial_574 ::
  T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'mapPartial_574 v0 v1 v2 v3
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
            du_'8712''45'concatMap'738'_508 (coe v0) (coe v1) (coe v2)
            (coe du_partialToSet_460 (coe v0) (coe v3))))
      (coe
         MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
         (\ v4 ->
            coe
              MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
              (coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
              (coe du_'8712''45'partialToSet_472 (coe v0) (coe v2))))
-- Axiom.Set.Theory.⊆-mapPartial
d_'8838''45'mapPartial_592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_592 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8838''45'mapPartial_592 v1 v4 v5 v6 v7
du_'8838''45'mapPartial_592 ::
  T_Theory_82 ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du_'8838''45'mapPartial_592 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    d_replacement_196 v0 erased erased
                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                    (coe du_mapPartial_564 v0 v2 v1))
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
                                     MAlonzo.Code.Function.Bundles.du_mk'8596'_2350
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
                                           du_'8712''45'concatMap'738'_508 (coe v0) (coe v1)
                                           (coe v6) (coe du_partialToSet_460 (coe v0) (coe v2))))
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
                                     (coe du_'8712''45'partialToSet_472 (coe v0) (coe v6)))
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
                                              du_'8712''45'concatMap'738'_508 (coe v0) (coe v1)
                                              (coe v6) (coe du_partialToSet_460 (coe v0) (coe v2))))
                                        v9)) in
                        coe
                          (case coe v11 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                               -> coe
                                    MAlonzo.Code.Function.Bundles.d_to_1724
                                    (coe
                                       du_'8712''45'map_394 (coe v0) (coe v1) (coe v2)
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
d_binary'45'unions_632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_632 ~v0 v1 ~v2 v3 v4
  = du_binary'45'unions_632 v1 v3 v4
du_binary'45'unions_632 ::
  T_Theory_82 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_binary'45'unions_632 v0 v1 v2
  = let v3
          = coe
              d_unions_184 v0 erased
              (coe
                 du_fromList_416 (coe v0)
                 (coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                    (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v2)))) in
    coe
      (case coe v3 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
           -> coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                (coe
                   (\ v6 ->
                      coe
                        MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
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
                                                   du_'8712''45'fromList_420 (coe v0)
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
                                                   du_'8712''45'fromList_420 (coe v0)
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
                                              du_'8712''45'fromList_420 (coe v0)
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
d__'8746'__668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__668 ~v0 v1 ~v2 v3 v4 = du__'8746'__668 v1 v3 v4
du__'8746'__668 :: T_Theory_82 -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746'__668 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe du_binary'45'unions_632 (coe v0) (coe v1) (coe v2))
-- Axiom.Set.Theory.∈-∪
d_'8712''45''8746'_676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_676 ~v0 v1 ~v2 v3 v4 v5
  = du_'8712''45''8746'_676 v1 v3 v4 v5
du_'8712''45''8746'_676 ::
  T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45''8746'_676 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe du_binary'45'unions_632 (coe v0) (coe v1) (coe v2)) v3
-- Axiom.Set.Theory.spec-∈
d_spec'45''8712'_678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_Theory_82 -> () -> ()
d_spec'45''8712'_678 = erased
-- Axiom.Set.Theory.Intersection._∩_
d__'8745'__692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__692 ~v0 v1 ~v2 v3 v4 v5 = du__'8745'__692 v1 v3 v4 v5
du__'8745'__692 ::
  T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8745'__692 v0 v1 v2 v3 = coe du_filter_408 v0 (coe v1 v3) v2
-- Axiom.Set.Theory.Intersection.∈-∩
d_'8712''45''8745'_700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_700 ~v0 v1 ~v2 v3 v4 v5 v6
  = du_'8712''45''8745'_700 v1 v3 v4 v5 v6
du_'8712''45''8745'_700 ::
  T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45''8745'_700 v0 v1 v2 v3 v4
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
            du_'8712''45'filter_414 (coe v0) (coe v2) (coe v1 v3) (coe v4)))
      (coe MAlonzo.Code.Data.Product.Algebra.du_'215''45'comm_224)
-- Axiom.Set.Theory.Intersection.disjoint'
d_disjoint''_712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_712 = erased
-- Axiom.Set.Theory.Intersection._＼_
d__'65340'__718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__718 ~v0 v1 ~v2 v3 v4 v5 = du__'65340'__718 v1 v3 v4 v5
du__'65340'__718 ::
  T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'65340'__718 v0 v1 v2 v3
  = coe
      du_filter_408 v0
      (coe
         d_sp'45''172'_70 (d_sp_150 (coe v0)) erased erased (coe v1 v3))
      v2
-- Axiom.Set.Theory.All
d_All_724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_724 = erased
-- Axiom.Set.Theory.Any
d_Any_732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_732 = erased
-- Axiom.Set.Theoryᶠ
d_Theory'7584'_740 = ()
data T_Theory'7584'_740
  = C_Theory'7584''46'constructor_100337 T_Theory_82
                                         (() -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Axiom.Set._._Preservesˢ_
d__Preserves'738'__746 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__746 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__748 ::
  T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__748 = erased
-- Axiom.Set._._∈_
d__'8712'__750 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__750 = erased
-- Axiom.Set._._∉_
d__'8713'__752 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__752 = erased
-- Axiom.Set._._∪_
d__'8746'__754 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__754 v0 v1 v2 v3 = coe du__'8746'__668 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__756 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__756 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__758 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__758 = erased
-- Axiom.Set._._⊆_
d__'8838'__760 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__760 = erased
-- Axiom.Set._.All
d_All_762 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_762 = erased
-- Axiom.Set._.Any
d_Any_764 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_764 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_766 ::
  T_Theory_82 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_766 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_766
du_DecEq'8743'finite'8658'strongly'45'finite_766 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_766 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_306 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_768 :: T_Theory_82 -> () -> ()
d_FinSet_768 = erased
-- Axiom.Set._.Set
d_Set_770 :: T_Theory_82 -> () -> ()
d_Set_770 = erased
-- Axiom.Set._.Show-finite
d_Show'45'finite_772 ::
  T_Theory_82 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_772 ~v0 = du_Show'45'finite_772
du_Show'45'finite_772 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_772 v0 v1 = coe du_Show'45'finite_280 v1
-- Axiom.Set._.binary-unions
d_binary'45'unions_774 ::
  T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_774 v0 v1 v2 v3
  = coe du_binary'45'unions_632 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_776 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_776 ~v0 = du_card_776
du_card_776 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_776 v0 v1 = coe du_card_324 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_778 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_778 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_780 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_780 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_496 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_782 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_782 = erased
-- Axiom.Set._.filter
d_filter_784 ::
  T_Theory_82 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_784 v0 v1 v2 = coe du_filter_408 (coe v0)
-- Axiom.Set._.finite
d_finite_786 :: T_Theory_82 -> () -> AgdaAny -> ()
d_finite_786 = erased
-- Axiom.Set._.fromList
d_fromList_788 :: T_Theory_82 -> () -> [AgdaAny] -> AgdaAny
d_fromList_788 v0 v1 v2 = coe du_fromList_416 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_790 :: T_Theory_82 -> () -> AgdaAny -> ()
d_isMaximal_790 = erased
-- Axiom.Set._.listing
d_listing_792 ::
  T_Theory_82 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_792 v0 = coe d_listing_204 (coe v0)
-- Axiom.Set._.map
d_map_794 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_794 v0 v1 v2 = coe du_map_386 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_796 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_796 v0 v1 v2 v3 = coe du_mapPartial_564 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_798 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_798 ~v0 = du_maximal'45'unique_798
du_maximal'45'unique_798 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_798 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_348 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_800 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_800 ~v0 = du_maximal'45''8838'_800
du_maximal'45''8838'_800 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_800 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_344 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_802 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_802 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_460 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_804 ::
  T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_804 v0 = coe d_replacement_196 (coe v0)
-- Axiom.Set._.singleton
d_singleton_806 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_singleton_806 v0 v1 v2 = coe du_singleton_436 (coe v0) v2
-- Axiom.Set._.sp
d_sp_808 :: T_Theory_82 -> T_SpecProperty_48
d_sp_808 v0 = coe d_sp_150 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_810 ::
  T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_810 v0 = coe d_sp'45''172'_70 (coe d_sp_150 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_812 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_812 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_814 :: T_Theory_82 -> () -> ()
d_spec'45''8712'_814 = erased
-- Axiom.Set._.specProperty
d_specProperty_816 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_816 = erased
-- Axiom.Set._.specification
d_specification_818 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_818 v0 = coe d_specification_174 (coe v0)
-- Axiom.Set._.strictify
d_strictify_820 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_820 v0 v1 v2 v3 v4
  = coe du_strictify_366 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_822 :: T_Theory_82 -> () -> AgdaAny -> ()
d_strongly'45'finite_822 = erased
-- Axiom.Set._.unions
d_unions_824 ::
  T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_824 v0 = coe d_unions_184 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_826 :: T_Theory_82 -> () -> AgdaAny -> ()
d_weakly'45'finite_826 = erased
-- Axiom.Set._.∅
d_'8709'_828 :: T_Theory_82 -> () -> AgdaAny
d_'8709'_828 v0 v1 = coe du_'8709'_430 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_830 ::
  T_Theory_82 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_830 v0 v1
  = coe du_'8709''45'strongly'45'finite_432 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_832 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_832 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_508 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_834 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_834 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_414 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_836 ::
  T_Theory_82 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_836 v0 v1 v2 v3
  = coe du_'8712''45'fromList_420 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_838 :: T_Theory_82 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_838 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_840 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_840 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_394 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_842 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_842 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_574 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_844 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_844 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_400 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_846 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_846 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_472 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_848 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_848 v0 v1 v2 v3
  = coe du_'8712''45'singleton_446 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_850 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_850 v0 v1 v2 v3
  = coe du_'8712''45'unions_428 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_852 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_852 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_676 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_854 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_854 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_854 v5
du_'8801''8594''8712'_854 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_854 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_856 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_856 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_592 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_858 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_858 ~v0
  = du_'8838''45'weakly'45'finite_858
du_'8838''45'weakly'45'finite_858 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_858 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_328 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_860 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_860 v0 = coe du_'10100'_'10101'_440 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__864 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__864 v0 v1 v2 v3 v4
  = coe du__'8745'__692 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection._＼_
d__'65340'__866 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__866 v0 v1 v2 v3 v4
  = coe du__'65340'__718 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_868 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_868 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_870 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_870 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_700 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryᶠ.theory
d_theory_876 :: T_Theory'7584'_740 -> T_Theory_82
d_theory_876 v0
  = case coe v0 of
      C_Theory'7584''46'constructor_100337 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᶠ._._Preservesˢ_
d__Preserves'738'__880 ::
  T_Theory'7584'_740 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__880 = erased
-- Axiom.Set.Theoryᶠ._._Preservesˢ₂_
d__Preserves'738''8322'__882 ::
  T_Theory'7584'_740 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__882 = erased
-- Axiom.Set.Theoryᶠ._._∈_
d__'8712'__884 ::
  T_Theory'7584'_740 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__884 = erased
-- Axiom.Set.Theoryᶠ._._∉_
d__'8713'__886 ::
  T_Theory'7584'_740 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__886 = erased
-- Axiom.Set.Theoryᶠ._._∪_
d__'8746'__888 ::
  T_Theory'7584'_740 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__888 v0 v1 v2 v3
  = coe du__'8746'__668 (coe d_theory_876 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._._≡ᵉ_
d__'8801''7497'__890 ::
  T_Theory'7584'_740 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__890 = erased
-- Axiom.Set.Theoryᶠ._._≡ᵉ'_
d__'8801''7497'''__892 ::
  T_Theory'7584'_740 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__892 = erased
-- Axiom.Set.Theoryᶠ._._⊆_
d__'8838'__894 ::
  T_Theory'7584'_740 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__894 = erased
-- Axiom.Set.Theoryᶠ._.All
d_All_896 ::
  T_Theory'7584'_740 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_896 = erased
-- Axiom.Set.Theoryᶠ._.Any
d_Any_898 ::
  T_Theory'7584'_740 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_898 = erased
-- Axiom.Set.Theoryᶠ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_900 ::
  T_Theory'7584'_740 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_900 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_900
du_DecEq'8743'finite'8658'strongly'45'finite_900 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_900 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_306 v1 v3
-- Axiom.Set.Theoryᶠ._.FinSet
d_FinSet_902 :: T_Theory'7584'_740 -> () -> ()
d_FinSet_902 = erased
-- Axiom.Set.Theoryᶠ._.Set
d_Set_904 :: T_Theory'7584'_740 -> () -> ()
d_Set_904 = erased
-- Axiom.Set.Theoryᶠ._.Show-finite
d_Show'45'finite_906 ::
  T_Theory'7584'_740 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_906 ~v0 = du_Show'45'finite_906
du_Show'45'finite_906 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_906 v0 v1 = coe du_Show'45'finite_280 v1
-- Axiom.Set.Theoryᶠ._.binary-unions
d_binary'45'unions_908 ::
  T_Theory'7584'_740 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_908 v0 v1 v2 v3
  = coe du_binary'45'unions_632 (coe d_theory_876 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.card
d_card_910 ::
  T_Theory'7584'_740 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_910 ~v0 = du_card_910
du_card_910 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_910 v0 v1 = coe du_card_324 v1
-- Axiom.Set.Theoryᶠ._.card-∅
d_card'45''8709'_912 ::
  T_Theory'7584'_740 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_912 = erased
-- Axiom.Set.Theoryᶠ._.concatMapˢ
d_concatMap'738'_914 ::
  T_Theory'7584'_740 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_914 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_496 (coe d_theory_876 (coe v0)) v3 v4
-- Axiom.Set.Theoryᶠ._.disjoint
d_disjoint_916 ::
  T_Theory'7584'_740 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_916 = erased
-- Axiom.Set.Theoryᶠ._.filter
d_filter_918 ::
  T_Theory'7584'_740 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_918 v0 v1 v2
  = coe du_filter_408 (coe d_theory_876 (coe v0))
-- Axiom.Set.Theoryᶠ._.finite
d_finite_920 :: T_Theory'7584'_740 -> () -> AgdaAny -> ()
d_finite_920 = erased
-- Axiom.Set.Theoryᶠ._.fromList
d_fromList_922 :: T_Theory'7584'_740 -> () -> [AgdaAny] -> AgdaAny
d_fromList_922 v0 v1 v2
  = coe du_fromList_416 (coe d_theory_876 (coe v0)) v2
-- Axiom.Set.Theoryᶠ._.isMaximal
d_isMaximal_924 :: T_Theory'7584'_740 -> () -> AgdaAny -> ()
d_isMaximal_924 = erased
-- Axiom.Set.Theoryᶠ._.listing
d_listing_926 ::
  T_Theory'7584'_740 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_926 v0 = coe d_listing_204 (coe d_theory_876 (coe v0))
-- Axiom.Set.Theoryᶠ._.map
d_map_928 ::
  T_Theory'7584'_740 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_928 v0 v1 v2 = coe du_map_386 (coe d_theory_876 (coe v0))
-- Axiom.Set.Theoryᶠ._.mapPartial
d_mapPartial_930 ::
  T_Theory'7584'_740 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_930 v0 v1 v2 v3
  = coe du_mapPartial_564 (coe d_theory_876 (coe v0)) v3
-- Axiom.Set.Theoryᶠ._.maximal-unique
d_maximal'45'unique_932 ::
  T_Theory'7584'_740 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_932 ~v0 = du_maximal'45'unique_932
du_maximal'45'unique_932 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_932 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_348 v3 v4
-- Axiom.Set.Theoryᶠ._.maximal-⊆
d_maximal'45''8838'_934 ::
  T_Theory'7584'_740 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_934 ~v0 = du_maximal'45''8838'_934
du_maximal'45''8838'_934 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_934 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_344 v3 v4
-- Axiom.Set.Theoryᶠ._.partialToSet
d_partialToSet_936 ::
  T_Theory'7584'_740 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_936 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_460 (coe d_theory_876 (coe v0)) v4 v5
-- Axiom.Set.Theoryᶠ._.replacement
d_replacement_938 ::
  T_Theory'7584'_740 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_938 v0
  = coe d_replacement_196 (coe d_theory_876 (coe v0))
-- Axiom.Set.Theoryᶠ._.singleton
d_singleton_940 :: T_Theory'7584'_740 -> () -> AgdaAny -> AgdaAny
d_singleton_940 v0 v1 v2
  = coe du_singleton_436 (coe d_theory_876 (coe v0)) v2
-- Axiom.Set.Theoryᶠ._.sp
d_sp_942 :: T_Theory'7584'_740 -> T_SpecProperty_48
d_sp_942 v0 = coe d_sp_150 (coe d_theory_876 (coe v0))
-- Axiom.Set.Theoryᶠ._.sp-¬
d_sp'45''172'_944 ::
  T_Theory'7584'_740 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_944 v0
  = coe d_sp'45''172'_70 (coe d_sp_150 (coe d_theory_876 (coe v0)))
-- Axiom.Set.Theoryᶠ._.sp-∘
d_sp'45''8728'_946 ::
  T_Theory'7584'_740 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_946 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe d_theory_876 (coe v0)))
-- Axiom.Set.Theoryᶠ._.spec-∈
d_spec'45''8712'_948 :: T_Theory'7584'_740 -> () -> ()
d_spec'45''8712'_948 = erased
-- Axiom.Set.Theoryᶠ._.specProperty
d_specProperty_950 ::
  T_Theory'7584'_740 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_950 = erased
-- Axiom.Set.Theoryᶠ._.specification
d_specification_952 ::
  T_Theory'7584'_740 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_952 v0
  = coe d_specification_174 (coe d_theory_876 (coe v0))
-- Axiom.Set.Theoryᶠ._.strictify
d_strictify_954 ::
  T_Theory'7584'_740 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_954 v0 v1 v2 v3 v4
  = coe du_strictify_366 (coe d_theory_876 (coe v0)) v3 v4
-- Axiom.Set.Theoryᶠ._.strongly-finite
d_strongly'45'finite_956 ::
  T_Theory'7584'_740 -> () -> AgdaAny -> ()
d_strongly'45'finite_956 = erased
-- Axiom.Set.Theoryᶠ._.unions
d_unions_958 ::
  T_Theory'7584'_740 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_958 v0 = coe d_unions_184 (coe d_theory_876 (coe v0))
-- Axiom.Set.Theoryᶠ._.weakly-finite
d_weakly'45'finite_960 :: T_Theory'7584'_740 -> () -> AgdaAny -> ()
d_weakly'45'finite_960 = erased
-- Axiom.Set.Theoryᶠ._.∅
d_'8709'_962 :: T_Theory'7584'_740 -> () -> AgdaAny
d_'8709'_962 v0 v1 = coe du_'8709'_430 (coe d_theory_876 (coe v0))
-- Axiom.Set.Theoryᶠ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_964 ::
  T_Theory'7584'_740 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_964 v0 v1
  = coe
      du_'8709''45'strongly'45'finite_432 (coe d_theory_876 (coe v0))
-- Axiom.Set.Theoryᶠ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_966 ::
  T_Theory'7584'_740 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_966 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_508 (coe d_theory_876 (coe v0)) v3 v4
      v5
-- Axiom.Set.Theoryᶠ._.∈-filter
d_'8712''45'filter_968 ::
  T_Theory'7584'_740 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_968 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_414 (coe d_theory_876 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-fromList
d_'8712''45'fromList_970 ::
  T_Theory'7584'_740 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_970 v0 v1 v2 v3
  = coe du_'8712''45'fromList_420 (coe d_theory_876 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-irrelevant
d_'8712''45'irrelevant_972 ::
  T_Theory'7584'_740 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_972 = erased
-- Axiom.Set.Theoryᶠ._.∈-map
d_'8712''45'map_974 ::
  T_Theory'7584'_740 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_974 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_394 (coe d_theory_876 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-mapPartial
d_'8712''45'mapPartial_976 ::
  T_Theory'7584'_740 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_976 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'mapPartial_574 (coe d_theory_876 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-map′
d_'8712''45'map'8242'_978 ::
  T_Theory'7584'_740 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_978 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_400 (coe d_theory_876 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᶠ._.∈-partialToSet
d_'8712''45'partialToSet_980 ::
  T_Theory'7584'_740 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_980 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_472 (coe d_theory_876 (coe v0)) v5
-- Axiom.Set.Theoryᶠ._.∈-singleton
d_'8712''45'singleton_982 ::
  T_Theory'7584'_740 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_982 v0 v1 v2 v3
  = coe du_'8712''45'singleton_446 (coe d_theory_876 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-unions
d_'8712''45'unions_984 ::
  T_Theory'7584'_740 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_984 v0 v1 v2 v3
  = coe du_'8712''45'unions_428 (coe d_theory_876 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-∪
d_'8712''45''8746'_986 ::
  T_Theory'7584'_740 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_986 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_676 (coe d_theory_876 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᶠ._.≡→∈
d_'8801''8594''8712'_988 ::
  T_Theory'7584'_740 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_988 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_988 v5
du_'8801''8594''8712'_988 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_988 v0 = coe v0
-- Axiom.Set.Theoryᶠ._.⊆-mapPartial
d_'8838''45'mapPartial_990 ::
  T_Theory'7584'_740 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_990 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_592 (coe d_theory_876 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᶠ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_992 ::
  T_Theory'7584'_740 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_992 ~v0
  = du_'8838''45'weakly'45'finite_992
du_'8838''45'weakly'45'finite_992 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_992 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_328 v3 v4
-- Axiom.Set.Theoryᶠ._.❴_❵
d_'10100'_'10101'_994 ::
  T_Theory'7584'_740 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_994 v0
  = coe du_'10100'_'10101'_440 (coe d_theory_876 (coe v0))
-- Axiom.Set.Theoryᶠ._.Intersection._∩_
d__'8745'__998 ::
  T_Theory'7584'_740 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__998 v0 v1 v2 v3 v4
  = coe du__'8745'__692 (coe d_theory_876 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᶠ._.Intersection._＼_
d__'65340'__1000 ::
  T_Theory'7584'_740 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1000 v0 v1 v2 v3 v4
  = coe du__'65340'__718 (coe d_theory_876 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᶠ._.Intersection.disjoint'
d_disjoint''_1002 ::
  T_Theory'7584'_740 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1002 = erased
-- Axiom.Set.Theoryᶠ._.Intersection.∈-∩
d_'8712''45''8745'_1004 ::
  T_Theory'7584'_740 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1004 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45''8745'_700 (coe d_theory_876 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryᶠ.finiteness
d_finiteness_1008 ::
  T_Theory'7584'_740 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_finiteness_1008 v0
  = case coe v0 of
      C_Theory'7584''46'constructor_100337 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᶠ.DecEq⇒strongly-finite
d_DecEq'8658'strongly'45'finite_1012 ::
  T_Theory'7584'_740 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8658'strongly'45'finite_1012 v0 ~v1 v2 v3
  = du_DecEq'8658'strongly'45'finite_1012 v0 v2 v3
du_DecEq'8658'strongly'45'finite_1012 ::
  T_Theory'7584'_740 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8658'strongly'45'finite_1012 v0 v1 v2
  = coe
      du_DecEq'8743'finite'8658'strongly'45'finite_306 (coe v1)
      (coe d_finiteness_1008 v0 erased v2)
-- Axiom.Set.Theoryᶠ.lengthˢ
d_length'738'_1016 ::
  T_Theory'7584'_740 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> Integer
d_length'738'_1016 v0 ~v1 v2 v3 = du_length'738'_1016 v0 v2 v3
du_length'738'_1016 ::
  T_Theory'7584'_740 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> Integer
du_length'738'_1016 v0 v1 v2
  = coe
      du_card_324
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
         (coe
            du_DecEq'8658'strongly'45'finite_1012 (coe v0) (coe v1) (coe v2)))
-- Axiom.Set.Theoryᶠ._.Show-Set
d_Show'45'Set_1028 ::
  T_Theory'7584'_740 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Set_1028 v0 ~v1 v2 = du_Show'45'Set_1028 v0 v2
du_Show'45'Set_1028 ::
  T_Theory'7584'_740 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Set_1028 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.String.Base.d_braces_48
              (coe
                 MAlonzo.Code.Data.String.Base.d_intersperse_30
                 (", " :: Data.Text.Text)
                 (coe
                    MAlonzo.Code.Data.List.Base.du_map_22
                    (coe MAlonzo.Code.Class.Show.Core.d_show_16 (coe v1))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe d_finiteness_1008 v0 erased v2))))))
-- Axiom.Set.Theoryⁱ
d_Theory'8305'_1032 = ()
data T_Theory'8305'_1032
  = C_Theory'8305''46'constructor_103903 T_Theory_82
                                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Axiom.Set._._Preservesˢ_
d__Preserves'738'__1038 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1038 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__1040 ::
  T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1040 = erased
-- Axiom.Set._._∈_
d__'8712'__1042 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1042 = erased
-- Axiom.Set._._∉_
d__'8713'__1044 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1044 = erased
-- Axiom.Set._._∪_
d__'8746'__1046 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1046 v0 v1 v2 v3 = coe du__'8746'__668 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__1048 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1048 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__1050 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1050 = erased
-- Axiom.Set._._⊆_
d__'8838'__1052 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1052 = erased
-- Axiom.Set._.All
d_All_1054 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1054 = erased
-- Axiom.Set._.Any
d_Any_1056 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1056 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1058 ::
  T_Theory_82 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1058 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1058
du_DecEq'8743'finite'8658'strongly'45'finite_1058 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1058 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_306 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_1060 :: T_Theory_82 -> () -> ()
d_FinSet_1060 = erased
-- Axiom.Set._.Set
d_Set_1062 :: T_Theory_82 -> () -> ()
d_Set_1062 = erased
-- Axiom.Set._.Show-finite
d_Show'45'finite_1064 ::
  T_Theory_82 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_1064 ~v0 = du_Show'45'finite_1064
du_Show'45'finite_1064 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_1064 v0 v1 = coe du_Show'45'finite_280 v1
-- Axiom.Set._.binary-unions
d_binary'45'unions_1066 ::
  T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1066 v0 v1 v2 v3
  = coe du_binary'45'unions_632 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_1068 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1068 ~v0 = du_card_1068
du_card_1068 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1068 v0 v1 = coe du_card_324 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_1070 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1070 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_1072 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1072 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_496 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_1074 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1074 = erased
-- Axiom.Set._.filter
d_filter_1076 ::
  T_Theory_82 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1076 v0 v1 v2 = coe du_filter_408 (coe v0)
-- Axiom.Set._.finite
d_finite_1078 :: T_Theory_82 -> () -> AgdaAny -> ()
d_finite_1078 = erased
-- Axiom.Set._.fromList
d_fromList_1080 :: T_Theory_82 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1080 v0 v1 v2 = coe du_fromList_416 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_1082 :: T_Theory_82 -> () -> AgdaAny -> ()
d_isMaximal_1082 = erased
-- Axiom.Set._.listing
d_listing_1084 ::
  T_Theory_82 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1084 v0 = coe d_listing_204 (coe v0)
-- Axiom.Set._.map
d_map_1086 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1086 v0 v1 v2 = coe du_map_386 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_1088 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1088 v0 v1 v2 v3 = coe du_mapPartial_564 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_1090 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1090 ~v0 = du_maximal'45'unique_1090
du_maximal'45'unique_1090 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1090 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_348 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_1092 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1092 ~v0 = du_maximal'45''8838'_1092
du_maximal'45''8838'_1092 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1092 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_344 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_1094 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1094 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_460 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_1096 ::
  T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1096 v0 = coe d_replacement_196 (coe v0)
-- Axiom.Set._.singleton
d_singleton_1098 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_singleton_1098 v0 v1 v2 = coe du_singleton_436 (coe v0) v2
-- Axiom.Set._.sp
d_sp_1100 :: T_Theory_82 -> T_SpecProperty_48
d_sp_1100 v0 = coe d_sp_150 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_1102 ::
  T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1102 v0
  = coe d_sp'45''172'_70 (coe d_sp_150 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_1104 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1104 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_1106 :: T_Theory_82 -> () -> ()
d_spec'45''8712'_1106 = erased
-- Axiom.Set._.specProperty
d_specProperty_1108 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1108 = erased
-- Axiom.Set._.specification
d_specification_1110 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1110 v0 = coe d_specification_174 (coe v0)
-- Axiom.Set._.strictify
d_strictify_1112 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1112 v0 v1 v2 v3 v4
  = coe du_strictify_366 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_1114 :: T_Theory_82 -> () -> AgdaAny -> ()
d_strongly'45'finite_1114 = erased
-- Axiom.Set._.unions
d_unions_1116 ::
  T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1116 v0 = coe d_unions_184 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_1118 :: T_Theory_82 -> () -> AgdaAny -> ()
d_weakly'45'finite_1118 = erased
-- Axiom.Set._.∅
d_'8709'_1120 :: T_Theory_82 -> () -> AgdaAny
d_'8709'_1120 v0 v1 = coe du_'8709'_430 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1122 ::
  T_Theory_82 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1122 v0 v1
  = coe du_'8709''45'strongly'45'finite_432 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1124 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_1124 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_508 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_1126 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_1126 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_414 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_1128 ::
  T_Theory_82 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_1128 v0 v1 v2 v3
  = coe du_'8712''45'fromList_420 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_1130 :: T_Theory_82 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1130 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_1132 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_1132 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_394 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_1134 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_1134 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_574 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_1136 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1136 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_400 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_1138 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_1138 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_472 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_1140 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_1140 v0 v1 v2 v3
  = coe du_'8712''45'singleton_446 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_1142 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_1142 v0 v1 v2 v3
  = coe du_'8712''45'unions_428 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_1144 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_1144 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_676 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_1146 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1146 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1146 v5
du_'8801''8594''8712'_1146 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1146 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_1148 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1148 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_592 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1150 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1150 ~v0
  = du_'8838''45'weakly'45'finite_1150
du_'8838''45'weakly'45'finite_1150 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1150 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_328 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_1152 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1152 v0 = coe du_'10100'_'10101'_440 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__1156 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1156 v0 v1 v2 v3 v4
  = coe du__'8745'__692 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection._＼_
d__'65340'__1158 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1158 v0 v1 v2 v3 v4
  = coe du__'65340'__718 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_1160 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1160 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_1162 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1162 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_700 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryⁱ.theory
d_theory_1170 :: T_Theory'8305'_1032 -> T_Theory_82
d_theory_1170 v0
  = case coe v0 of
      C_Theory'8305''46'constructor_103903 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryⁱ._._Preservesˢ_
d__Preserves'738'__1174 ::
  T_Theory'8305'_1032 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1174 = erased
-- Axiom.Set.Theoryⁱ._._Preservesˢ₂_
d__Preserves'738''8322'__1176 ::
  T_Theory'8305'_1032 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1176 = erased
-- Axiom.Set.Theoryⁱ._._∈_
d__'8712'__1178 ::
  T_Theory'8305'_1032 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1178 = erased
-- Axiom.Set.Theoryⁱ._._∉_
d__'8713'__1180 ::
  T_Theory'8305'_1032 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1180 = erased
-- Axiom.Set.Theoryⁱ._._∪_
d__'8746'__1182 ::
  T_Theory'8305'_1032 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1182 v0 v1 v2 v3
  = coe du__'8746'__668 (coe d_theory_1170 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._._≡ᵉ_
d__'8801''7497'__1184 ::
  T_Theory'8305'_1032 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1184 = erased
-- Axiom.Set.Theoryⁱ._._≡ᵉ'_
d__'8801''7497'''__1186 ::
  T_Theory'8305'_1032 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1186 = erased
-- Axiom.Set.Theoryⁱ._._⊆_
d__'8838'__1188 ::
  T_Theory'8305'_1032 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1188 = erased
-- Axiom.Set.Theoryⁱ._.All
d_All_1190 ::
  T_Theory'8305'_1032 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1190 = erased
-- Axiom.Set.Theoryⁱ._.Any
d_Any_1192 ::
  T_Theory'8305'_1032 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1192 = erased
-- Axiom.Set.Theoryⁱ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1194 ::
  T_Theory'8305'_1032 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1194 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1194
du_DecEq'8743'finite'8658'strongly'45'finite_1194 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1194 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_306 v1 v3
-- Axiom.Set.Theoryⁱ._.FinSet
d_FinSet_1196 :: T_Theory'8305'_1032 -> () -> ()
d_FinSet_1196 = erased
-- Axiom.Set.Theoryⁱ._.Set
d_Set_1198 :: T_Theory'8305'_1032 -> () -> ()
d_Set_1198 = erased
-- Axiom.Set.Theoryⁱ._.Show-finite
d_Show'45'finite_1200 ::
  T_Theory'8305'_1032 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_1200 ~v0 = du_Show'45'finite_1200
du_Show'45'finite_1200 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_1200 v0 v1 = coe du_Show'45'finite_280 v1
-- Axiom.Set.Theoryⁱ._.binary-unions
d_binary'45'unions_1202 ::
  T_Theory'8305'_1032 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1202 v0 v1 v2 v3
  = coe du_binary'45'unions_632 (coe d_theory_1170 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.card
d_card_1204 ::
  T_Theory'8305'_1032 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1204 ~v0 = du_card_1204
du_card_1204 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1204 v0 v1 = coe du_card_324 v1
-- Axiom.Set.Theoryⁱ._.card-∅
d_card'45''8709'_1206 ::
  T_Theory'8305'_1032 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1206 = erased
-- Axiom.Set.Theoryⁱ._.concatMapˢ
d_concatMap'738'_1208 ::
  T_Theory'8305'_1032 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1208 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_496 (coe d_theory_1170 (coe v0)) v3 v4
-- Axiom.Set.Theoryⁱ._.disjoint
d_disjoint_1210 ::
  T_Theory'8305'_1032 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1210 = erased
-- Axiom.Set.Theoryⁱ._.filter
d_filter_1212 ::
  T_Theory'8305'_1032 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1212 v0 v1 v2
  = coe du_filter_408 (coe d_theory_1170 (coe v0))
-- Axiom.Set.Theoryⁱ._.finite
d_finite_1214 :: T_Theory'8305'_1032 -> () -> AgdaAny -> ()
d_finite_1214 = erased
-- Axiom.Set.Theoryⁱ._.fromList
d_fromList_1216 ::
  T_Theory'8305'_1032 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1216 v0 v1 v2
  = coe du_fromList_416 (coe d_theory_1170 (coe v0)) v2
-- Axiom.Set.Theoryⁱ._.isMaximal
d_isMaximal_1218 :: T_Theory'8305'_1032 -> () -> AgdaAny -> ()
d_isMaximal_1218 = erased
-- Axiom.Set.Theoryⁱ._.listing
d_listing_1220 ::
  T_Theory'8305'_1032 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1220 v0 = coe d_listing_204 (coe d_theory_1170 (coe v0))
-- Axiom.Set.Theoryⁱ._.map
d_map_1222 ::
  T_Theory'8305'_1032 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1222 v0 v1 v2 = coe du_map_386 (coe d_theory_1170 (coe v0))
-- Axiom.Set.Theoryⁱ._.mapPartial
d_mapPartial_1224 ::
  T_Theory'8305'_1032 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1224 v0 v1 v2 v3
  = coe du_mapPartial_564 (coe d_theory_1170 (coe v0)) v3
-- Axiom.Set.Theoryⁱ._.maximal-unique
d_maximal'45'unique_1226 ::
  T_Theory'8305'_1032 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1226 ~v0 = du_maximal'45'unique_1226
du_maximal'45'unique_1226 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1226 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_348 v3 v4
-- Axiom.Set.Theoryⁱ._.maximal-⊆
d_maximal'45''8838'_1228 ::
  T_Theory'8305'_1032 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1228 ~v0 = du_maximal'45''8838'_1228
du_maximal'45''8838'_1228 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1228 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_344 v3 v4
-- Axiom.Set.Theoryⁱ._.partialToSet
d_partialToSet_1230 ::
  T_Theory'8305'_1032 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1230 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_460 (coe d_theory_1170 (coe v0)) v4 v5
-- Axiom.Set.Theoryⁱ._.replacement
d_replacement_1232 ::
  T_Theory'8305'_1032 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1232 v0
  = coe d_replacement_196 (coe d_theory_1170 (coe v0))
-- Axiom.Set.Theoryⁱ._.singleton
d_singleton_1234 :: T_Theory'8305'_1032 -> () -> AgdaAny -> AgdaAny
d_singleton_1234 v0 v1 v2
  = coe du_singleton_436 (coe d_theory_1170 (coe v0)) v2
-- Axiom.Set.Theoryⁱ._.sp
d_sp_1236 :: T_Theory'8305'_1032 -> T_SpecProperty_48
d_sp_1236 v0 = coe d_sp_150 (coe d_theory_1170 (coe v0))
-- Axiom.Set.Theoryⁱ._.sp-¬
d_sp'45''172'_1238 ::
  T_Theory'8305'_1032 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1238 v0
  = coe d_sp'45''172'_70 (coe d_sp_150 (coe d_theory_1170 (coe v0)))
-- Axiom.Set.Theoryⁱ._.sp-∘
d_sp'45''8728'_1240 ::
  T_Theory'8305'_1032 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1240 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe d_theory_1170 (coe v0)))
-- Axiom.Set.Theoryⁱ._.spec-∈
d_spec'45''8712'_1242 :: T_Theory'8305'_1032 -> () -> ()
d_spec'45''8712'_1242 = erased
-- Axiom.Set.Theoryⁱ._.specProperty
d_specProperty_1244 ::
  T_Theory'8305'_1032 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1244 = erased
-- Axiom.Set.Theoryⁱ._.specification
d_specification_1246 ::
  T_Theory'8305'_1032 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1246 v0
  = coe d_specification_174 (coe d_theory_1170 (coe v0))
-- Axiom.Set.Theoryⁱ._.strictify
d_strictify_1248 ::
  T_Theory'8305'_1032 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1248 v0 v1 v2 v3 v4
  = coe du_strictify_366 (coe d_theory_1170 (coe v0)) v3 v4
-- Axiom.Set.Theoryⁱ._.strongly-finite
d_strongly'45'finite_1250 ::
  T_Theory'8305'_1032 -> () -> AgdaAny -> ()
d_strongly'45'finite_1250 = erased
-- Axiom.Set.Theoryⁱ._.unions
d_unions_1252 ::
  T_Theory'8305'_1032 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1252 v0 = coe d_unions_184 (coe d_theory_1170 (coe v0))
-- Axiom.Set.Theoryⁱ._.weakly-finite
d_weakly'45'finite_1254 ::
  T_Theory'8305'_1032 -> () -> AgdaAny -> ()
d_weakly'45'finite_1254 = erased
-- Axiom.Set.Theoryⁱ._.∅
d_'8709'_1256 :: T_Theory'8305'_1032 -> () -> AgdaAny
d_'8709'_1256 v0 v1
  = coe du_'8709'_430 (coe d_theory_1170 (coe v0))
-- Axiom.Set.Theoryⁱ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1258 ::
  T_Theory'8305'_1032 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1258 v0 v1
  = coe
      du_'8709''45'strongly'45'finite_432 (coe d_theory_1170 (coe v0))
-- Axiom.Set.Theoryⁱ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1260 ::
  T_Theory'8305'_1032 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_1260 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_508 (coe d_theory_1170 (coe v0)) v3 v4
      v5
-- Axiom.Set.Theoryⁱ._.∈-filter
d_'8712''45'filter_1262 ::
  T_Theory'8305'_1032 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_1262 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_414 (coe d_theory_1170 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-fromList
d_'8712''45'fromList_1264 ::
  T_Theory'8305'_1032 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_1264 v0 v1 v2 v3
  = coe du_'8712''45'fromList_420 (coe d_theory_1170 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-irrelevant
d_'8712''45'irrelevant_1266 ::
  T_Theory'8305'_1032 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1266 = erased
-- Axiom.Set.Theoryⁱ._.∈-map
d_'8712''45'map_1268 ::
  T_Theory'8305'_1032 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_1268 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_394 (coe d_theory_1170 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-mapPartial
d_'8712''45'mapPartial_1270 ::
  T_Theory'8305'_1032 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_1270 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'mapPartial_574 (coe d_theory_1170 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-map′
d_'8712''45'map'8242'_1272 ::
  T_Theory'8305'_1032 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1272 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_400 (coe d_theory_1170 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryⁱ._.∈-partialToSet
d_'8712''45'partialToSet_1274 ::
  T_Theory'8305'_1032 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_1274 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_472 (coe d_theory_1170 (coe v0)) v5
-- Axiom.Set.Theoryⁱ._.∈-singleton
d_'8712''45'singleton_1276 ::
  T_Theory'8305'_1032 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_1276 v0 v1 v2 v3
  = coe du_'8712''45'singleton_446 (coe d_theory_1170 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-unions
d_'8712''45'unions_1278 ::
  T_Theory'8305'_1032 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_1278 v0 v1 v2 v3
  = coe du_'8712''45'unions_428 (coe d_theory_1170 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-∪
d_'8712''45''8746'_1280 ::
  T_Theory'8305'_1032 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_1280 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_676 (coe d_theory_1170 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryⁱ._.≡→∈
d_'8801''8594''8712'_1282 ::
  T_Theory'8305'_1032 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1282 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1282 v5
du_'8801''8594''8712'_1282 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1282 v0 = coe v0
-- Axiom.Set.Theoryⁱ._.⊆-mapPartial
d_'8838''45'mapPartial_1284 ::
  T_Theory'8305'_1032 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1284 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_592 (coe d_theory_1170 (coe v0)) v3 v4 v5
      v6
-- Axiom.Set.Theoryⁱ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1286 ::
  T_Theory'8305'_1032 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1286 ~v0
  = du_'8838''45'weakly'45'finite_1286
du_'8838''45'weakly'45'finite_1286 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1286 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_328 v3 v4
-- Axiom.Set.Theoryⁱ._.❴_❵
d_'10100'_'10101'_1288 ::
  T_Theory'8305'_1032 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1288 v0
  = coe du_'10100'_'10101'_440 (coe d_theory_1170 (coe v0))
-- Axiom.Set.Theoryⁱ._.Intersection._∩_
d__'8745'__1292 ::
  T_Theory'8305'_1032 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1292 v0 v1 v2 v3 v4
  = coe du__'8745'__692 (coe d_theory_1170 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryⁱ._.Intersection._＼_
d__'65340'__1294 ::
  T_Theory'8305'_1032 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1294 v0 v1 v2 v3 v4
  = coe du__'65340'__718 (coe d_theory_1170 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryⁱ._.Intersection.disjoint'
d_disjoint''_1296 ::
  T_Theory'8305'_1032 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1296 = erased
-- Axiom.Set.Theoryⁱ._.Intersection.∈-∩
d_'8712''45''8745'_1298 ::
  T_Theory'8305'_1032 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1298 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45''8745'_700 (coe d_theory_1170 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryⁱ.infinity
d_infinity_1304 ::
  T_Theory'8305'_1032 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infinity_1304 v0
  = case coe v0 of
      C_Theory'8305''46'constructor_103903 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ
d_Theory'7496'_1306 = ()
data T_Theory'7496'_1306
  = C_Theory'7496''46'constructor_107467 T_Theory_82
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
d__Preserves'738'__1312 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1312 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__1314 ::
  T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1314 = erased
-- Axiom.Set._._∈_
d__'8712'__1316 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1316 = erased
-- Axiom.Set._._∉_
d__'8713'__1318 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1318 = erased
-- Axiom.Set._._∪_
d__'8746'__1320 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1320 v0 v1 v2 v3 = coe du__'8746'__668 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__1322 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1322 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__1324 ::
  T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1324 = erased
-- Axiom.Set._._⊆_
d__'8838'__1326 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1326 = erased
-- Axiom.Set._.All
d_All_1328 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1328 = erased
-- Axiom.Set._.Any
d_Any_1330 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1330 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1332 ::
  T_Theory_82 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1332 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1332
du_DecEq'8743'finite'8658'strongly'45'finite_1332 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1332 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_306 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_1334 :: T_Theory_82 -> () -> ()
d_FinSet_1334 = erased
-- Axiom.Set._.Set
d_Set_1336 :: T_Theory_82 -> () -> ()
d_Set_1336 = erased
-- Axiom.Set._.Show-finite
d_Show'45'finite_1338 ::
  T_Theory_82 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_1338 ~v0 = du_Show'45'finite_1338
du_Show'45'finite_1338 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_1338 v0 v1 = coe du_Show'45'finite_280 v1
-- Axiom.Set._.binary-unions
d_binary'45'unions_1340 ::
  T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1340 v0 v1 v2 v3
  = coe du_binary'45'unions_632 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_1342 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1342 ~v0 = du_card_1342
du_card_1342 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1342 v0 v1 = coe du_card_324 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_1344 ::
  T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1344 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_1346 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1346 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_496 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_1348 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1348 = erased
-- Axiom.Set._.filter
d_filter_1350 ::
  T_Theory_82 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1350 v0 v1 v2 = coe du_filter_408 (coe v0)
-- Axiom.Set._.finite
d_finite_1352 :: T_Theory_82 -> () -> AgdaAny -> ()
d_finite_1352 = erased
-- Axiom.Set._.fromList
d_fromList_1354 :: T_Theory_82 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1354 v0 v1 v2 = coe du_fromList_416 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_1356 :: T_Theory_82 -> () -> AgdaAny -> ()
d_isMaximal_1356 = erased
-- Axiom.Set._.listing
d_listing_1358 ::
  T_Theory_82 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1358 v0 = coe d_listing_204 (coe v0)
-- Axiom.Set._.map
d_map_1360 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1360 v0 v1 v2 = coe du_map_386 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_1362 ::
  T_Theory_82 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1362 v0 v1 v2 v3 = coe du_mapPartial_564 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_1364 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1364 ~v0 = du_maximal'45'unique_1364
du_maximal'45'unique_1364 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1364 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_348 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_1366 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1366 ~v0 = du_maximal'45''8838'_1366
du_maximal'45''8838'_1366 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1366 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_344 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_1368 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1368 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_460 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_1370 ::
  T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1370 v0 = coe d_replacement_196 (coe v0)
-- Axiom.Set._.singleton
d_singleton_1372 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_singleton_1372 v0 v1 v2 = coe du_singleton_436 (coe v0) v2
-- Axiom.Set._.sp
d_sp_1374 :: T_Theory_82 -> T_SpecProperty_48
d_sp_1374 v0 = coe d_sp_150 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_1376 ::
  T_Theory_82 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1376 v0
  = coe d_sp'45''172'_70 (coe d_sp_150 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_1378 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1378 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_1380 :: T_Theory_82 -> () -> ()
d_spec'45''8712'_1380 = erased
-- Axiom.Set._.specProperty
d_specProperty_1382 :: T_Theory_82 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1382 = erased
-- Axiom.Set._.specification
d_specification_1384 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1384 v0 = coe d_specification_174 (coe v0)
-- Axiom.Set._.strictify
d_strictify_1386 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1386 v0 v1 v2 v3 v4
  = coe du_strictify_366 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_1388 :: T_Theory_82 -> () -> AgdaAny -> ()
d_strongly'45'finite_1388 = erased
-- Axiom.Set._.unions
d_unions_1390 ::
  T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1390 v0 = coe d_unions_184 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_1392 :: T_Theory_82 -> () -> AgdaAny -> ()
d_weakly'45'finite_1392 = erased
-- Axiom.Set._.∅
d_'8709'_1394 :: T_Theory_82 -> () -> AgdaAny
d_'8709'_1394 v0 v1 = coe du_'8709'_430 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1396 ::
  T_Theory_82 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1396 v0 v1
  = coe du_'8709''45'strongly'45'finite_432 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1398 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_1398 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_508 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_1400 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_1400 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_414 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_1402 ::
  T_Theory_82 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_1402 v0 v1 v2 v3
  = coe du_'8712''45'fromList_420 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_1404 :: T_Theory_82 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1404 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_1406 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_1406 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_394 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_1408 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_1408 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_574 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_1410 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1410 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_400 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_1412 ::
  T_Theory_82 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_1412 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_472 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_1414 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_1414 v0 v1 v2 v3
  = coe du_'8712''45'singleton_446 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_1416 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_1416 v0 v1 v2 v3
  = coe du_'8712''45'unions_428 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_1418 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_1418 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_676 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_1420 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1420 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1420 v5
du_'8801''8594''8712'_1420 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1420 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_1422 ::
  T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1422 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_592 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1424 ::
  T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1424 ~v0
  = du_'8838''45'weakly'45'finite_1424
du_'8838''45'weakly'45'finite_1424 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1424 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_328 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_1426 :: T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1426 v0 = coe du_'10100'_'10101'_440 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__1430 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1430 v0 v1 v2 v3 v4
  = coe du__'8745'__692 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection._＼_
d__'65340'__1432 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1432 v0 v1 v2 v3 v4
  = coe du__'65340'__718 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_1434 ::
  T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1434 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_1436 ::
  T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1436 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_700 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryᵈ.th
d_th_1458 :: T_Theory'7496'_1306 -> T_Theory_82
d_th_1458 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_107467 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._._Preservesˢ_
d__Preserves'738'__1462 ::
  T_Theory'7496'_1306 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1462 = erased
-- Axiom.Set.Theoryᵈ._._Preservesˢ₂_
d__Preserves'738''8322'__1464 ::
  T_Theory'7496'_1306 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1464 = erased
-- Axiom.Set.Theoryᵈ._._∈_
d__'8712'__1466 ::
  T_Theory'7496'_1306 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1466 = erased
-- Axiom.Set.Theoryᵈ._._∉_
d__'8713'__1468 ::
  T_Theory'7496'_1306 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1468 = erased
-- Axiom.Set.Theoryᵈ._._∪_
d__'8746'__1470 ::
  T_Theory'7496'_1306 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1470 v0 v1 v2 v3
  = coe du__'8746'__668 (coe d_th_1458 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._._≡ᵉ_
d__'8801''7497'__1472 ::
  T_Theory'7496'_1306 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1472 = erased
-- Axiom.Set.Theoryᵈ._._≡ᵉ'_
d__'8801''7497'''__1474 ::
  T_Theory'7496'_1306 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1474 = erased
-- Axiom.Set.Theoryᵈ._._⊆_
d__'8838'__1476 ::
  T_Theory'7496'_1306 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1476 = erased
-- Axiom.Set.Theoryᵈ._.All
d_All_1478 ::
  T_Theory'7496'_1306 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1478 = erased
-- Axiom.Set.Theoryᵈ._.Any
d_Any_1480 ::
  T_Theory'7496'_1306 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1480 = erased
-- Axiom.Set.Theoryᵈ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1482 ::
  T_Theory'7496'_1306 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1482 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1482
du_DecEq'8743'finite'8658'strongly'45'finite_1482 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1482 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_306 v1 v3
-- Axiom.Set.Theoryᵈ._.FinSet
d_FinSet_1484 :: T_Theory'7496'_1306 -> () -> ()
d_FinSet_1484 = erased
-- Axiom.Set.Theoryᵈ._.Set
d_Set_1486 :: T_Theory'7496'_1306 -> () -> ()
d_Set_1486 = erased
-- Axiom.Set.Theoryᵈ._.Show-finite
d_Show'45'finite_1488 ::
  T_Theory'7496'_1306 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_1488 ~v0 = du_Show'45'finite_1488
du_Show'45'finite_1488 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_1488 v0 v1 = coe du_Show'45'finite_280 v1
-- Axiom.Set.Theoryᵈ._.binary-unions
d_binary'45'unions_1490 ::
  T_Theory'7496'_1306 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1490 v0 v1 v2 v3
  = coe du_binary'45'unions_632 (coe d_th_1458 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.card
d_card_1492 ::
  T_Theory'7496'_1306 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1492 ~v0 = du_card_1492
du_card_1492 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1492 v0 v1 = coe du_card_324 v1
-- Axiom.Set.Theoryᵈ._.card-∅
d_card'45''8709'_1494 ::
  T_Theory'7496'_1306 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1494 = erased
-- Axiom.Set.Theoryᵈ._.concatMapˢ
d_concatMap'738'_1496 ::
  T_Theory'7496'_1306 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1496 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_496 (coe d_th_1458 (coe v0)) v3 v4
-- Axiom.Set.Theoryᵈ._.disjoint
d_disjoint_1498 ::
  T_Theory'7496'_1306 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1498 = erased
-- Axiom.Set.Theoryᵈ._.filter
d_filter_1500 ::
  T_Theory'7496'_1306 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1500 v0 v1 v2 = coe du_filter_408 (coe d_th_1458 (coe v0))
-- Axiom.Set.Theoryᵈ._.finite
d_finite_1502 :: T_Theory'7496'_1306 -> () -> AgdaAny -> ()
d_finite_1502 = erased
-- Axiom.Set.Theoryᵈ._.fromList
d_fromList_1504 ::
  T_Theory'7496'_1306 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1504 v0 v1 v2
  = coe du_fromList_416 (coe d_th_1458 (coe v0)) v2
-- Axiom.Set.Theoryᵈ._.isMaximal
d_isMaximal_1506 :: T_Theory'7496'_1306 -> () -> AgdaAny -> ()
d_isMaximal_1506 = erased
-- Axiom.Set.Theoryᵈ._.listing
d_listing_1508 ::
  T_Theory'7496'_1306 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1508 v0 = coe d_listing_204 (coe d_th_1458 (coe v0))
-- Axiom.Set.Theoryᵈ._.map
d_map_1510 ::
  T_Theory'7496'_1306 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1510 v0 v1 v2 = coe du_map_386 (coe d_th_1458 (coe v0))
-- Axiom.Set.Theoryᵈ._.mapPartial
d_mapPartial_1512 ::
  T_Theory'7496'_1306 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1512 v0 v1 v2 v3
  = coe du_mapPartial_564 (coe d_th_1458 (coe v0)) v3
-- Axiom.Set.Theoryᵈ._.maximal-unique
d_maximal'45'unique_1514 ::
  T_Theory'7496'_1306 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1514 ~v0 = du_maximal'45'unique_1514
du_maximal'45'unique_1514 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1514 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_348 v3 v4
-- Axiom.Set.Theoryᵈ._.maximal-⊆
d_maximal'45''8838'_1516 ::
  T_Theory'7496'_1306 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1516 ~v0 = du_maximal'45''8838'_1516
du_maximal'45''8838'_1516 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1516 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_344 v3 v4
-- Axiom.Set.Theoryᵈ._.partialToSet
d_partialToSet_1518 ::
  T_Theory'7496'_1306 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1518 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_460 (coe d_th_1458 (coe v0)) v4 v5
-- Axiom.Set.Theoryᵈ._.replacement
d_replacement_1520 ::
  T_Theory'7496'_1306 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1520 v0
  = coe d_replacement_196 (coe d_th_1458 (coe v0))
-- Axiom.Set.Theoryᵈ._.singleton
d_singleton_1522 :: T_Theory'7496'_1306 -> () -> AgdaAny -> AgdaAny
d_singleton_1522 v0 v1 v2
  = coe du_singleton_436 (coe d_th_1458 (coe v0)) v2
-- Axiom.Set.Theoryᵈ._.sp
d_sp_1524 :: T_Theory'7496'_1306 -> T_SpecProperty_48
d_sp_1524 v0 = coe d_sp_150 (coe d_th_1458 (coe v0))
-- Axiom.Set.Theoryᵈ._.sp-¬
d_sp'45''172'_1526 ::
  T_Theory'7496'_1306 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1526 v0
  = coe d_sp'45''172'_70 (coe d_sp_150 (coe d_th_1458 (coe v0)))
-- Axiom.Set.Theoryᵈ._.sp-∘
d_sp'45''8728'_1528 ::
  T_Theory'7496'_1306 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1528 v0
  = coe d_sp'45''8728'_68 (coe d_sp_150 (coe d_th_1458 (coe v0)))
-- Axiom.Set.Theoryᵈ._.spec-∈
d_spec'45''8712'_1530 :: T_Theory'7496'_1306 -> () -> ()
d_spec'45''8712'_1530 = erased
-- Axiom.Set.Theoryᵈ._.specProperty
d_specProperty_1532 ::
  T_Theory'7496'_1306 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1532 = erased
-- Axiom.Set.Theoryᵈ._.specification
d_specification_1534 ::
  T_Theory'7496'_1306 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1534 v0
  = coe d_specification_174 (coe d_th_1458 (coe v0))
-- Axiom.Set.Theoryᵈ._.strictify
d_strictify_1536 ::
  T_Theory'7496'_1306 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1536 v0 v1 v2 v3 v4
  = coe du_strictify_366 (coe d_th_1458 (coe v0)) v3 v4
-- Axiom.Set.Theoryᵈ._.strongly-finite
d_strongly'45'finite_1538 ::
  T_Theory'7496'_1306 -> () -> AgdaAny -> ()
d_strongly'45'finite_1538 = erased
-- Axiom.Set.Theoryᵈ._.unions
d_unions_1540 ::
  T_Theory'7496'_1306 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1540 v0 = coe d_unions_184 (coe d_th_1458 (coe v0))
-- Axiom.Set.Theoryᵈ._.weakly-finite
d_weakly'45'finite_1542 ::
  T_Theory'7496'_1306 -> () -> AgdaAny -> ()
d_weakly'45'finite_1542 = erased
-- Axiom.Set.Theoryᵈ._.∅
d_'8709'_1544 :: T_Theory'7496'_1306 -> () -> AgdaAny
d_'8709'_1544 v0 v1 = coe du_'8709'_430 (coe d_th_1458 (coe v0))
-- Axiom.Set.Theoryᵈ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1546 ::
  T_Theory'7496'_1306 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1546 v0 v1
  = coe du_'8709''45'strongly'45'finite_432 (coe d_th_1458 (coe v0))
-- Axiom.Set.Theoryᵈ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1548 ::
  T_Theory'7496'_1306 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_1548 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_508 (coe d_th_1458 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-filter
d_'8712''45'filter_1550 ::
  T_Theory'7496'_1306 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_1550 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_414 (coe d_th_1458 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-fromList
d_'8712''45'fromList_1552 ::
  T_Theory'7496'_1306 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_1552 v0 v1 v2 v3
  = coe du_'8712''45'fromList_420 (coe d_th_1458 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-irrelevant
d_'8712''45'irrelevant_1554 ::
  T_Theory'7496'_1306 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1554 = erased
-- Axiom.Set.Theoryᵈ._.∈-map
d_'8712''45'map_1556 ::
  T_Theory'7496'_1306 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_1556 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_394 (coe d_th_1458 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-mapPartial
d_'8712''45'mapPartial_1558 ::
  T_Theory'7496'_1306 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_1558 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_574 (coe d_th_1458 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-map′
d_'8712''45'map'8242'_1560 ::
  T_Theory'7496'_1306 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1560 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_400 (coe d_th_1458 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᵈ._.∈-partialToSet
d_'8712''45'partialToSet_1562 ::
  T_Theory'7496'_1306 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_1562 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_472 (coe d_th_1458 (coe v0)) v5
-- Axiom.Set.Theoryᵈ._.∈-singleton
d_'8712''45'singleton_1564 ::
  T_Theory'7496'_1306 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_1564 v0 v1 v2 v3
  = coe du_'8712''45'singleton_446 (coe d_th_1458 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-unions
d_'8712''45'unions_1566 ::
  T_Theory'7496'_1306 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_1566 v0 v1 v2 v3
  = coe du_'8712''45'unions_428 (coe d_th_1458 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-∪
d_'8712''45''8746'_1568 ::
  T_Theory'7496'_1306 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_1568 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_676 (coe d_th_1458 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᵈ._.≡→∈
d_'8801''8594''8712'_1570 ::
  T_Theory'7496'_1306 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1570 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1570 v5
du_'8801''8594''8712'_1570 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1570 v0 = coe v0
-- Axiom.Set.Theoryᵈ._.⊆-mapPartial
d_'8838''45'mapPartial_1572 ::
  T_Theory'7496'_1306 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1572 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_592 (coe d_th_1458 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᵈ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1574 ::
  T_Theory'7496'_1306 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1574 ~v0
  = du_'8838''45'weakly'45'finite_1574
du_'8838''45'weakly'45'finite_1574 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1574 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_328 v3 v4
-- Axiom.Set.Theoryᵈ._.❴_❵
d_'10100'_'10101'_1576 ::
  T_Theory'7496'_1306 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1576 v0
  = coe du_'10100'_'10101'_440 (coe d_th_1458 (coe v0))
-- Axiom.Set.Theoryᵈ._.Intersection._∩_
d__'8745'__1580 ::
  T_Theory'7496'_1306 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1580 v0 v1 v2 v3 v4
  = coe du__'8745'__692 (coe d_th_1458 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᵈ._.Intersection._＼_
d__'65340'__1582 ::
  T_Theory'7496'_1306 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1582 v0 v1 v2 v3 v4
  = coe du__'65340'__718 (coe d_th_1458 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᵈ._.Intersection.disjoint'
d_disjoint''_1584 ::
  T_Theory'7496'_1306 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1584 = erased
-- Axiom.Set.Theoryᵈ._.Intersection.∈-∩
d_'8712''45''8745'_1586 ::
  T_Theory'7496'_1306 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1586 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_700 (coe d_th_1458 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryᵈ.∈-sp
d_'8712''45'sp_1588 ::
  T_Theory'7496'_1306 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
d_'8712''45'sp_1588 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_107467 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._∈?_
d__'8712''63'__1590 ::
  T_Theory'7496'_1306 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8712''63'__1590 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_107467 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ.all?
d_all'63'_1598 ::
  T_Theory'7496'_1306 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_all'63'_1598 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_107467 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ.any?
d_any'63'_1606 ::
  T_Theory'7496'_1306 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63'_1606 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_107467 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._._.Dec-Allˢ
d_Dec'45'All'738'_1622 ::
  T_Theory'7496'_1306 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'All'738'_1622 v0 ~v1 ~v2 v3 v4
  = du_Dec'45'All'738'_1622 v0 v3 v4
du_Dec'45'All'738'_1622 ::
  T_Theory'7496'_1306 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'All'738'_1622 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
      (coe
         (\ v3 ->
            coe
              d_all'63'_1598 v0 erased erased
              (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v1))
              v3))
      (coe v2)
-- Axiom.Set.Theoryᵈ._._.Dec-Anyˢ
d_Dec'45'Any'738'_1626 ::
  T_Theory'7496'_1306 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'Any'738'_1626 v0 ~v1 ~v2 v3 v4
  = du_Dec'45'Any'738'_1626 v0 v3 v4
du_Dec'45'Any'738'_1626 ::
  T_Theory'7496'_1306 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'Any'738'_1626 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
      (coe
         d_any'63'_1606 v0 erased erased
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v1)))
      (coe v2)
-- Axiom.Set.Theoryᵈ._._.allᵇ
d_all'7495'_1636 ::
  T_Theory'7496'_1306 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
d_all'7495'_1636 v0 ~v1 ~v2 v3 v4 = du_all'7495'_1636 v0 v3 v4
du_all'7495'_1636 ::
  T_Theory'7496'_1306 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
du_all'7495'_1636 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_130 ()
      erased (coe d_all'63'_1598 v0 erased erased v1 v2)
-- Axiom.Set.Theoryᵈ._._.anyᵇ
d_any'7495'_1640 ::
  T_Theory'7496'_1306 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
d_any'7495'_1640 v0 ~v1 ~v2 v3 v4 = du_any'7495'_1640 v0 v3 v4
du_any'7495'_1640 ::
  T_Theory'7496'_1306 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
du_any'7495'_1640 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_130 ()
      erased (coe d_any'63'_1606 v0 erased erased v1 v2)
-- Axiom.Set.Theoryᵈ._._∈ᵇ_
d__'8712''7495'__1654 ::
  T_Theory'7496'_1306 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Bool
d__'8712''7495'__1654 v0 ~v1 v2 v3 v4
  = du__'8712''7495'__1654 v0 v2 v3 v4
du__'8712''7495'__1654 ::
  T_Theory'7496'_1306 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Bool
du__'8712''7495'__1654 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_130 ()
      erased (coe d__'8712''63'__1590 v0 erased v1 v2 v3)
-- Axiom.Set.Theoryᵈ._.Dec-∈
d_Dec'45''8712'_1660 ::
  T_Theory'7496'_1306 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8712'_1660 v0 ~v1 v2 v3 v4
  = du_Dec'45''8712'_1660 v0 v2 v3 v4
du_Dec'45''8712'_1660 ::
  T_Theory'7496'_1306 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45''8712'_1660 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
      (coe d__'8712''63'__1590 v0 erased v1) (coe v2) (coe v3)
-- Axiom.Set.Theoryᵈ._.incl-set'
d_incl'45'set''_1672 ::
  T_Theory'7496'_1306 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set''_1672 v0 ~v1 v2 v3 v4
  = du_incl'45'set''_1672 v0 v2 v3 v4
du_incl'45'set''_1672 ::
  T_Theory'7496'_1306 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incl'45'set''_1672 v0 v1 v2 v3
  = let v4 = coe d__'8712''63'__1590 v0 erased v1 v3 v2 in
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
d_incl'45'set_1698 ::
  T_Theory'7496'_1306 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
d_incl'45'set_1698 v0 ~v1 v2 v3 = du_incl'45'set_1698 v0 v2 v3
du_incl'45'set_1698 ::
  T_Theory'7496'_1306 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
du_incl'45'set_1698 v0 v1 v2
  = coe
      du_mapPartial_564 (d_th_1458 (coe v0))
      (coe du_incl'45'set''_1672 (coe v0) (coe v1) (coe v2)) v2
-- Axiom.Set.Theoryᵈ._._.incl-set-proj₁⊆
d_incl'45'set'45'proj'8321''8838'_1708 ::
  T_Theory'7496'_1306 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_incl'45'set'45'proj'8321''8838'_1708 v0 ~v1 v2 v3 v4 v5
  = du_incl'45'set'45'proj'8321''8838'_1708 v0 v2 v3 v4 v5
du_incl'45'set'45'proj'8321''8838'_1708 ::
  T_Theory'7496'_1306 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_incl'45'set'45'proj'8321''8838'_1708 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    d_replacement_196 (d_th_1458 (coe v0)) erased erased
                    (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                    (coe du_incl'45'set_1698 (coe v0) (coe v1) (coe v2)))
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
d_incl'45'set'45'proj'8321''8839'_1720 ::
  T_Theory'7496'_1306 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_incl'45'set'45'proj'8321''8839'_1720 v0 ~v1 v2 v3 v4 v5
  = du_incl'45'set'45'proj'8321''8839'_1720 v0 v2 v3 v4 v5
du_incl'45'set'45'proj'8321''8839'_1720 ::
  T_Theory'7496'_1306 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_incl'45'set'45'proj'8321''8839'_1720 v0 v1 v2 v3 v4
  = let v5 = coe d__'8712''63'__1590 v0 erased v1 v3 v2 in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
           -> if coe v6
                then case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                         -> coe
                              MAlonzo.Code.Function.Bundles.d_to_1724
                              (coe
                                 du_'8712''45'map_394 (coe d_th_1458 (coe v0))
                                 (coe
                                    du_mapPartial_564 (d_th_1458 (coe v0))
                                    (coe du_incl'45'set''_1672 (coe v0) (coe v1) (coe v2)) v2)
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
                                          du_'8712''45'mapPartial_574 (coe d_th_1458 (coe v0))
                                          (coe v2)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                             (coe v8))
                                          (coe du_incl'45'set''_1672 (coe v0) (coe v1) (coe v2)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                                             erased)))))
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v7)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                          erased)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Theoryᵈ._._._.helper
d_helper_1748 ::
  T_Theory'7496'_1306 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_helper_1748 = erased
-- Axiom.Set.Theoryᵈ._._.incl-set-proj₁
d_incl'45'set'45'proj'8321'_1758 ::
  T_Theory'7496'_1306 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set'45'proj'8321'_1758 v0 ~v1 v2 v3
  = du_incl'45'set'45'proj'8321'_1758 v0 v2 v3
du_incl'45'set'45'proj'8321'_1758 ::
  T_Theory'7496'_1306 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incl'45'set'45'proj'8321'_1758 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_incl'45'set'45'proj'8321''8838'_1708 (coe v0) (coe v1) (coe v2))
      (coe
         du_incl'45'set'45'proj'8321''8839'_1720 (coe v0) (coe v1) (coe v2))
