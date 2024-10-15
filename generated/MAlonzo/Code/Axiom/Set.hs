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
import qualified MAlonzo.Code.Agda.Builtin.Unit
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
-- Axiom.Set.⊤-SpecProperty
d_'8868''45'SpecProperty_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_SpecProperty_48
d_'8868''45'SpecProperty_74 ~v0 = du_'8868''45'SpecProperty_74
du_'8868''45'SpecProperty_74 :: T_SpecProperty_48
du_'8868''45'SpecProperty_74
  = coe
      C_SpecProperty'46'constructor_1829
      (\ v0 v1 v2 v3 v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (\ v0 v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Axiom.Set.Dec-SpecProperty
d_Dec'45'SpecProperty_84 :: T_SpecProperty_48
d_Dec'45'SpecProperty_84
  = coe
      C_SpecProperty'46'constructor_1829
      (\ v0 v1 v2 v3 v4 v5 -> coe v3 (coe v4 v5))
      (\ v0 v1 v2 v3 ->
         coe
           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_70
           (coe v2 v3))
-- Axiom.Set.Theory
d_Theory_94 a0 = ()
data T_Theory_94
  = C_Theory'46'constructor_7085 T_SpecProperty_48
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
d_sp'45''172'_106 ::
  T_SpecProperty_48 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_106 v0 = coe d_sp'45''172'_70 (coe v0)
-- Axiom.Set._.sp-∘
d_sp'45''8728'_108 ::
  T_SpecProperty_48 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_108 v0 = coe d_sp'45''8728'_68 (coe v0)
-- Axiom.Set._.specProperty
d_specProperty_110 ::
  T_SpecProperty_48 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_110 = erased
-- Axiom.Set.Theory.Set
d_Set_158 :: T_Theory_94 -> () -> ()
d_Set_158 = erased
-- Axiom.Set.Theory._∈_
d__'8712'__160 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__160 = erased
-- Axiom.Set.Theory.sp
d_sp_162 :: T_Theory_94 -> T_SpecProperty_48
d_sp_162 v0
  = case coe v0 of
      C_Theory'46'constructor_7085 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory._.sp-¬
d_sp'45''172'_166 ::
  T_Theory_94 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_166 v0 = coe d_sp'45''172'_70 (coe d_sp_162 (coe v0))
-- Axiom.Set.Theory._.sp-∘
d_sp'45''8728'_168 ::
  T_Theory_94 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_168 v0
  = coe d_sp'45''8728'_68 (coe d_sp_162 (coe v0))
-- Axiom.Set.Theory._.specProperty
d_specProperty_170 :: T_Theory_94 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_170 = erased
-- Axiom.Set.Theory._⊆_
d__'8838'__172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__172 = erased
-- Axiom.Set.Theory.specification
d_specification_186 ::
  T_Theory_94 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_186 v0
  = case coe v0 of
      C_Theory'46'constructor_7085 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.unions
d_unions_196 ::
  T_Theory_94 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_196 v0
  = case coe v0 of
      C_Theory'46'constructor_7085 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.replacement
d_replacement_208 ::
  T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_208 v0
  = case coe v0 of
      C_Theory'46'constructor_7085 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.listing
d_listing_216 ::
  T_Theory_94 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_216 v0
  = case coe v0 of
      C_Theory'46'constructor_7085 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory._≡ᵉ_
d__'8801''7497'__224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__224 = erased
-- Axiom.Set.Theory._≡ᵉ'_
d__'8801''7497'''__230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__230 = erased
-- Axiom.Set.Theory._∉_
d__'8713'__238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__238 = erased
-- Axiom.Set.Theory.≡→∈
d_'8801''8594''8712'_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_246 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7
  = du_'8801''8594''8712'_246 v6
du_'8801''8594''8712'_246 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_246 v0 = coe v0
-- Axiom.Set.Theory.∈-irrelevant
d_'8712''45'irrelevant_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_250 = erased
-- Axiom.Set.Theory._Preservesˢ_
d__Preserves'738'__262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__262 = erased
-- Axiom.Set.Theory._Preservesˢ₂_
d__Preserves'738''8322'__270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__270 = erased
-- Axiom.Set.Theory.disjoint
d_disjoint_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_276 = erased
-- Axiom.Set.Theory.finite
d_finite_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> AgdaAny -> ()
d_finite_284 = erased
-- Axiom.Set.Theory.Show-finite
d_Show'45'finite_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_292 ~v0 ~v1 ~v2 v3 = du_Show'45'finite_292 v3
du_Show'45'finite_292 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_292 v0
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
d_weakly'45'finite_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> AgdaAny -> ()
d_weakly'45'finite_298 = erased
-- Axiom.Set.Theory.strongly-finite
d_strongly'45'finite_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> AgdaAny -> ()
d_strongly'45'finite_306 = erased
-- Axiom.Set.Theory.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_318 ~v0 ~v1 ~v2 v3 ~v4
                                                v5
  = du_DecEq'8743'finite'8658'strongly'45'finite_318 v3 v5
du_DecEq'8743'finite'8658'strongly'45'finite_318 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_318 v0 v1
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
d_card_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_336 ~v0 ~v1 ~v2 v3 = du_card_336 v3
du_card_336 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_336 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe MAlonzo.Code.Data.List.Base.du_length_284 v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.⊆-weakly-finite
d_'8838''45'weakly'45'finite_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_340 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_'8838''45'weakly'45'finite_340 v5 v6
du_'8838''45'weakly'45'finite_340 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_340 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe (\ v4 v5 -> coe v3 v4 (coe v0 v4 v5)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.isMaximal
d_isMaximal_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> AgdaAny -> ()
d_isMaximal_348 = erased
-- Axiom.Set.Theory.maximal-⊆
d_maximal'45''8838'_356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_356 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7
  = du_maximal'45''8838'_356 v5 v6
du_maximal'45''8838'_356 ::
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_maximal'45''8838'_356 v0 v1 = coe v0 v1
-- Axiom.Set.Theory.maximal-unique
d_maximal'45'unique_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_360 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_maximal'45'unique_360 v5 v6
du_maximal'45'unique_360 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_360 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v2 v3 -> coe du_maximal'45''8838'_356 (coe v1) v2)
      (\ v2 v3 -> coe du_maximal'45''8838'_356 (coe v0) v2)
-- Axiom.Set.Theory.FinSet
d_FinSet_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_Theory_94 -> () -> ()
d_FinSet_366 = erased
-- Axiom.Set.Theory.strictify
d_strictify_378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_378 ~v0 v1 ~v2 ~v3 v4 v5 = du_strictify_378 v1 v4 v5
du_strictify_378 ::
  T_Theory_94 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_strictify_378 v0 v1 v2
  = let v3
          = coe
              d_specification_186 v0 erased erased
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
d_map_398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_398 ~v0 v1 ~v2 ~v3 = du_map_398 v1
du_map_398 ::
  T_Theory_94 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map_398 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe
         (\ v1 v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe d_replacement_208 v0 erased erased)
-- Axiom.Set.Theory.∈-map
d_'8712''45'map_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_406 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'map_406 v1 v4 v5 v6
du_'8712''45'map_406 ::
  T_Theory_94 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'map_406 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_replacement_208 v0 erased erased v2 v1) v3
-- Axiom.Set.Theory.∈-map′
d_'8712''45'map'8242'_412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_412 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8712''45'map'8242'_412 v1 v4 v5 v6 v7
du_'8712''45'map'8242'_412 ::
  T_Theory_94 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8712''45'map'8242'_412 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe du_'8712''45'map_406 (coe v0) (coe v1) (coe v2) (coe v2 v3))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v4)))
-- Axiom.Set.Theory.filter
d_filter_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_420 ~v0 v1 ~v2 ~v3 = du_filter_420 v1
du_filter_420 :: T_Theory_94 -> AgdaAny -> AgdaAny -> AgdaAny
du_filter_420 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe
         (\ v1 v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe (\ v1 v2 -> coe d_specification_186 v0 erased erased v2 v1))
-- Axiom.Set.Theory.∈-filter
d_'8712''45'filter_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_426 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'filter_426 v1 v4 v5 v6
du_'8712''45'filter_426 ::
  T_Theory_94 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'filter_426 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_specification_186 v0 erased erased v1 v2) v3
-- Axiom.Set.Theory.fromList
d_fromList_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> [AgdaAny] -> AgdaAny
d_fromList_428 ~v0 v1 ~v2 v3 = du_fromList_428 v1 v3
du_fromList_428 :: T_Theory_94 -> [AgdaAny] -> AgdaAny
du_fromList_428 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_listing_216 v0 erased v1)
-- Axiom.Set.Theory.∈-fromList
d_'8712''45'fromList_432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_432 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'fromList_432 v1 v3 v4
du_'8712''45'fromList_432 ::
  T_Theory_94 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'fromList_432 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_listing_216 v0 erased v1) v2
-- Axiom.Set.Theory.∈-unions
d_'8712''45'unions_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_440 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'unions_440 v1 v3 v4
du_'8712''45'unions_440 ::
  T_Theory_94 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'unions_440 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_unions_196 v0 erased v2) v1
-- Axiom.Set.Theory.∅
d_'8709'_442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> AgdaAny
d_'8709'_442 ~v0 v1 ~v2 = du_'8709'_442 v1
du_'8709'_442 :: T_Theory_94 -> AgdaAny
du_'8709'_442 v0
  = coe
      du_fromList_428 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Axiom.Set.Theory.∅-strongly-finite
d_'8709''45'strongly'45'finite_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_444 ~v0 v1 ~v2
  = du_'8709''45'strongly'45'finite_444 v1
du_'8709''45'strongly'45'finite_444 ::
  T_Theory_94 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''45'strongly'45'finite_444 v0
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
                    du_'8712''45'fromList_432 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v1)))))
-- Axiom.Set.Theory.card-∅
d_card'45''8709'_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_446 = erased
-- Axiom.Set.Theory.singleton
d_singleton_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> AgdaAny -> AgdaAny
d_singleton_448 ~v0 v1 ~v2 v3 = du_singleton_448 v1 v3
du_singleton_448 :: T_Theory_94 -> AgdaAny -> AgdaAny
du_singleton_448 v0 v1
  = coe
      du_fromList_428 (coe v0)
      (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1))
-- Axiom.Set.Theory.❴_❵
d_'10100'_'10101'_452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_452 ~v0 v1 = du_'10100'_'10101'_452 v1
du_'10100'_'10101'_452 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny
du_'10100'_'10101'_452 v0 v1 v2 = coe du_singleton_448 (coe v0) v2
-- Axiom.Set.Theory.∈-singleton
d_'8712''45'singleton_458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_458 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'singleton_458 v1 v3 v4
du_'8712''45'singleton_458 ::
  T_Theory_94 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'singleton_458 v0 v1 v2
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
            du_'8712''45'fromList_432 (coe v0)
            (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v2))
            (coe v1)))
      (coe
         MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
         (coe
            (\ v3 ->
               coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased))
         erased)
-- Axiom.Set.Theory.partialToSet
d_partialToSet_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_472 ~v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_partialToSet_472 v1 v5 v6
du_partialToSet_472 ::
  T_Theory_94 -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
du_partialToSet_472 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe
         (\ v3 ->
            coe
              du_fromList_428 (coe v0)
              (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v3))))
      (coe du_'8709'_442 (coe v0)) (coe v1 v2)
-- Axiom.Set.Theory.∈-partialToSet
d_'8712''45'partialToSet_484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_484 ~v0 v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7
  = du_'8712''45'partialToSet_484 v1 v6
du_'8712''45'partialToSet_484 ::
  T_Theory_94 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'partialToSet_484 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1724
              (coe du_'8712''45'singleton_458 (coe v0) (coe v1) (coe v1))
              erased))
      erased
-- Axiom.Set.Theory.concatMapˢ
d_concatMap'738'_508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_508 ~v0 v1 ~v2 ~v3 v4 v5
  = du_concatMap'738'_508 v1 v4 v5
du_concatMap'738'_508 ::
  T_Theory_94 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_concatMap'738'_508 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_unions_196 v0 erased (coe du_map_398 v0 v1 v2))
-- Axiom.Set.Theory.∈-concatMapˢ
d_'8712''45'concatMap'738'_520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_520 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'concatMap'738'_520 v1 v4 v5 v6
du_'8712''45'concatMap'738'_520 ::
  T_Theory_94 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'concatMap'738'_520 v0 v1 v2 v3
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
                     du_'8712''45'unions_440 (coe v0) (coe v2)
                     (coe du_map_398 v0 v3 v1)))
               (coe
                  MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
                  (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                       (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                       (coe du_'8712''45'map_406 (coe v0) (coe v1) (coe v3) (coe v4))
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
d_mapPartial_576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_576 ~v0 v1 ~v2 ~v3 v4 = du_mapPartial_576 v1 v4
du_mapPartial_576 ::
  T_Theory_94 -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
du_mapPartial_576 v0 v1
  = coe
      du_concatMap'738'_508 (coe v0)
      (coe du_partialToSet_472 (coe v0) (coe v1))
-- Axiom.Set.Theory.∈-mapPartial
d_'8712''45'mapPartial_586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_586 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'mapPartial_586 v1 v4 v5 v6
du_'8712''45'mapPartial_586 ::
  T_Theory_94 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'mapPartial_586 v0 v1 v2 v3
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
            du_'8712''45'concatMap'738'_520 (coe v0) (coe v1) (coe v2)
            (coe du_partialToSet_472 (coe v0) (coe v3))))
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
              (coe du_'8712''45'partialToSet_484 (coe v0) (coe v2))))
-- Axiom.Set.Theory.⊆-mapPartial
d_'8838''45'mapPartial_604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_604 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8838''45'mapPartial_604 v1 v4 v5 v6 v7
du_'8838''45'mapPartial_604 ::
  T_Theory_94 ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du_'8838''45'mapPartial_604 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    d_replacement_208 v0 erased erased
                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                    (coe du_mapPartial_576 v0 v2 v1))
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
                                           du_'8712''45'concatMap'738'_520 (coe v0) (coe v1)
                                           (coe v6) (coe du_partialToSet_472 (coe v0) (coe v2))))
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
                                     (coe du_'8712''45'partialToSet_484 (coe v0) (coe v6)))
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
                                              du_'8712''45'concatMap'738'_520 (coe v0) (coe v1)
                                              (coe v6) (coe du_partialToSet_472 (coe v0) (coe v2))))
                                        v9)) in
                        coe
                          (case coe v11 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                               -> coe
                                    MAlonzo.Code.Function.Bundles.d_to_1724
                                    (coe
                                       du_'8712''45'map_406 (coe v0) (coe v1) (coe v2)
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
d_binary'45'unions_644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_644 ~v0 v1 ~v2 v3 v4
  = du_binary'45'unions_644 v1 v3 v4
du_binary'45'unions_644 ::
  T_Theory_94 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_binary'45'unions_644 v0 v1 v2
  = let v3
          = coe
              d_unions_196 v0 erased
              (coe
                 du_fromList_428 (coe v0)
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
                                                   du_'8712''45'fromList_432 (coe v0)
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
                                                   du_'8712''45'fromList_432 (coe v0)
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
                                              du_'8712''45'fromList_432 (coe v0)
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
d__'8746'__680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__680 ~v0 v1 ~v2 v3 v4 = du__'8746'__680 v1 v3 v4
du__'8746'__680 :: T_Theory_94 -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746'__680 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe du_binary'45'unions_644 (coe v0) (coe v1) (coe v2))
-- Axiom.Set.Theory.∈-∪
d_'8712''45''8746'_688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_688 ~v0 v1 ~v2 v3 v4 v5
  = du_'8712''45''8746'_688 v1 v3 v4 v5
du_'8712''45''8746'_688 ::
  T_Theory_94 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45''8746'_688 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe du_binary'45'unions_644 (coe v0) (coe v1) (coe v2)) v3
-- Axiom.Set.Theory.spec-∈
d_spec'45''8712'_690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_Theory_94 -> () -> ()
d_spec'45''8712'_690 = erased
-- Axiom.Set.Theory.Intersection._∩_
d__'8745'__704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__704 ~v0 v1 ~v2 v3 v4 v5 = du__'8745'__704 v1 v3 v4 v5
du__'8745'__704 ::
  T_Theory_94 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8745'__704 v0 v1 v2 v3 = coe du_filter_420 v0 (coe v1 v3) v2
-- Axiom.Set.Theory.Intersection.∈-∩
d_'8712''45''8745'_712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_712 ~v0 v1 ~v2 v3 v4 v5 v6
  = du_'8712''45''8745'_712 v1 v3 v4 v5 v6
du_'8712''45''8745'_712 ::
  T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45''8745'_712 v0 v1 v2 v3 v4
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
            du_'8712''45'filter_426 (coe v0) (coe v2) (coe v1 v3) (coe v4)))
      (coe MAlonzo.Code.Data.Product.Algebra.du_'215''45'comm_224)
-- Axiom.Set.Theory.Intersection.disjoint'
d_disjoint''_724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_724 = erased
-- Axiom.Set.Theory.Intersection._＼_
d__'65340'__730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__730 ~v0 v1 ~v2 v3 v4 v5 = du__'65340'__730 v1 v3 v4 v5
du__'65340'__730 ::
  T_Theory_94 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'65340'__730 v0 v1 v2 v3
  = coe
      du_filter_420 v0
      (coe
         d_sp'45''172'_70 (d_sp_162 (coe v0)) erased erased (coe v1 v3))
      v2
-- Axiom.Set.Theory.All
d_All_736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_736 = erased
-- Axiom.Set.Theory.Any
d_Any_744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_94 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_744 = erased
-- Axiom.Set.Theoryᶠ
d_Theory'7584'_752 = ()
data T_Theory'7584'_752
  = C_Theory'7584''46'constructor_100463 T_Theory_94
                                         (() -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Axiom.Set._._Preservesˢ_
d__Preserves'738'__758 ::
  T_Theory_94 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__758 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__760 ::
  T_Theory_94 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__760 = erased
-- Axiom.Set._._∈_
d__'8712'__762 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__762 = erased
-- Axiom.Set._._∉_
d__'8713'__764 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__764 = erased
-- Axiom.Set._._∪_
d__'8746'__766 ::
  T_Theory_94 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__766 v0 v1 v2 v3 = coe du__'8746'__680 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__768 ::
  T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__768 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__770 ::
  T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__770 = erased
-- Axiom.Set._._⊆_
d__'8838'__772 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__772 = erased
-- Axiom.Set._.All
d_All_774 :: T_Theory_94 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_774 = erased
-- Axiom.Set._.Any
d_Any_776 :: T_Theory_94 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_776 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_778 ::
  T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_778 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_778
du_DecEq'8743'finite'8658'strongly'45'finite_778 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_778 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_318 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_780 :: T_Theory_94 -> () -> ()
d_FinSet_780 = erased
-- Axiom.Set._.Set
d_Set_782 :: T_Theory_94 -> () -> ()
d_Set_782 = erased
-- Axiom.Set._.Show-finite
d_Show'45'finite_784 ::
  T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_784 ~v0 = du_Show'45'finite_784
du_Show'45'finite_784 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_784 v0 v1 = coe du_Show'45'finite_292 v1
-- Axiom.Set._.binary-unions
d_binary'45'unions_786 ::
  T_Theory_94 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_786 v0 v1 v2 v3
  = coe du_binary'45'unions_644 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_788 ::
  T_Theory_94 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_788 ~v0 = du_card_788
du_card_788 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_788 v0 v1 = coe du_card_336 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_790 ::
  T_Theory_94 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_790 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_792 ::
  T_Theory_94 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_792 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_508 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_794 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_794 = erased
-- Axiom.Set._.filter
d_filter_796 ::
  T_Theory_94 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_796 v0 v1 v2 = coe du_filter_420 (coe v0)
-- Axiom.Set._.finite
d_finite_798 :: T_Theory_94 -> () -> AgdaAny -> ()
d_finite_798 = erased
-- Axiom.Set._.fromList
d_fromList_800 :: T_Theory_94 -> () -> [AgdaAny] -> AgdaAny
d_fromList_800 v0 v1 v2 = coe du_fromList_428 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_802 :: T_Theory_94 -> () -> AgdaAny -> ()
d_isMaximal_802 = erased
-- Axiom.Set._.listing
d_listing_804 ::
  T_Theory_94 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_804 v0 = coe d_listing_216 (coe v0)
-- Axiom.Set._.map
d_map_806 ::
  T_Theory_94 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_806 v0 v1 v2 = coe du_map_398 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_808 ::
  T_Theory_94 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_808 v0 v1 v2 v3 = coe du_mapPartial_576 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_810 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_810 ~v0 = du_maximal'45'unique_810
du_maximal'45'unique_810 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_810 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_360 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_812 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_812 ~v0 = du_maximal'45''8838'_812
du_maximal'45''8838'_812 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_812 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_356 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_814 ::
  T_Theory_94 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_814 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_472 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_816 ::
  T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_816 v0 = coe d_replacement_208 (coe v0)
-- Axiom.Set._.singleton
d_singleton_818 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny
d_singleton_818 v0 v1 v2 = coe du_singleton_448 (coe v0) v2
-- Axiom.Set._.sp
d_sp_820 :: T_Theory_94 -> T_SpecProperty_48
d_sp_820 v0 = coe d_sp_162 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_822 ::
  T_Theory_94 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_822 v0 = coe d_sp'45''172'_70 (coe d_sp_162 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_824 ::
  T_Theory_94 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_824 v0
  = coe d_sp'45''8728'_68 (coe d_sp_162 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_826 :: T_Theory_94 -> () -> ()
d_spec'45''8712'_826 = erased
-- Axiom.Set._.specProperty
d_specProperty_828 :: T_Theory_94 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_828 = erased
-- Axiom.Set._.specification
d_specification_830 ::
  T_Theory_94 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_830 v0 = coe d_specification_186 (coe v0)
-- Axiom.Set._.strictify
d_strictify_832 ::
  T_Theory_94 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_832 v0 v1 v2 v3 v4
  = coe du_strictify_378 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_834 :: T_Theory_94 -> () -> AgdaAny -> ()
d_strongly'45'finite_834 = erased
-- Axiom.Set._.unions
d_unions_836 ::
  T_Theory_94 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_836 v0 = coe d_unions_196 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_838 :: T_Theory_94 -> () -> AgdaAny -> ()
d_weakly'45'finite_838 = erased
-- Axiom.Set._.∅
d_'8709'_840 :: T_Theory_94 -> () -> AgdaAny
d_'8709'_840 v0 v1 = coe du_'8709'_442 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_842 ::
  T_Theory_94 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_842 v0 v1
  = coe du_'8709''45'strongly'45'finite_444 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_844 ::
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_844 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_520 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_846 ::
  T_Theory_94 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_846 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_426 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_848 ::
  T_Theory_94 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_848 v0 v1 v2 v3
  = coe du_'8712''45'fromList_432 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_850 :: T_Theory_94 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_850 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_852 ::
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_852 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_406 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_854 ::
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_854 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_586 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_856 ::
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_856 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_412 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_858 ::
  T_Theory_94 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_858 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_484 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_860 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_860 v0 v1 v2 v3
  = coe du_'8712''45'singleton_458 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_862 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_862 v0 v1 v2 v3
  = coe du_'8712''45'unions_440 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_864 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_864 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_688 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_866 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_866 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_866 v5
du_'8801''8594''8712'_866 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_866 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_868 ::
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_868 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_604 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_870 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_870 ~v0
  = du_'8838''45'weakly'45'finite_870
du_'8838''45'weakly'45'finite_870 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_870 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_340 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_872 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_872 v0 = coe du_'10100'_'10101'_452 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__876 ::
  T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__876 v0 v1 v2 v3 v4
  = coe du__'8745'__704 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection._＼_
d__'65340'__878 ::
  T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__878 v0 v1 v2 v3 v4
  = coe du__'65340'__730 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_880 ::
  T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_880 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_882 ::
  T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_882 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_712 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryᶠ.theory
d_theory_888 :: T_Theory'7584'_752 -> T_Theory_94
d_theory_888 v0
  = case coe v0 of
      C_Theory'7584''46'constructor_100463 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᶠ._._Preservesˢ_
d__Preserves'738'__892 ::
  T_Theory'7584'_752 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__892 = erased
-- Axiom.Set.Theoryᶠ._._Preservesˢ₂_
d__Preserves'738''8322'__894 ::
  T_Theory'7584'_752 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__894 = erased
-- Axiom.Set.Theoryᶠ._._∈_
d__'8712'__896 ::
  T_Theory'7584'_752 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__896 = erased
-- Axiom.Set.Theoryᶠ._._∉_
d__'8713'__898 ::
  T_Theory'7584'_752 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__898 = erased
-- Axiom.Set.Theoryᶠ._._∪_
d__'8746'__900 ::
  T_Theory'7584'_752 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__900 v0 v1 v2 v3
  = coe du__'8746'__680 (coe d_theory_888 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._._≡ᵉ_
d__'8801''7497'__902 ::
  T_Theory'7584'_752 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__902 = erased
-- Axiom.Set.Theoryᶠ._._≡ᵉ'_
d__'8801''7497'''__904 ::
  T_Theory'7584'_752 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__904 = erased
-- Axiom.Set.Theoryᶠ._._⊆_
d__'8838'__906 ::
  T_Theory'7584'_752 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__906 = erased
-- Axiom.Set.Theoryᶠ._.All
d_All_908 ::
  T_Theory'7584'_752 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_908 = erased
-- Axiom.Set.Theoryᶠ._.Any
d_Any_910 ::
  T_Theory'7584'_752 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_910 = erased
-- Axiom.Set.Theoryᶠ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_912 ::
  T_Theory'7584'_752 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_912 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_912
du_DecEq'8743'finite'8658'strongly'45'finite_912 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_912 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_318 v1 v3
-- Axiom.Set.Theoryᶠ._.FinSet
d_FinSet_914 :: T_Theory'7584'_752 -> () -> ()
d_FinSet_914 = erased
-- Axiom.Set.Theoryᶠ._.Set
d_Set_916 :: T_Theory'7584'_752 -> () -> ()
d_Set_916 = erased
-- Axiom.Set.Theoryᶠ._.Show-finite
d_Show'45'finite_918 ::
  T_Theory'7584'_752 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_918 ~v0 = du_Show'45'finite_918
du_Show'45'finite_918 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_918 v0 v1 = coe du_Show'45'finite_292 v1
-- Axiom.Set.Theoryᶠ._.binary-unions
d_binary'45'unions_920 ::
  T_Theory'7584'_752 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_920 v0 v1 v2 v3
  = coe du_binary'45'unions_644 (coe d_theory_888 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.card
d_card_922 ::
  T_Theory'7584'_752 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_922 ~v0 = du_card_922
du_card_922 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_922 v0 v1 = coe du_card_336 v1
-- Axiom.Set.Theoryᶠ._.card-∅
d_card'45''8709'_924 ::
  T_Theory'7584'_752 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_924 = erased
-- Axiom.Set.Theoryᶠ._.concatMapˢ
d_concatMap'738'_926 ::
  T_Theory'7584'_752 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_926 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_508 (coe d_theory_888 (coe v0)) v3 v4
-- Axiom.Set.Theoryᶠ._.disjoint
d_disjoint_928 ::
  T_Theory'7584'_752 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_928 = erased
-- Axiom.Set.Theoryᶠ._.filter
d_filter_930 ::
  T_Theory'7584'_752 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_930 v0 v1 v2
  = coe du_filter_420 (coe d_theory_888 (coe v0))
-- Axiom.Set.Theoryᶠ._.finite
d_finite_932 :: T_Theory'7584'_752 -> () -> AgdaAny -> ()
d_finite_932 = erased
-- Axiom.Set.Theoryᶠ._.fromList
d_fromList_934 :: T_Theory'7584'_752 -> () -> [AgdaAny] -> AgdaAny
d_fromList_934 v0 v1 v2
  = coe du_fromList_428 (coe d_theory_888 (coe v0)) v2
-- Axiom.Set.Theoryᶠ._.isMaximal
d_isMaximal_936 :: T_Theory'7584'_752 -> () -> AgdaAny -> ()
d_isMaximal_936 = erased
-- Axiom.Set.Theoryᶠ._.listing
d_listing_938 ::
  T_Theory'7584'_752 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_938 v0 = coe d_listing_216 (coe d_theory_888 (coe v0))
-- Axiom.Set.Theoryᶠ._.map
d_map_940 ::
  T_Theory'7584'_752 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_940 v0 v1 v2 = coe du_map_398 (coe d_theory_888 (coe v0))
-- Axiom.Set.Theoryᶠ._.mapPartial
d_mapPartial_942 ::
  T_Theory'7584'_752 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_942 v0 v1 v2 v3
  = coe du_mapPartial_576 (coe d_theory_888 (coe v0)) v3
-- Axiom.Set.Theoryᶠ._.maximal-unique
d_maximal'45'unique_944 ::
  T_Theory'7584'_752 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_944 ~v0 = du_maximal'45'unique_944
du_maximal'45'unique_944 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_944 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_360 v3 v4
-- Axiom.Set.Theoryᶠ._.maximal-⊆
d_maximal'45''8838'_946 ::
  T_Theory'7584'_752 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_946 ~v0 = du_maximal'45''8838'_946
du_maximal'45''8838'_946 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_946 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_356 v3 v4
-- Axiom.Set.Theoryᶠ._.partialToSet
d_partialToSet_948 ::
  T_Theory'7584'_752 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_948 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_472 (coe d_theory_888 (coe v0)) v4 v5
-- Axiom.Set.Theoryᶠ._.replacement
d_replacement_950 ::
  T_Theory'7584'_752 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_950 v0
  = coe d_replacement_208 (coe d_theory_888 (coe v0))
-- Axiom.Set.Theoryᶠ._.singleton
d_singleton_952 :: T_Theory'7584'_752 -> () -> AgdaAny -> AgdaAny
d_singleton_952 v0 v1 v2
  = coe du_singleton_448 (coe d_theory_888 (coe v0)) v2
-- Axiom.Set.Theoryᶠ._.sp
d_sp_954 :: T_Theory'7584'_752 -> T_SpecProperty_48
d_sp_954 v0 = coe d_sp_162 (coe d_theory_888 (coe v0))
-- Axiom.Set.Theoryᶠ._.sp-¬
d_sp'45''172'_956 ::
  T_Theory'7584'_752 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_956 v0
  = coe d_sp'45''172'_70 (coe d_sp_162 (coe d_theory_888 (coe v0)))
-- Axiom.Set.Theoryᶠ._.sp-∘
d_sp'45''8728'_958 ::
  T_Theory'7584'_752 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_958 v0
  = coe d_sp'45''8728'_68 (coe d_sp_162 (coe d_theory_888 (coe v0)))
-- Axiom.Set.Theoryᶠ._.spec-∈
d_spec'45''8712'_960 :: T_Theory'7584'_752 -> () -> ()
d_spec'45''8712'_960 = erased
-- Axiom.Set.Theoryᶠ._.specProperty
d_specProperty_962 ::
  T_Theory'7584'_752 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_962 = erased
-- Axiom.Set.Theoryᶠ._.specification
d_specification_964 ::
  T_Theory'7584'_752 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_964 v0
  = coe d_specification_186 (coe d_theory_888 (coe v0))
-- Axiom.Set.Theoryᶠ._.strictify
d_strictify_966 ::
  T_Theory'7584'_752 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_966 v0 v1 v2 v3 v4
  = coe du_strictify_378 (coe d_theory_888 (coe v0)) v3 v4
-- Axiom.Set.Theoryᶠ._.strongly-finite
d_strongly'45'finite_968 ::
  T_Theory'7584'_752 -> () -> AgdaAny -> ()
d_strongly'45'finite_968 = erased
-- Axiom.Set.Theoryᶠ._.unions
d_unions_970 ::
  T_Theory'7584'_752 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_970 v0 = coe d_unions_196 (coe d_theory_888 (coe v0))
-- Axiom.Set.Theoryᶠ._.weakly-finite
d_weakly'45'finite_972 :: T_Theory'7584'_752 -> () -> AgdaAny -> ()
d_weakly'45'finite_972 = erased
-- Axiom.Set.Theoryᶠ._.∅
d_'8709'_974 :: T_Theory'7584'_752 -> () -> AgdaAny
d_'8709'_974 v0 v1 = coe du_'8709'_442 (coe d_theory_888 (coe v0))
-- Axiom.Set.Theoryᶠ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_976 ::
  T_Theory'7584'_752 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_976 v0 v1
  = coe
      du_'8709''45'strongly'45'finite_444 (coe d_theory_888 (coe v0))
-- Axiom.Set.Theoryᶠ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_978 ::
  T_Theory'7584'_752 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_978 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_520 (coe d_theory_888 (coe v0)) v3 v4
      v5
-- Axiom.Set.Theoryᶠ._.∈-filter
d_'8712''45'filter_980 ::
  T_Theory'7584'_752 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_980 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_426 (coe d_theory_888 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-fromList
d_'8712''45'fromList_982 ::
  T_Theory'7584'_752 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_982 v0 v1 v2 v3
  = coe du_'8712''45'fromList_432 (coe d_theory_888 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-irrelevant
d_'8712''45'irrelevant_984 ::
  T_Theory'7584'_752 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_984 = erased
-- Axiom.Set.Theoryᶠ._.∈-map
d_'8712''45'map_986 ::
  T_Theory'7584'_752 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_986 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_406 (coe d_theory_888 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-mapPartial
d_'8712''45'mapPartial_988 ::
  T_Theory'7584'_752 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_988 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'mapPartial_586 (coe d_theory_888 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-map′
d_'8712''45'map'8242'_990 ::
  T_Theory'7584'_752 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_990 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_412 (coe d_theory_888 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᶠ._.∈-partialToSet
d_'8712''45'partialToSet_992 ::
  T_Theory'7584'_752 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_992 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_484 (coe d_theory_888 (coe v0)) v5
-- Axiom.Set.Theoryᶠ._.∈-singleton
d_'8712''45'singleton_994 ::
  T_Theory'7584'_752 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_994 v0 v1 v2 v3
  = coe du_'8712''45'singleton_458 (coe d_theory_888 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-unions
d_'8712''45'unions_996 ::
  T_Theory'7584'_752 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_996 v0 v1 v2 v3
  = coe du_'8712''45'unions_440 (coe d_theory_888 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-∪
d_'8712''45''8746'_998 ::
  T_Theory'7584'_752 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_998 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_688 (coe d_theory_888 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᶠ._.≡→∈
d_'8801''8594''8712'_1000 ::
  T_Theory'7584'_752 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1000 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1000 v5
du_'8801''8594''8712'_1000 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1000 v0 = coe v0
-- Axiom.Set.Theoryᶠ._.⊆-mapPartial
d_'8838''45'mapPartial_1002 ::
  T_Theory'7584'_752 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1002 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_604 (coe d_theory_888 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᶠ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1004 ::
  T_Theory'7584'_752 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1004 ~v0
  = du_'8838''45'weakly'45'finite_1004
du_'8838''45'weakly'45'finite_1004 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1004 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_340 v3 v4
-- Axiom.Set.Theoryᶠ._.❴_❵
d_'10100'_'10101'_1006 ::
  T_Theory'7584'_752 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1006 v0
  = coe du_'10100'_'10101'_452 (coe d_theory_888 (coe v0))
-- Axiom.Set.Theoryᶠ._.Intersection._∩_
d__'8745'__1010 ::
  T_Theory'7584'_752 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1010 v0 v1 v2 v3 v4
  = coe du__'8745'__704 (coe d_theory_888 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᶠ._.Intersection._＼_
d__'65340'__1012 ::
  T_Theory'7584'_752 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1012 v0 v1 v2 v3 v4
  = coe du__'65340'__730 (coe d_theory_888 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᶠ._.Intersection.disjoint'
d_disjoint''_1014 ::
  T_Theory'7584'_752 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1014 = erased
-- Axiom.Set.Theoryᶠ._.Intersection.∈-∩
d_'8712''45''8745'_1016 ::
  T_Theory'7584'_752 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1016 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45''8745'_712 (coe d_theory_888 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryᶠ.finiteness
d_finiteness_1020 ::
  T_Theory'7584'_752 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_finiteness_1020 v0
  = case coe v0 of
      C_Theory'7584''46'constructor_100463 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᶠ.DecEq⇒strongly-finite
d_DecEq'8658'strongly'45'finite_1024 ::
  T_Theory'7584'_752 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8658'strongly'45'finite_1024 v0 ~v1 v2 v3
  = du_DecEq'8658'strongly'45'finite_1024 v0 v2 v3
du_DecEq'8658'strongly'45'finite_1024 ::
  T_Theory'7584'_752 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8658'strongly'45'finite_1024 v0 v1 v2
  = coe
      du_DecEq'8743'finite'8658'strongly'45'finite_318 (coe v1)
      (coe d_finiteness_1020 v0 erased v2)
-- Axiom.Set.Theoryᶠ.lengthˢ
d_length'738'_1028 ::
  T_Theory'7584'_752 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> Integer
d_length'738'_1028 v0 ~v1 v2 v3 = du_length'738'_1028 v0 v2 v3
du_length'738'_1028 ::
  T_Theory'7584'_752 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> Integer
du_length'738'_1028 v0 v1 v2
  = coe
      du_card_336
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
         (coe
            du_DecEq'8658'strongly'45'finite_1024 (coe v0) (coe v1) (coe v2)))
-- Axiom.Set.Theoryᶠ._.Show-Set
d_Show'45'Set_1040 ::
  T_Theory'7584'_752 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Set_1040 v0 ~v1 v2 = du_Show'45'Set_1040 v0 v2
du_Show'45'Set_1040 ::
  T_Theory'7584'_752 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Set_1040 v0 v1
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
                       (coe d_finiteness_1020 v0 erased v2))))))
-- Axiom.Set.Theoryⁱ
d_Theory'8305'_1044 = ()
data T_Theory'8305'_1044
  = C_Theory'8305''46'constructor_104029 T_Theory_94
                                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Axiom.Set._._Preservesˢ_
d__Preserves'738'__1050 ::
  T_Theory_94 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1050 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__1052 ::
  T_Theory_94 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1052 = erased
-- Axiom.Set._._∈_
d__'8712'__1054 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1054 = erased
-- Axiom.Set._._∉_
d__'8713'__1056 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1056 = erased
-- Axiom.Set._._∪_
d__'8746'__1058 ::
  T_Theory_94 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1058 v0 v1 v2 v3 = coe du__'8746'__680 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__1060 ::
  T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1060 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__1062 ::
  T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1062 = erased
-- Axiom.Set._._⊆_
d__'8838'__1064 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1064 = erased
-- Axiom.Set._.All
d_All_1066 :: T_Theory_94 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1066 = erased
-- Axiom.Set._.Any
d_Any_1068 :: T_Theory_94 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1068 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1070 ::
  T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1070 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1070
du_DecEq'8743'finite'8658'strongly'45'finite_1070 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1070 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_318 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_1072 :: T_Theory_94 -> () -> ()
d_FinSet_1072 = erased
-- Axiom.Set._.Set
d_Set_1074 :: T_Theory_94 -> () -> ()
d_Set_1074 = erased
-- Axiom.Set._.Show-finite
d_Show'45'finite_1076 ::
  T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_1076 ~v0 = du_Show'45'finite_1076
du_Show'45'finite_1076 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_1076 v0 v1 = coe du_Show'45'finite_292 v1
-- Axiom.Set._.binary-unions
d_binary'45'unions_1078 ::
  T_Theory_94 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1078 v0 v1 v2 v3
  = coe du_binary'45'unions_644 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_1080 ::
  T_Theory_94 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1080 ~v0 = du_card_1080
du_card_1080 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1080 v0 v1 = coe du_card_336 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_1082 ::
  T_Theory_94 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1082 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_1084 ::
  T_Theory_94 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1084 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_508 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_1086 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1086 = erased
-- Axiom.Set._.filter
d_filter_1088 ::
  T_Theory_94 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1088 v0 v1 v2 = coe du_filter_420 (coe v0)
-- Axiom.Set._.finite
d_finite_1090 :: T_Theory_94 -> () -> AgdaAny -> ()
d_finite_1090 = erased
-- Axiom.Set._.fromList
d_fromList_1092 :: T_Theory_94 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1092 v0 v1 v2 = coe du_fromList_428 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_1094 :: T_Theory_94 -> () -> AgdaAny -> ()
d_isMaximal_1094 = erased
-- Axiom.Set._.listing
d_listing_1096 ::
  T_Theory_94 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1096 v0 = coe d_listing_216 (coe v0)
-- Axiom.Set._.map
d_map_1098 ::
  T_Theory_94 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1098 v0 v1 v2 = coe du_map_398 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_1100 ::
  T_Theory_94 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1100 v0 v1 v2 v3 = coe du_mapPartial_576 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_1102 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1102 ~v0 = du_maximal'45'unique_1102
du_maximal'45'unique_1102 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1102 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_360 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_1104 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1104 ~v0 = du_maximal'45''8838'_1104
du_maximal'45''8838'_1104 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1104 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_356 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_1106 ::
  T_Theory_94 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1106 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_472 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_1108 ::
  T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1108 v0 = coe d_replacement_208 (coe v0)
-- Axiom.Set._.singleton
d_singleton_1110 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny
d_singleton_1110 v0 v1 v2 = coe du_singleton_448 (coe v0) v2
-- Axiom.Set._.sp
d_sp_1112 :: T_Theory_94 -> T_SpecProperty_48
d_sp_1112 v0 = coe d_sp_162 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_1114 ::
  T_Theory_94 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1114 v0
  = coe d_sp'45''172'_70 (coe d_sp_162 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_1116 ::
  T_Theory_94 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1116 v0
  = coe d_sp'45''8728'_68 (coe d_sp_162 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_1118 :: T_Theory_94 -> () -> ()
d_spec'45''8712'_1118 = erased
-- Axiom.Set._.specProperty
d_specProperty_1120 :: T_Theory_94 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1120 = erased
-- Axiom.Set._.specification
d_specification_1122 ::
  T_Theory_94 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1122 v0 = coe d_specification_186 (coe v0)
-- Axiom.Set._.strictify
d_strictify_1124 ::
  T_Theory_94 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1124 v0 v1 v2 v3 v4
  = coe du_strictify_378 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_1126 :: T_Theory_94 -> () -> AgdaAny -> ()
d_strongly'45'finite_1126 = erased
-- Axiom.Set._.unions
d_unions_1128 ::
  T_Theory_94 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1128 v0 = coe d_unions_196 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_1130 :: T_Theory_94 -> () -> AgdaAny -> ()
d_weakly'45'finite_1130 = erased
-- Axiom.Set._.∅
d_'8709'_1132 :: T_Theory_94 -> () -> AgdaAny
d_'8709'_1132 v0 v1 = coe du_'8709'_442 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1134 ::
  T_Theory_94 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1134 v0 v1
  = coe du_'8709''45'strongly'45'finite_444 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1136 ::
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_1136 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_520 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_1138 ::
  T_Theory_94 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_1138 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_426 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_1140 ::
  T_Theory_94 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_1140 v0 v1 v2 v3
  = coe du_'8712''45'fromList_432 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_1142 :: T_Theory_94 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1142 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_1144 ::
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_1144 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_406 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_1146 ::
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_1146 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_586 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_1148 ::
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1148 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_412 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_1150 ::
  T_Theory_94 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_1150 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_484 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_1152 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_1152 v0 v1 v2 v3
  = coe du_'8712''45'singleton_458 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_1154 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_1154 v0 v1 v2 v3
  = coe du_'8712''45'unions_440 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_1156 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_1156 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_688 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_1158 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1158 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1158 v5
du_'8801''8594''8712'_1158 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1158 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_1160 ::
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1160 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_604 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1162 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1162 ~v0
  = du_'8838''45'weakly'45'finite_1162
du_'8838''45'weakly'45'finite_1162 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1162 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_340 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_1164 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1164 v0 = coe du_'10100'_'10101'_452 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__1168 ::
  T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1168 v0 v1 v2 v3 v4
  = coe du__'8745'__704 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection._＼_
d__'65340'__1170 ::
  T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1170 v0 v1 v2 v3 v4
  = coe du__'65340'__730 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_1172 ::
  T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1172 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_1174 ::
  T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1174 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_712 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryⁱ.theory
d_theory_1182 :: T_Theory'8305'_1044 -> T_Theory_94
d_theory_1182 v0
  = case coe v0 of
      C_Theory'8305''46'constructor_104029 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryⁱ._._Preservesˢ_
d__Preserves'738'__1186 ::
  T_Theory'8305'_1044 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1186 = erased
-- Axiom.Set.Theoryⁱ._._Preservesˢ₂_
d__Preserves'738''8322'__1188 ::
  T_Theory'8305'_1044 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1188 = erased
-- Axiom.Set.Theoryⁱ._._∈_
d__'8712'__1190 ::
  T_Theory'8305'_1044 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1190 = erased
-- Axiom.Set.Theoryⁱ._._∉_
d__'8713'__1192 ::
  T_Theory'8305'_1044 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1192 = erased
-- Axiom.Set.Theoryⁱ._._∪_
d__'8746'__1194 ::
  T_Theory'8305'_1044 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1194 v0 v1 v2 v3
  = coe du__'8746'__680 (coe d_theory_1182 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._._≡ᵉ_
d__'8801''7497'__1196 ::
  T_Theory'8305'_1044 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1196 = erased
-- Axiom.Set.Theoryⁱ._._≡ᵉ'_
d__'8801''7497'''__1198 ::
  T_Theory'8305'_1044 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1198 = erased
-- Axiom.Set.Theoryⁱ._._⊆_
d__'8838'__1200 ::
  T_Theory'8305'_1044 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1200 = erased
-- Axiom.Set.Theoryⁱ._.All
d_All_1202 ::
  T_Theory'8305'_1044 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1202 = erased
-- Axiom.Set.Theoryⁱ._.Any
d_Any_1204 ::
  T_Theory'8305'_1044 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1204 = erased
-- Axiom.Set.Theoryⁱ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1206 ::
  T_Theory'8305'_1044 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1206 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1206
du_DecEq'8743'finite'8658'strongly'45'finite_1206 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1206 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_318 v1 v3
-- Axiom.Set.Theoryⁱ._.FinSet
d_FinSet_1208 :: T_Theory'8305'_1044 -> () -> ()
d_FinSet_1208 = erased
-- Axiom.Set.Theoryⁱ._.Set
d_Set_1210 :: T_Theory'8305'_1044 -> () -> ()
d_Set_1210 = erased
-- Axiom.Set.Theoryⁱ._.Show-finite
d_Show'45'finite_1212 ::
  T_Theory'8305'_1044 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_1212 ~v0 = du_Show'45'finite_1212
du_Show'45'finite_1212 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_1212 v0 v1 = coe du_Show'45'finite_292 v1
-- Axiom.Set.Theoryⁱ._.binary-unions
d_binary'45'unions_1214 ::
  T_Theory'8305'_1044 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1214 v0 v1 v2 v3
  = coe du_binary'45'unions_644 (coe d_theory_1182 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.card
d_card_1216 ::
  T_Theory'8305'_1044 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1216 ~v0 = du_card_1216
du_card_1216 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1216 v0 v1 = coe du_card_336 v1
-- Axiom.Set.Theoryⁱ._.card-∅
d_card'45''8709'_1218 ::
  T_Theory'8305'_1044 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1218 = erased
-- Axiom.Set.Theoryⁱ._.concatMapˢ
d_concatMap'738'_1220 ::
  T_Theory'8305'_1044 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1220 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_508 (coe d_theory_1182 (coe v0)) v3 v4
-- Axiom.Set.Theoryⁱ._.disjoint
d_disjoint_1222 ::
  T_Theory'8305'_1044 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1222 = erased
-- Axiom.Set.Theoryⁱ._.filter
d_filter_1224 ::
  T_Theory'8305'_1044 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1224 v0 v1 v2
  = coe du_filter_420 (coe d_theory_1182 (coe v0))
-- Axiom.Set.Theoryⁱ._.finite
d_finite_1226 :: T_Theory'8305'_1044 -> () -> AgdaAny -> ()
d_finite_1226 = erased
-- Axiom.Set.Theoryⁱ._.fromList
d_fromList_1228 ::
  T_Theory'8305'_1044 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1228 v0 v1 v2
  = coe du_fromList_428 (coe d_theory_1182 (coe v0)) v2
-- Axiom.Set.Theoryⁱ._.isMaximal
d_isMaximal_1230 :: T_Theory'8305'_1044 -> () -> AgdaAny -> ()
d_isMaximal_1230 = erased
-- Axiom.Set.Theoryⁱ._.listing
d_listing_1232 ::
  T_Theory'8305'_1044 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1232 v0 = coe d_listing_216 (coe d_theory_1182 (coe v0))
-- Axiom.Set.Theoryⁱ._.map
d_map_1234 ::
  T_Theory'8305'_1044 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1234 v0 v1 v2 = coe du_map_398 (coe d_theory_1182 (coe v0))
-- Axiom.Set.Theoryⁱ._.mapPartial
d_mapPartial_1236 ::
  T_Theory'8305'_1044 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1236 v0 v1 v2 v3
  = coe du_mapPartial_576 (coe d_theory_1182 (coe v0)) v3
-- Axiom.Set.Theoryⁱ._.maximal-unique
d_maximal'45'unique_1238 ::
  T_Theory'8305'_1044 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1238 ~v0 = du_maximal'45'unique_1238
du_maximal'45'unique_1238 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1238 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_360 v3 v4
-- Axiom.Set.Theoryⁱ._.maximal-⊆
d_maximal'45''8838'_1240 ::
  T_Theory'8305'_1044 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1240 ~v0 = du_maximal'45''8838'_1240
du_maximal'45''8838'_1240 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1240 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_356 v3 v4
-- Axiom.Set.Theoryⁱ._.partialToSet
d_partialToSet_1242 ::
  T_Theory'8305'_1044 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1242 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_472 (coe d_theory_1182 (coe v0)) v4 v5
-- Axiom.Set.Theoryⁱ._.replacement
d_replacement_1244 ::
  T_Theory'8305'_1044 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1244 v0
  = coe d_replacement_208 (coe d_theory_1182 (coe v0))
-- Axiom.Set.Theoryⁱ._.singleton
d_singleton_1246 :: T_Theory'8305'_1044 -> () -> AgdaAny -> AgdaAny
d_singleton_1246 v0 v1 v2
  = coe du_singleton_448 (coe d_theory_1182 (coe v0)) v2
-- Axiom.Set.Theoryⁱ._.sp
d_sp_1248 :: T_Theory'8305'_1044 -> T_SpecProperty_48
d_sp_1248 v0 = coe d_sp_162 (coe d_theory_1182 (coe v0))
-- Axiom.Set.Theoryⁱ._.sp-¬
d_sp'45''172'_1250 ::
  T_Theory'8305'_1044 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1250 v0
  = coe d_sp'45''172'_70 (coe d_sp_162 (coe d_theory_1182 (coe v0)))
-- Axiom.Set.Theoryⁱ._.sp-∘
d_sp'45''8728'_1252 ::
  T_Theory'8305'_1044 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1252 v0
  = coe d_sp'45''8728'_68 (coe d_sp_162 (coe d_theory_1182 (coe v0)))
-- Axiom.Set.Theoryⁱ._.spec-∈
d_spec'45''8712'_1254 :: T_Theory'8305'_1044 -> () -> ()
d_spec'45''8712'_1254 = erased
-- Axiom.Set.Theoryⁱ._.specProperty
d_specProperty_1256 ::
  T_Theory'8305'_1044 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1256 = erased
-- Axiom.Set.Theoryⁱ._.specification
d_specification_1258 ::
  T_Theory'8305'_1044 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1258 v0
  = coe d_specification_186 (coe d_theory_1182 (coe v0))
-- Axiom.Set.Theoryⁱ._.strictify
d_strictify_1260 ::
  T_Theory'8305'_1044 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1260 v0 v1 v2 v3 v4
  = coe du_strictify_378 (coe d_theory_1182 (coe v0)) v3 v4
-- Axiom.Set.Theoryⁱ._.strongly-finite
d_strongly'45'finite_1262 ::
  T_Theory'8305'_1044 -> () -> AgdaAny -> ()
d_strongly'45'finite_1262 = erased
-- Axiom.Set.Theoryⁱ._.unions
d_unions_1264 ::
  T_Theory'8305'_1044 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1264 v0 = coe d_unions_196 (coe d_theory_1182 (coe v0))
-- Axiom.Set.Theoryⁱ._.weakly-finite
d_weakly'45'finite_1266 ::
  T_Theory'8305'_1044 -> () -> AgdaAny -> ()
d_weakly'45'finite_1266 = erased
-- Axiom.Set.Theoryⁱ._.∅
d_'8709'_1268 :: T_Theory'8305'_1044 -> () -> AgdaAny
d_'8709'_1268 v0 v1
  = coe du_'8709'_442 (coe d_theory_1182 (coe v0))
-- Axiom.Set.Theoryⁱ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1270 ::
  T_Theory'8305'_1044 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1270 v0 v1
  = coe
      du_'8709''45'strongly'45'finite_444 (coe d_theory_1182 (coe v0))
-- Axiom.Set.Theoryⁱ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1272 ::
  T_Theory'8305'_1044 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_1272 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_520 (coe d_theory_1182 (coe v0)) v3 v4
      v5
-- Axiom.Set.Theoryⁱ._.∈-filter
d_'8712''45'filter_1274 ::
  T_Theory'8305'_1044 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_1274 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_426 (coe d_theory_1182 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-fromList
d_'8712''45'fromList_1276 ::
  T_Theory'8305'_1044 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_1276 v0 v1 v2 v3
  = coe du_'8712''45'fromList_432 (coe d_theory_1182 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-irrelevant
d_'8712''45'irrelevant_1278 ::
  T_Theory'8305'_1044 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1278 = erased
-- Axiom.Set.Theoryⁱ._.∈-map
d_'8712''45'map_1280 ::
  T_Theory'8305'_1044 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_1280 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_406 (coe d_theory_1182 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-mapPartial
d_'8712''45'mapPartial_1282 ::
  T_Theory'8305'_1044 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_1282 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'mapPartial_586 (coe d_theory_1182 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-map′
d_'8712''45'map'8242'_1284 ::
  T_Theory'8305'_1044 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1284 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_412 (coe d_theory_1182 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryⁱ._.∈-partialToSet
d_'8712''45'partialToSet_1286 ::
  T_Theory'8305'_1044 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_1286 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_484 (coe d_theory_1182 (coe v0)) v5
-- Axiom.Set.Theoryⁱ._.∈-singleton
d_'8712''45'singleton_1288 ::
  T_Theory'8305'_1044 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_1288 v0 v1 v2 v3
  = coe du_'8712''45'singleton_458 (coe d_theory_1182 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-unions
d_'8712''45'unions_1290 ::
  T_Theory'8305'_1044 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_1290 v0 v1 v2 v3
  = coe du_'8712''45'unions_440 (coe d_theory_1182 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-∪
d_'8712''45''8746'_1292 ::
  T_Theory'8305'_1044 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_1292 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_688 (coe d_theory_1182 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryⁱ._.≡→∈
d_'8801''8594''8712'_1294 ::
  T_Theory'8305'_1044 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1294 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1294 v5
du_'8801''8594''8712'_1294 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1294 v0 = coe v0
-- Axiom.Set.Theoryⁱ._.⊆-mapPartial
d_'8838''45'mapPartial_1296 ::
  T_Theory'8305'_1044 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1296 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_604 (coe d_theory_1182 (coe v0)) v3 v4 v5
      v6
-- Axiom.Set.Theoryⁱ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1298 ::
  T_Theory'8305'_1044 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1298 ~v0
  = du_'8838''45'weakly'45'finite_1298
du_'8838''45'weakly'45'finite_1298 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1298 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_340 v3 v4
-- Axiom.Set.Theoryⁱ._.❴_❵
d_'10100'_'10101'_1300 ::
  T_Theory'8305'_1044 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1300 v0
  = coe du_'10100'_'10101'_452 (coe d_theory_1182 (coe v0))
-- Axiom.Set.Theoryⁱ._.Intersection._∩_
d__'8745'__1304 ::
  T_Theory'8305'_1044 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1304 v0 v1 v2 v3 v4
  = coe du__'8745'__704 (coe d_theory_1182 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryⁱ._.Intersection._＼_
d__'65340'__1306 ::
  T_Theory'8305'_1044 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1306 v0 v1 v2 v3 v4
  = coe du__'65340'__730 (coe d_theory_1182 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryⁱ._.Intersection.disjoint'
d_disjoint''_1308 ::
  T_Theory'8305'_1044 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1308 = erased
-- Axiom.Set.Theoryⁱ._.Intersection.∈-∩
d_'8712''45''8745'_1310 ::
  T_Theory'8305'_1044 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1310 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45''8745'_712 (coe d_theory_1182 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryⁱ.infinity
d_infinity_1316 ::
  T_Theory'8305'_1044 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infinity_1316 v0
  = case coe v0 of
      C_Theory'8305''46'constructor_104029 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ
d_Theory'7496'_1318 = ()
data T_Theory'7496'_1318
  = C_Theory'7496''46'constructor_107593 T_Theory_94
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
d__Preserves'738'__1324 ::
  T_Theory_94 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1324 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__1326 ::
  T_Theory_94 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1326 = erased
-- Axiom.Set._._∈_
d__'8712'__1328 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1328 = erased
-- Axiom.Set._._∉_
d__'8713'__1330 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1330 = erased
-- Axiom.Set._._∪_
d__'8746'__1332 ::
  T_Theory_94 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1332 v0 v1 v2 v3 = coe du__'8746'__680 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__1334 ::
  T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1334 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__1336 ::
  T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1336 = erased
-- Axiom.Set._._⊆_
d__'8838'__1338 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1338 = erased
-- Axiom.Set._.All
d_All_1340 :: T_Theory_94 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1340 = erased
-- Axiom.Set._.Any
d_Any_1342 :: T_Theory_94 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1342 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1344 ::
  T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1344 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1344
du_DecEq'8743'finite'8658'strongly'45'finite_1344 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1344 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_318 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_1346 :: T_Theory_94 -> () -> ()
d_FinSet_1346 = erased
-- Axiom.Set._.Set
d_Set_1348 :: T_Theory_94 -> () -> ()
d_Set_1348 = erased
-- Axiom.Set._.Show-finite
d_Show'45'finite_1350 ::
  T_Theory_94 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_1350 ~v0 = du_Show'45'finite_1350
du_Show'45'finite_1350 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_1350 v0 v1 = coe du_Show'45'finite_292 v1
-- Axiom.Set._.binary-unions
d_binary'45'unions_1352 ::
  T_Theory_94 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1352 v0 v1 v2 v3
  = coe du_binary'45'unions_644 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_1354 ::
  T_Theory_94 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1354 ~v0 = du_card_1354
du_card_1354 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1354 v0 v1 = coe du_card_336 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_1356 ::
  T_Theory_94 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1356 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_1358 ::
  T_Theory_94 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1358 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_508 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_1360 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1360 = erased
-- Axiom.Set._.filter
d_filter_1362 ::
  T_Theory_94 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1362 v0 v1 v2 = coe du_filter_420 (coe v0)
-- Axiom.Set._.finite
d_finite_1364 :: T_Theory_94 -> () -> AgdaAny -> ()
d_finite_1364 = erased
-- Axiom.Set._.fromList
d_fromList_1366 :: T_Theory_94 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1366 v0 v1 v2 = coe du_fromList_428 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_1368 :: T_Theory_94 -> () -> AgdaAny -> ()
d_isMaximal_1368 = erased
-- Axiom.Set._.listing
d_listing_1370 ::
  T_Theory_94 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1370 v0 = coe d_listing_216 (coe v0)
-- Axiom.Set._.map
d_map_1372 ::
  T_Theory_94 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1372 v0 v1 v2 = coe du_map_398 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_1374 ::
  T_Theory_94 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1374 v0 v1 v2 v3 = coe du_mapPartial_576 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_1376 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1376 ~v0 = du_maximal'45'unique_1376
du_maximal'45'unique_1376 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1376 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_360 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_1378 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1378 ~v0 = du_maximal'45''8838'_1378
du_maximal'45''8838'_1378 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1378 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_356 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_1380 ::
  T_Theory_94 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1380 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_472 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_1382 ::
  T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1382 v0 = coe d_replacement_208 (coe v0)
-- Axiom.Set._.singleton
d_singleton_1384 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny
d_singleton_1384 v0 v1 v2 = coe du_singleton_448 (coe v0) v2
-- Axiom.Set._.sp
d_sp_1386 :: T_Theory_94 -> T_SpecProperty_48
d_sp_1386 v0 = coe d_sp_162 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_1388 ::
  T_Theory_94 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1388 v0
  = coe d_sp'45''172'_70 (coe d_sp_162 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_1390 ::
  T_Theory_94 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1390 v0
  = coe d_sp'45''8728'_68 (coe d_sp_162 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_1392 :: T_Theory_94 -> () -> ()
d_spec'45''8712'_1392 = erased
-- Axiom.Set._.specProperty
d_specProperty_1394 :: T_Theory_94 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1394 = erased
-- Axiom.Set._.specification
d_specification_1396 ::
  T_Theory_94 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1396 v0 = coe d_specification_186 (coe v0)
-- Axiom.Set._.strictify
d_strictify_1398 ::
  T_Theory_94 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1398 v0 v1 v2 v3 v4
  = coe du_strictify_378 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_1400 :: T_Theory_94 -> () -> AgdaAny -> ()
d_strongly'45'finite_1400 = erased
-- Axiom.Set._.unions
d_unions_1402 ::
  T_Theory_94 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1402 v0 = coe d_unions_196 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_1404 :: T_Theory_94 -> () -> AgdaAny -> ()
d_weakly'45'finite_1404 = erased
-- Axiom.Set._.∅
d_'8709'_1406 :: T_Theory_94 -> () -> AgdaAny
d_'8709'_1406 v0 v1 = coe du_'8709'_442 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1408 ::
  T_Theory_94 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1408 v0 v1
  = coe du_'8709''45'strongly'45'finite_444 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1410 ::
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_1410 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_520 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_1412 ::
  T_Theory_94 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_1412 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_426 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_1414 ::
  T_Theory_94 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_1414 v0 v1 v2 v3
  = coe du_'8712''45'fromList_432 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_1416 :: T_Theory_94 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1416 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_1418 ::
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_1418 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_406 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_1420 ::
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_1420 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_586 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_1422 ::
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1422 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_412 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_1424 ::
  T_Theory_94 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_1424 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_484 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_1426 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_1426 v0 v1 v2 v3
  = coe du_'8712''45'singleton_458 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_1428 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_1428 v0 v1 v2 v3
  = coe du_'8712''45'unions_440 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_1430 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_1430 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_688 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_1432 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1432 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1432 v5
du_'8801''8594''8712'_1432 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1432 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_1434 ::
  T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1434 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_604 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1436 ::
  T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1436 ~v0
  = du_'8838''45'weakly'45'finite_1436
du_'8838''45'weakly'45'finite_1436 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1436 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_340 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_1438 :: T_Theory_94 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1438 v0 = coe du_'10100'_'10101'_452 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__1442 ::
  T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1442 v0 v1 v2 v3 v4
  = coe du__'8745'__704 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection._＼_
d__'65340'__1444 ::
  T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1444 v0 v1 v2 v3 v4
  = coe du__'65340'__730 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_1446 ::
  T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1446 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_1448 ::
  T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1448 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_712 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryᵈ.th
d_th_1470 :: T_Theory'7496'_1318 -> T_Theory_94
d_th_1470 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_107593 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._._Preservesˢ_
d__Preserves'738'__1474 ::
  T_Theory'7496'_1318 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1474 = erased
-- Axiom.Set.Theoryᵈ._._Preservesˢ₂_
d__Preserves'738''8322'__1476 ::
  T_Theory'7496'_1318 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1476 = erased
-- Axiom.Set.Theoryᵈ._._∈_
d__'8712'__1478 ::
  T_Theory'7496'_1318 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1478 = erased
-- Axiom.Set.Theoryᵈ._._∉_
d__'8713'__1480 ::
  T_Theory'7496'_1318 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1480 = erased
-- Axiom.Set.Theoryᵈ._._∪_
d__'8746'__1482 ::
  T_Theory'7496'_1318 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1482 v0 v1 v2 v3
  = coe du__'8746'__680 (coe d_th_1470 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._._≡ᵉ_
d__'8801''7497'__1484 ::
  T_Theory'7496'_1318 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1484 = erased
-- Axiom.Set.Theoryᵈ._._≡ᵉ'_
d__'8801''7497'''__1486 ::
  T_Theory'7496'_1318 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1486 = erased
-- Axiom.Set.Theoryᵈ._._⊆_
d__'8838'__1488 ::
  T_Theory'7496'_1318 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1488 = erased
-- Axiom.Set.Theoryᵈ._.All
d_All_1490 ::
  T_Theory'7496'_1318 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1490 = erased
-- Axiom.Set.Theoryᵈ._.Any
d_Any_1492 ::
  T_Theory'7496'_1318 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1492 = erased
-- Axiom.Set.Theoryᵈ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1494 ::
  T_Theory'7496'_1318 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1494 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1494
du_DecEq'8743'finite'8658'strongly'45'finite_1494 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1494 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_318 v1 v3
-- Axiom.Set.Theoryᵈ._.FinSet
d_FinSet_1496 :: T_Theory'7496'_1318 -> () -> ()
d_FinSet_1496 = erased
-- Axiom.Set.Theoryᵈ._.Set
d_Set_1498 :: T_Theory'7496'_1318 -> () -> ()
d_Set_1498 = erased
-- Axiom.Set.Theoryᵈ._.Show-finite
d_Show'45'finite_1500 ::
  T_Theory'7496'_1318 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_1500 ~v0 = du_Show'45'finite_1500
du_Show'45'finite_1500 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_1500 v0 v1 = coe du_Show'45'finite_292 v1
-- Axiom.Set.Theoryᵈ._.binary-unions
d_binary'45'unions_1502 ::
  T_Theory'7496'_1318 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1502 v0 v1 v2 v3
  = coe du_binary'45'unions_644 (coe d_th_1470 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.card
d_card_1504 ::
  T_Theory'7496'_1318 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1504 ~v0 = du_card_1504
du_card_1504 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1504 v0 v1 = coe du_card_336 v1
-- Axiom.Set.Theoryᵈ._.card-∅
d_card'45''8709'_1506 ::
  T_Theory'7496'_1318 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1506 = erased
-- Axiom.Set.Theoryᵈ._.concatMapˢ
d_concatMap'738'_1508 ::
  T_Theory'7496'_1318 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1508 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_508 (coe d_th_1470 (coe v0)) v3 v4
-- Axiom.Set.Theoryᵈ._.disjoint
d_disjoint_1510 ::
  T_Theory'7496'_1318 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1510 = erased
-- Axiom.Set.Theoryᵈ._.filter
d_filter_1512 ::
  T_Theory'7496'_1318 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1512 v0 v1 v2 = coe du_filter_420 (coe d_th_1470 (coe v0))
-- Axiom.Set.Theoryᵈ._.finite
d_finite_1514 :: T_Theory'7496'_1318 -> () -> AgdaAny -> ()
d_finite_1514 = erased
-- Axiom.Set.Theoryᵈ._.fromList
d_fromList_1516 ::
  T_Theory'7496'_1318 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1516 v0 v1 v2
  = coe du_fromList_428 (coe d_th_1470 (coe v0)) v2
-- Axiom.Set.Theoryᵈ._.isMaximal
d_isMaximal_1518 :: T_Theory'7496'_1318 -> () -> AgdaAny -> ()
d_isMaximal_1518 = erased
-- Axiom.Set.Theoryᵈ._.listing
d_listing_1520 ::
  T_Theory'7496'_1318 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1520 v0 = coe d_listing_216 (coe d_th_1470 (coe v0))
-- Axiom.Set.Theoryᵈ._.map
d_map_1522 ::
  T_Theory'7496'_1318 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1522 v0 v1 v2 = coe du_map_398 (coe d_th_1470 (coe v0))
-- Axiom.Set.Theoryᵈ._.mapPartial
d_mapPartial_1524 ::
  T_Theory'7496'_1318 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1524 v0 v1 v2 v3
  = coe du_mapPartial_576 (coe d_th_1470 (coe v0)) v3
-- Axiom.Set.Theoryᵈ._.maximal-unique
d_maximal'45'unique_1526 ::
  T_Theory'7496'_1318 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1526 ~v0 = du_maximal'45'unique_1526
du_maximal'45'unique_1526 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1526 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_360 v3 v4
-- Axiom.Set.Theoryᵈ._.maximal-⊆
d_maximal'45''8838'_1528 ::
  T_Theory'7496'_1318 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1528 ~v0 = du_maximal'45''8838'_1528
du_maximal'45''8838'_1528 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1528 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_356 v3 v4
-- Axiom.Set.Theoryᵈ._.partialToSet
d_partialToSet_1530 ::
  T_Theory'7496'_1318 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1530 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_472 (coe d_th_1470 (coe v0)) v4 v5
-- Axiom.Set.Theoryᵈ._.replacement
d_replacement_1532 ::
  T_Theory'7496'_1318 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1532 v0
  = coe d_replacement_208 (coe d_th_1470 (coe v0))
-- Axiom.Set.Theoryᵈ._.singleton
d_singleton_1534 :: T_Theory'7496'_1318 -> () -> AgdaAny -> AgdaAny
d_singleton_1534 v0 v1 v2
  = coe du_singleton_448 (coe d_th_1470 (coe v0)) v2
-- Axiom.Set.Theoryᵈ._.sp
d_sp_1536 :: T_Theory'7496'_1318 -> T_SpecProperty_48
d_sp_1536 v0 = coe d_sp_162 (coe d_th_1470 (coe v0))
-- Axiom.Set.Theoryᵈ._.sp-¬
d_sp'45''172'_1538 ::
  T_Theory'7496'_1318 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1538 v0
  = coe d_sp'45''172'_70 (coe d_sp_162 (coe d_th_1470 (coe v0)))
-- Axiom.Set.Theoryᵈ._.sp-∘
d_sp'45''8728'_1540 ::
  T_Theory'7496'_1318 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1540 v0
  = coe d_sp'45''8728'_68 (coe d_sp_162 (coe d_th_1470 (coe v0)))
-- Axiom.Set.Theoryᵈ._.spec-∈
d_spec'45''8712'_1542 :: T_Theory'7496'_1318 -> () -> ()
d_spec'45''8712'_1542 = erased
-- Axiom.Set.Theoryᵈ._.specProperty
d_specProperty_1544 ::
  T_Theory'7496'_1318 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1544 = erased
-- Axiom.Set.Theoryᵈ._.specification
d_specification_1546 ::
  T_Theory'7496'_1318 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1546 v0
  = coe d_specification_186 (coe d_th_1470 (coe v0))
-- Axiom.Set.Theoryᵈ._.strictify
d_strictify_1548 ::
  T_Theory'7496'_1318 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1548 v0 v1 v2 v3 v4
  = coe du_strictify_378 (coe d_th_1470 (coe v0)) v3 v4
-- Axiom.Set.Theoryᵈ._.strongly-finite
d_strongly'45'finite_1550 ::
  T_Theory'7496'_1318 -> () -> AgdaAny -> ()
d_strongly'45'finite_1550 = erased
-- Axiom.Set.Theoryᵈ._.unions
d_unions_1552 ::
  T_Theory'7496'_1318 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1552 v0 = coe d_unions_196 (coe d_th_1470 (coe v0))
-- Axiom.Set.Theoryᵈ._.weakly-finite
d_weakly'45'finite_1554 ::
  T_Theory'7496'_1318 -> () -> AgdaAny -> ()
d_weakly'45'finite_1554 = erased
-- Axiom.Set.Theoryᵈ._.∅
d_'8709'_1556 :: T_Theory'7496'_1318 -> () -> AgdaAny
d_'8709'_1556 v0 v1 = coe du_'8709'_442 (coe d_th_1470 (coe v0))
-- Axiom.Set.Theoryᵈ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1558 ::
  T_Theory'7496'_1318 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1558 v0 v1
  = coe du_'8709''45'strongly'45'finite_444 (coe d_th_1470 (coe v0))
-- Axiom.Set.Theoryᵈ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1560 ::
  T_Theory'7496'_1318 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_1560 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_520 (coe d_th_1470 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-filter
d_'8712''45'filter_1562 ::
  T_Theory'7496'_1318 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_1562 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_426 (coe d_th_1470 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-fromList
d_'8712''45'fromList_1564 ::
  T_Theory'7496'_1318 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_1564 v0 v1 v2 v3
  = coe du_'8712''45'fromList_432 (coe d_th_1470 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-irrelevant
d_'8712''45'irrelevant_1566 ::
  T_Theory'7496'_1318 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1566 = erased
-- Axiom.Set.Theoryᵈ._.∈-map
d_'8712''45'map_1568 ::
  T_Theory'7496'_1318 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_1568 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_406 (coe d_th_1470 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-mapPartial
d_'8712''45'mapPartial_1570 ::
  T_Theory'7496'_1318 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_1570 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_586 (coe d_th_1470 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-map′
d_'8712''45'map'8242'_1572 ::
  T_Theory'7496'_1318 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1572 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_412 (coe d_th_1470 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᵈ._.∈-partialToSet
d_'8712''45'partialToSet_1574 ::
  T_Theory'7496'_1318 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_1574 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_484 (coe d_th_1470 (coe v0)) v5
-- Axiom.Set.Theoryᵈ._.∈-singleton
d_'8712''45'singleton_1576 ::
  T_Theory'7496'_1318 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_1576 v0 v1 v2 v3
  = coe du_'8712''45'singleton_458 (coe d_th_1470 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-unions
d_'8712''45'unions_1578 ::
  T_Theory'7496'_1318 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_1578 v0 v1 v2 v3
  = coe du_'8712''45'unions_440 (coe d_th_1470 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-∪
d_'8712''45''8746'_1580 ::
  T_Theory'7496'_1318 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_1580 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_688 (coe d_th_1470 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᵈ._.≡→∈
d_'8801''8594''8712'_1582 ::
  T_Theory'7496'_1318 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1582 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1582 v5
du_'8801''8594''8712'_1582 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1582 v0 = coe v0
-- Axiom.Set.Theoryᵈ._.⊆-mapPartial
d_'8838''45'mapPartial_1584 ::
  T_Theory'7496'_1318 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1584 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_604 (coe d_th_1470 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᵈ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1586 ::
  T_Theory'7496'_1318 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1586 ~v0
  = du_'8838''45'weakly'45'finite_1586
du_'8838''45'weakly'45'finite_1586 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1586 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_340 v3 v4
-- Axiom.Set.Theoryᵈ._.❴_❵
d_'10100'_'10101'_1588 ::
  T_Theory'7496'_1318 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1588 v0
  = coe du_'10100'_'10101'_452 (coe d_th_1470 (coe v0))
-- Axiom.Set.Theoryᵈ._.Intersection._∩_
d__'8745'__1592 ::
  T_Theory'7496'_1318 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1592 v0 v1 v2 v3 v4
  = coe du__'8745'__704 (coe d_th_1470 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᵈ._.Intersection._＼_
d__'65340'__1594 ::
  T_Theory'7496'_1318 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1594 v0 v1 v2 v3 v4
  = coe du__'65340'__730 (coe d_th_1470 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᵈ._.Intersection.disjoint'
d_disjoint''_1596 ::
  T_Theory'7496'_1318 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1596 = erased
-- Axiom.Set.Theoryᵈ._.Intersection.∈-∩
d_'8712''45''8745'_1598 ::
  T_Theory'7496'_1318 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_1598 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_712 (coe d_th_1470 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryᵈ.∈-sp
d_'8712''45'sp_1600 ::
  T_Theory'7496'_1318 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
d_'8712''45'sp_1600 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_107593 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._∈?_
d__'8712''63'__1602 ::
  T_Theory'7496'_1318 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8712''63'__1602 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_107593 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ.all?
d_all'63'_1610 ::
  T_Theory'7496'_1318 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_all'63'_1610 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_107593 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ.any?
d_any'63'_1618 ::
  T_Theory'7496'_1318 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63'_1618 v0
  = case coe v0 of
      C_Theory'7496''46'constructor_107593 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._._.Dec-Allˢ
d_Dec'45'All'738'_1634 ::
  T_Theory'7496'_1318 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'All'738'_1634 v0 ~v1 ~v2 v3 v4
  = du_Dec'45'All'738'_1634 v0 v3 v4
du_Dec'45'All'738'_1634 ::
  T_Theory'7496'_1318 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'All'738'_1634 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
      (coe
         (\ v3 ->
            coe
              d_all'63'_1610 v0 erased erased
              (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v1))
              v3))
      (coe v2)
-- Axiom.Set.Theoryᵈ._._.Dec-Anyˢ
d_Dec'45'Any'738'_1638 ::
  T_Theory'7496'_1318 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'Any'738'_1638 v0 ~v1 ~v2 v3 v4
  = du_Dec'45'Any'738'_1638 v0 v3 v4
du_Dec'45'Any'738'_1638 ::
  T_Theory'7496'_1318 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'Any'738'_1638 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
      (coe
         d_any'63'_1618 v0 erased erased
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v1)))
      (coe v2)
-- Axiom.Set.Theoryᵈ._._.allᵇ
d_all'7495'_1648 ::
  T_Theory'7496'_1318 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
d_all'7495'_1648 v0 ~v1 ~v2 v3 v4 = du_all'7495'_1648 v0 v3 v4
du_all'7495'_1648 ::
  T_Theory'7496'_1318 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
du_all'7495'_1648 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_130 ()
      erased (coe d_all'63'_1610 v0 erased erased v1 v2)
-- Axiom.Set.Theoryᵈ._._.anyᵇ
d_any'7495'_1652 ::
  T_Theory'7496'_1318 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
d_any'7495'_1652 v0 ~v1 ~v2 v3 v4 = du_any'7495'_1652 v0 v3 v4
du_any'7495'_1652 ::
  T_Theory'7496'_1318 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
du_any'7495'_1652 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_130 ()
      erased (coe d_any'63'_1618 v0 erased erased v1 v2)
-- Axiom.Set.Theoryᵈ._._∈ᵇ_
d__'8712''7495'__1666 ::
  T_Theory'7496'_1318 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Bool
d__'8712''7495'__1666 v0 ~v1 v2 v3 v4
  = du__'8712''7495'__1666 v0 v2 v3 v4
du__'8712''7495'__1666 ::
  T_Theory'7496'_1318 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Bool
du__'8712''7495'__1666 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_130 ()
      erased (coe d__'8712''63'__1602 v0 erased v1 v2 v3)
-- Axiom.Set.Theoryᵈ._.Dec-∈
d_Dec'45''8712'_1672 ::
  T_Theory'7496'_1318 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8712'_1672 v0 ~v1 v2 v3 v4
  = du_Dec'45''8712'_1672 v0 v2 v3 v4
du_Dec'45''8712'_1672 ::
  T_Theory'7496'_1318 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45''8712'_1672 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
      (coe d__'8712''63'__1602 v0 erased v1) (coe v2) (coe v3)
-- Axiom.Set.Theoryᵈ._.incl-set'
d_incl'45'set''_1684 ::
  T_Theory'7496'_1318 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set''_1684 v0 ~v1 v2 v3 v4
  = du_incl'45'set''_1684 v0 v2 v3 v4
du_incl'45'set''_1684 ::
  T_Theory'7496'_1318 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incl'45'set''_1684 v0 v1 v2 v3
  = let v4 = coe d__'8712''63'__1602 v0 erased v1 v3 v2 in
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
d_incl'45'set_1710 ::
  T_Theory'7496'_1318 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
d_incl'45'set_1710 v0 ~v1 v2 v3 = du_incl'45'set_1710 v0 v2 v3
du_incl'45'set_1710 ::
  T_Theory'7496'_1318 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
du_incl'45'set_1710 v0 v1 v2
  = coe
      du_mapPartial_576 (d_th_1470 (coe v0))
      (coe du_incl'45'set''_1684 (coe v0) (coe v1) (coe v2)) v2
-- Axiom.Set.Theoryᵈ._._.incl-set-proj₁⊆
d_incl'45'set'45'proj'8321''8838'_1720 ::
  T_Theory'7496'_1318 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_incl'45'set'45'proj'8321''8838'_1720 v0 ~v1 v2 v3 v4 v5
  = du_incl'45'set'45'proj'8321''8838'_1720 v0 v2 v3 v4 v5
du_incl'45'set'45'proj'8321''8838'_1720 ::
  T_Theory'7496'_1318 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_incl'45'set'45'proj'8321''8838'_1720 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    d_replacement_208 (d_th_1470 (coe v0)) erased erased
                    (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                    (coe du_incl'45'set_1710 (coe v0) (coe v1) (coe v2)))
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
d_incl'45'set'45'proj'8321''8839'_1732 ::
  T_Theory'7496'_1318 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_incl'45'set'45'proj'8321''8839'_1732 v0 ~v1 v2 v3 v4 v5
  = du_incl'45'set'45'proj'8321''8839'_1732 v0 v2 v3 v4 v5
du_incl'45'set'45'proj'8321''8839'_1732 ::
  T_Theory'7496'_1318 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_incl'45'set'45'proj'8321''8839'_1732 v0 v1 v2 v3 v4
  = let v5 = coe d__'8712''63'__1602 v0 erased v1 v3 v2 in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
           -> if coe v6
                then case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                         -> coe
                              MAlonzo.Code.Function.Bundles.d_to_1724
                              (coe
                                 du_'8712''45'map_406 (coe d_th_1470 (coe v0))
                                 (coe
                                    du_mapPartial_576 (d_th_1470 (coe v0))
                                    (coe du_incl'45'set''_1684 (coe v0) (coe v1) (coe v2)) v2)
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
                                          du_'8712''45'mapPartial_586 (coe d_th_1470 (coe v0))
                                          (coe v2)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                             (coe v8))
                                          (coe du_incl'45'set''_1684 (coe v0) (coe v1) (coe v2)))
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
d_helper_1760 ::
  T_Theory'7496'_1318 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_helper_1760 = erased
-- Axiom.Set.Theoryᵈ._._.incl-set-proj₁
d_incl'45'set'45'proj'8321'_1770 ::
  T_Theory'7496'_1318 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set'45'proj'8321'_1770 v0 ~v1 v2 v3
  = du_incl'45'set'45'proj'8321'_1770 v0 v2 v3
du_incl'45'set'45'proj'8321'_1770 ::
  T_Theory'7496'_1318 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incl'45'set'45'proj'8321'_1770 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_incl'45'set'45'proj'8321''8838'_1720 (coe v0) (coe v1) (coe v2))
      (coe
         du_incl'45'set'45'proj'8321''8839'_1732 (coe v0) (coe v1) (coe v2))
