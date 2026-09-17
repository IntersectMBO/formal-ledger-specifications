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
  = C_constructor_84 (() ->
                      (AgdaAny -> ()) ->
                      () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny)
                     (() -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny)
                     (() ->
                      (AgdaAny -> ()) ->
                      (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny)
-- Axiom.Set.SpecProperty.specProperty
d_specProperty_70 ::
  T_SpecProperty_48 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_70 = erased
-- Axiom.Set.SpecProperty.sp-∘
d_sp'45''8728'_74 ::
  T_SpecProperty_48 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_74 v0
  = case coe v0 of
      C_constructor_84 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.SpecProperty.sp-¬
d_sp'45''172'_76 ::
  T_SpecProperty_48 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_76 v0
  = case coe v0 of
      C_constructor_84 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.SpecProperty.sp-∩
d_sp'45''8745'_82 ::
  T_SpecProperty_48 ->
  () ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_sp'45''8745'_82 v0
  = case coe v0 of
      C_constructor_84 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.⊤-SpecProperty
d_'8868''45'SpecProperty_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_SpecProperty_48
d_'8868''45'SpecProperty_88 ~v0 = du_'8868''45'SpecProperty_88
du_'8868''45'SpecProperty_88 :: T_SpecProperty_48
du_'8868''45'SpecProperty_88
  = coe
      C_constructor_84
      (\ v0 v1 v2 v3 v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (\ v0 v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (\ v0 v1 v2 v3 v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Axiom.Set.Dec-SpecProperty
d_Dec'45'SpecProperty_102 :: T_SpecProperty_48
d_Dec'45'SpecProperty_102
  = coe
      C_constructor_84 (\ v0 v1 v2 v3 v4 v5 -> coe v3 (coe v4 v5))
      (\ v0 v1 v2 v3 ->
         coe
           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_76
           (coe v2 v3))
      (\ v0 v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
           (coe v3 v5) (coe v4 v5))
-- Axiom.Set.Theory
d_Theory_118 a0 = ()
data T_Theory_118
  = C_constructor_780 T_SpecProperty_48
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
d_sp'45''172'_130 ::
  T_SpecProperty_48 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_130 v0 = coe d_sp'45''172'_76 (coe v0)
-- Axiom.Set._.sp-∘
d_sp'45''8728'_132 ::
  T_SpecProperty_48 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_132 v0 = coe d_sp'45''8728'_74 (coe v0)
-- Axiom.Set._.sp-∩
d_sp'45''8745'_134 ::
  T_SpecProperty_48 ->
  () ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_sp'45''8745'_134 v0 = coe d_sp'45''8745'_82 (coe v0)
-- Axiom.Set._.specProperty
d_specProperty_136 ::
  T_SpecProperty_48 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_136 = erased
-- Axiom.Set.Theory.Set
d_Set_184 :: T_Theory_118 -> () -> ()
d_Set_184 = erased
-- Axiom.Set.Theory._∈_
d__'8712'__186 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__186 = erased
-- Axiom.Set.Theory.sp
d_sp_188 :: T_Theory_118 -> T_SpecProperty_48
d_sp_188 v0
  = case coe v0 of
      C_constructor_780 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory._.sp-¬
d_sp'45''172'_192 ::
  T_Theory_118 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_192 v0 = coe d_sp'45''172'_76 (coe d_sp_188 (coe v0))
-- Axiom.Set.Theory._.sp-∘
d_sp'45''8728'_194 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_194 v0
  = coe d_sp'45''8728'_74 (coe d_sp_188 (coe v0))
-- Axiom.Set.Theory._.sp-∩
d_sp'45''8745'_196 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_sp'45''8745'_196 v0
  = coe d_sp'45''8745'_82 (coe d_sp_188 (coe v0))
-- Axiom.Set.Theory._.specProperty
d_specProperty_198 :: T_Theory_118 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_198 = erased
-- Axiom.Set.Theory._⊆_
d__'8838'__200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__200 = erased
-- Axiom.Set.Theory.specification
d_specification_214 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_214 v0
  = case coe v0 of
      C_constructor_780 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.unions
d_unions_224 ::
  T_Theory_118 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_224 v0
  = case coe v0 of
      C_constructor_780 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.replacement
d_replacement_236 ::
  T_Theory_118 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_236 v0
  = case coe v0 of
      C_constructor_780 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.listing
d_listing_244 ::
  T_Theory_118 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_244 v0
  = case coe v0 of
      C_constructor_780 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory._≡ᵉ_
d__'8801''7497'__252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__252 = erased
-- Axiom.Set.Theory._≡ᵉ'_
d__'8801''7497'''__258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__258 = erased
-- Axiom.Set.Theory._∉_
d__'8713'__266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__266 = erased
-- Axiom.Set.Theory.≡→∈
d_'8801''8594''8712'_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_274 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7
  = du_'8801''8594''8712'_274 v6
du_'8801''8594''8712'_274 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_274 v0 = coe v0
-- Axiom.Set.Theory.∈-irrelevant
d_'8712''45'irrelevant_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_278 = erased
-- Axiom.Set.Theory._Preservesˢ_
d__Preserves'738'__290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__290 = erased
-- Axiom.Set.Theory._Preservesˢ₂_
d__Preserves'738''8322'__298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__298 = erased
-- Axiom.Set.Theory.disjoint
d_disjoint_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_304 = erased
-- Axiom.Set.Theory.finite
d_finite_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> AgdaAny -> ()
d_finite_312 = erased
-- Axiom.Set.Theory.Show-finite
d_Show'45'finite_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_320 ~v0 ~v1 ~v2 v3 = du_Show'45'finite_320 v3
du_Show'45'finite_320 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_320 v0
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
d_weakly'45'finite_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> AgdaAny -> ()
d_weakly'45'finite_326 = erased
-- Axiom.Set.Theory.strongly-finite
d_strongly'45'finite_334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> AgdaAny -> ()
d_strongly'45'finite_334 = erased
-- Axiom.Set.Theory.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_346 ~v0 ~v1 ~v2 v3 ~v4
                                                v5
  = du_DecEq'8743'finite'8658'strongly'45'finite_346 v3 v5
du_DecEq'8743'finite'8658'strongly'45'finite_346 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_346 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Data.List.Base.du_deduplicate_882
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
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                        (\ v5 v6 v7 ->
                           coe
                             MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                             (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                        erased erased erased
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                           (\ v5 v6 v7 ->
                              coe
                                MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                           erased erased erased
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                              (\ v5 ->
                                 coe
                                   MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                   (coe
                                      MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                              erased)
                           (coe
                              MAlonzo.Code.Data.List.Ext.Properties.du_'8712''45'dedup_182
                              (coe v0) (coe v2) (coe v4)))
                        (coe v3 v4))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.card
d_card_364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_364 ~v0 ~v1 ~v2 v3 = du_card_364 v3
du_card_364 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_364 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe MAlonzo.Code.Data.List.Base.du_length_268 v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.⊆-weakly-finite
d_'8838''45'weakly'45'finite_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_368 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_'8838''45'weakly'45'finite_368 v5 v6
du_'8838''45'weakly'45'finite_368 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_368 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe (\ v4 v5 -> coe v3 v4 (coe v0 v4 v5)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.isMaximal
d_isMaximal_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> AgdaAny -> ()
d_isMaximal_376 = erased
-- Axiom.Set.Theory.maximal-⊆
d_maximal'45''8838'_384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_384 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7
  = du_maximal'45''8838'_384 v5 v6
du_maximal'45''8838'_384 ::
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_maximal'45''8838'_384 v0 v1 = coe v0 v1
-- Axiom.Set.Theory.maximal-unique
d_maximal'45'unique_388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_388 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_maximal'45'unique_388 v5 v6
du_maximal'45'unique_388 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_388 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v2 v3 -> coe du_maximal'45''8838'_384 (coe v1) v2)
      (\ v2 v3 -> coe du_maximal'45''8838'_384 (coe v0) v2)
-- Axiom.Set.Theory.FinSet
d_FinSet_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_Theory_118 -> () -> ()
d_FinSet_394 = erased
-- Axiom.Set.Theory.strictify
d_strictify_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_406 ~v0 v1 ~v2 ~v3 v4 v5 = du_strictify_406 v1 v4 v5
du_strictify_406 ::
  T_Theory_118 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_strictify_406 v0 v1 v2
  = let v3
          = coe
              d_specification_214 v0 erased erased
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)) v1 in
    coe
      (case coe v3 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
           -> coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                (coe
                   (\ v6 ->
                      coe
                        MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
                        (coe
                           (\ v7 ->
                              coe
                                MAlonzo.Code.Function.Bundles.d_to_1868 (coe v5 v6)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v2 v6 v7))))
                        (coe
                           (\ v7 ->
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe MAlonzo.Code.Function.Bundles.d_from_1870 (coe v5 v6) v7)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Theory.map
d_map_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_426 ~v0 v1 ~v2 ~v3 = du_map_426 v1
du_map_426 ::
  T_Theory_118 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map_426 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe
         (\ v1 v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe d_replacement_236 v0 erased erased)
-- Axiom.Set.Theory.∈-map
d_'8712''45'map_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'map_434 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'map_434 v1 v4 v5 v6
du_'8712''45'map_434 ::
  T_Theory_118 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'map_434 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_replacement_236 v0 erased erased v2 v1) v3
-- Axiom.Set.Theory.∈-map′
d_'8712''45'map'8242'_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_440 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8712''45'map'8242'_440 v1 v4 v5 v6 v7
du_'8712''45'map'8242'_440 ::
  T_Theory_118 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8712''45'map'8242'_440 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe du_'8712''45'map_434 (coe v0) (coe v1) (coe v2) (coe v2 v3))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v4)))
-- Axiom.Set.Theory.filter
d_filter_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_448 ~v0 v1 ~v2 ~v3 = du_filter_448 v1
du_filter_448 :: T_Theory_118 -> AgdaAny -> AgdaAny -> AgdaAny
du_filter_448 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe
         (\ v1 v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe (\ v1 v2 -> coe d_specification_214 v0 erased erased v2 v1))
-- Axiom.Set.Theory.∈-filter
d_'8712''45'filter_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'filter_454 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'filter_454 v1 v4 v5 v6
du_'8712''45'filter_454 ::
  T_Theory_118 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'filter_454 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_specification_214 v0 erased erased v1 v2) v3
-- Axiom.Set.Theory.fromList
d_fromList_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> [AgdaAny] -> AgdaAny
d_fromList_456 ~v0 v1 ~v2 v3 = du_fromList_456 v1 v3
du_fromList_456 :: T_Theory_118 -> [AgdaAny] -> AgdaAny
du_fromList_456 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_listing_244 v0 erased v1)
-- Axiom.Set.Theory.∈-fromList
d_'8712''45'fromList_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'fromList_460 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'fromList_460 v1 v3 v4
du_'8712''45'fromList_460 ::
  T_Theory_118 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'fromList_460 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_listing_244 v0 erased v1) v2
-- Axiom.Set.Theory.∈-unions
d_'8712''45'unions_468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'unions_468 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'unions_468 v1 v3 v4
du_'8712''45'unions_468 ::
  T_Theory_118 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'unions_468 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_unions_224 v0 erased v2) v1
-- Axiom.Set.Theory.∅
d_'8709'_470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> AgdaAny
d_'8709'_470 ~v0 v1 ~v2 = du_'8709'_470 v1
du_'8709'_470 :: T_Theory_118 -> AgdaAny
du_'8709'_470 v0
  = coe
      du_fromList_456 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Axiom.Set.Theory.∅-strongly-finite
d_'8709''45'strongly'45'finite_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_472 ~v0 v1 ~v2
  = du_'8709''45'strongly'45'finite_472 v1
du_'8709''45'strongly'45'finite_472 ::
  T_Theory_118 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''45'strongly'45'finite_472 v0
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
                    du_'8712''45'fromList_460 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v1)))))
-- Axiom.Set.Theory.card-∅
d_card'45''8709'_474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_474 = erased
-- Axiom.Set.Theory.singleton
d_singleton_476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> AgdaAny -> AgdaAny
d_singleton_476 ~v0 v1 ~v2 v3 = du_singleton_476 v1 v3
du_singleton_476 :: T_Theory_118 -> AgdaAny -> AgdaAny
du_singleton_476 v0 v1
  = coe
      du_fromList_456 (coe v0)
      (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v1))
-- Axiom.Set.Theory.❴_❵
d_'10100'_'10101'_480 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_480 ~v0 v1 = du_'10100'_'10101'_480 v1
du_'10100'_'10101'_480 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny
du_'10100'_'10101'_480 v0 v1 v2 = coe du_singleton_476 (coe v0) v2
-- Axiom.Set.Theory.∈-singleton
d_'8712''45'singleton_486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'singleton_486 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'singleton_486 v1 v3 v4
du_'8712''45'singleton_486 ::
  T_Theory_118 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'singleton_486 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
           (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
      erased erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
            (\ v3 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
            erased)
         (coe
            du_'8712''45'fromList_460 (coe v0)
            (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v2))
            (coe v1)))
      (coe
         MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
         (coe
            (\ v3 ->
               coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased))
         erased)
-- Axiom.Set.Theory.partialToSet
d_partialToSet_500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_500 ~v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_partialToSet_500 v1 v5 v6
du_partialToSet_500 ::
  T_Theory_118 -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
du_partialToSet_500 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe
         (\ v3 ->
            coe
              du_fromList_456 (coe v0)
              (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v3))))
      (coe du_'8709'_470 (coe v0)) (coe v1 v2)
-- Axiom.Set.Theory.∈-partialToSet
d_'8712''45'partialToSet_512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'partialToSet_512 ~v0 v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7
  = du_'8712''45'partialToSet_512 v1 v6
du_'8712''45'partialToSet_512 ::
  T_Theory_118 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'partialToSet_512 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1868
              (coe du_'8712''45'singleton_486 (coe v0) (coe v1) (coe v1))
              erased))
      erased
-- Axiom.Set.Theory.concatMapˢ
d_concatMap'738'_536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_536 ~v0 v1 ~v2 ~v3 v4 v5
  = du_concatMap'738'_536 v1 v4 v5
du_concatMap'738'_536 ::
  T_Theory_118 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_concatMap'738'_536 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_unions_224 v0 erased (coe du_map_426 v0 v1 v2))
-- Axiom.Set.Theory.∈-concatMapˢ
d_'8712''45'concatMap'738'_548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'concatMap'738'_548 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'concatMap'738'_548 v1 v4 v5 v6
du_'8712''45'concatMap'738'_548 ::
  T_Theory_118 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'concatMap'738'_548 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
           (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
      erased erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
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
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
            erased erased erased
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
               (\ v4 v5 v6 ->
                  coe
                    MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                    (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
               erased erased erased
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                  (\ v4 v5 v6 ->
                     coe
                       MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                       (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                  erased erased erased
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                          (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                     erased)
                  (coe
                     du_'8712''45'unions_468 (coe v0) (coe v2)
                     (coe du_map_426 v0 v3 v1)))
               (coe
                  MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
                  (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                       (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                       (coe du_'8712''45'map_434 (coe v0) (coe v1) (coe v3) (coe v4))
                       (coe
                          MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                          (coe
                             MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)))))
            (coe
               MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
               (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
               (\ v4 ->
                  coe
                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
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
d_mapPartial_604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_604 ~v0 v1 ~v2 ~v3 v4 = du_mapPartial_604 v1 v4
du_mapPartial_604 ::
  T_Theory_118 -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
du_mapPartial_604 v0 v1
  = coe
      du_concatMap'738'_536 (coe v0)
      (coe du_partialToSet_500 (coe v0) (coe v1))
-- Axiom.Set.Theory.∈-mapPartial
d_'8712''45'mapPartial_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'mapPartial_614 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'mapPartial_614 v1 v4 v5 v6
du_'8712''45'mapPartial_614 ::
  T_Theory_118 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'mapPartial_614 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
           (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
      erased erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
         (\ v4 v5 v6 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
            (\ v4 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
            erased)
         (coe
            du_'8712''45'concatMap'738'_548 (coe v0) (coe v1) (coe v2)
            (coe du_partialToSet_500 (coe v0) (coe v3))))
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
              (coe du_'8712''45'partialToSet_512 (coe v0) (coe v2))))
-- Axiom.Set.Theory.⊆-mapPartial
d_'8838''45'mapPartial_632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_632 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8838''45'mapPartial_632 v1 v4 v5 v6 v7
du_'8838''45'mapPartial_632 ::
  T_Theory_118 ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du_'8838''45'mapPartial_632 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    d_replacement_236 v0 erased erased
                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                    (coe du_mapPartial_604 v0 v2 v1))
                 v3)
              v4 in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> case coe v7 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                  -> let v10
                           = coe
                               MAlonzo.Code.Function.Bundles.du_to'8315'_996
                               (coe
                                  MAlonzo.Code.Function.Properties.Inverse.du_'8596''8658''8608'_626
                                  (coe
                                     MAlonzo.Code.Function.Bundles.du_mk'8596'_2526
                                     (coe (\ v10 -> v10)) (coe (\ v10 -> v10))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe (\ v10 v11 v12 -> v12)) (coe (\ v10 v11 v12 -> v12)))))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe
                                     MAlonzo.Code.Function.Bundles.d_from_1870
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                                        (\ v10 v11 v12 ->
                                           coe
                                             MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                             (coe
                                                MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                        erased erased erased
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                           (\ v10 ->
                                              coe
                                                MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                                (coe
                                                   MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                           erased)
                                        (coe
                                           du_'8712''45'concatMap'738'_548 (coe v0) (coe v1)
                                           (coe v6) (coe du_partialToSet_500 (coe v0) (coe v2))))
                                     v9)) in
                     coe
                       (let v11
                              = coe
                                  MAlonzo.Code.Function.Bundles.d_from_1870
                                  (coe
                                     MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                                     (coe
                                        MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                                     (coe
                                        MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                        (coe
                                           MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                     (coe du_'8712''45'partialToSet_512 (coe v0) (coe v6)))
                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Function.Bundles.d_from_1870
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                                           (\ v11 v12 v13 ->
                                              coe
                                                MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                                (coe
                                                   MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                           erased erased erased
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                              (\ v11 ->
                                                 coe
                                                   MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                                   (coe
                                                      MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                              erased)
                                           (coe
                                              du_'8712''45'concatMap'738'_548 (coe v0) (coe v1)
                                              (coe v6) (coe du_partialToSet_500 (coe v0) (coe v2))))
                                        v9)) in
                        coe
                          (case coe v11 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                               -> coe
                                    MAlonzo.Code.Function.Bundles.d_to_1868
                                    (coe
                                       du_'8712''45'map_434 (coe v0) (coe v1) (coe v2)
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
d_binary'45'unions_672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_672 ~v0 v1 ~v2 v3 v4
  = du_binary'45'unions_672 v1 v3 v4
du_binary'45'unions_672 ::
  T_Theory_118 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_binary'45'unions_672 v0 v1 v2
  = let v3
          = coe
              d_unions_224 v0 erased
              (coe
                 du_fromList_456 (coe v0)
                 (coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                    (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v2)))) in
    coe
      (case coe v3 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
           -> coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                (coe
                   (\ v6 ->
                      coe
                        MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
                        (coe
                           (\ v7 ->
                              case coe v7 of
                                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                                  -> coe
                                       MAlonzo.Code.Function.Bundles.d_to_1868 (coe v5 v6)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Function.Bundles.d_to_1868
                                                (coe
                                                   du_'8712''45'fromList_460 (coe v0)
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
                                       MAlonzo.Code.Function.Bundles.d_to_1868 (coe v5 v6)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Function.Bundles.d_to_1868
                                                (coe
                                                   du_'8712''45'fromList_460 (coe v0)
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
                                        MAlonzo.Code.Function.Bundles.d_from_1870 (coe v5 v6) v7 in
                              coe
                                (let v9
                                       = coe
                                           MAlonzo.Code.Function.Bundles.d_from_1870
                                           (coe
                                              du_'8712''45'fromList_460 (coe v0)
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
                                                    MAlonzo.Code.Function.Bundles.d_from_1870
                                                    (coe v5 v6) v7)))
                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                 (coe
                                                    MAlonzo.Code.Function.Bundles.d_from_1870
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
d__'8746'__708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__708 ~v0 v1 ~v2 v3 v4 = du__'8746'__708 v1 v3 v4
du__'8746'__708 :: T_Theory_118 -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746'__708 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe du_binary'45'unions_672 (coe v0) (coe v1) (coe v2))
-- Axiom.Set.Theory.∈-∪
d_'8712''45''8746'_716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8746'_716 ~v0 v1 ~v2 v3 v4 v5
  = du_'8712''45''8746'_716 v1 v3 v4 v5
du_'8712''45''8746'_716 ::
  T_Theory_118 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45''8746'_716 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe du_binary'45'unions_672 (coe v0) (coe v1) (coe v2)) v3
-- Axiom.Set.Theory.spec-∈
d_spec'45''8712'_718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_Theory_118 -> () -> ()
d_spec'45''8712'_718 = erased
-- Axiom.Set.Theory.Intersection._∩_
d__'8745'__732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__732 ~v0 v1 ~v2 v3 v4 v5 = du__'8745'__732 v1 v3 v4 v5
du__'8745'__732 ::
  T_Theory_118 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8745'__732 v0 v1 v2 v3 = coe du_filter_448 v0 (coe v1 v3) v2
-- Axiom.Set.Theory.Intersection.∈-∩
d_'8712''45''8745'_740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8745'_740 ~v0 v1 ~v2 v3 v4 v5 v6
  = du_'8712''45''8745'_740 v1 v3 v4 v5 v6
du_'8712''45''8745'_740 ::
  T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45''8745'_740 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
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
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
         (\ v5 v6 v7 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
            (\ v5 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
            erased)
         (coe
            du_'8712''45'filter_454 (coe v0) (coe v2) (coe v1 v3) (coe v4)))
      (coe MAlonzo.Code.Data.Product.Algebra.du_'215''45'comm_232)
-- Axiom.Set.Theory.Intersection.disjoint'
d_disjoint''_752 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_752 = erased
-- Axiom.Set.Theory.Intersection._＼_
d__'65340'__758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__758 ~v0 v1 ~v2 v3 v4 v5 = du__'65340'__758 v1 v3 v4 v5
du__'65340'__758 ::
  T_Theory_118 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'65340'__758 v0 v1 v2 v3
  = coe
      du_filter_448 v0
      (coe
         d_sp'45''172'_76 (d_sp_188 (coe v0)) erased erased (coe v1 v3))
      v2
-- Axiom.Set.Theory.All
d_All_764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_764 = erased
-- Axiom.Set.Theory.Any
d_Any_772 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_118 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_772 = erased
-- Axiom.Set.Theoryᶠ
d_Theory'7584'_782 = ()
data T_Theory'7584'_782
  = C_constructor_1080 T_Theory_118
                       (() -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Axiom.Set._._Preservesˢ_
d__Preserves'738'__788 ::
  T_Theory_118 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__788 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__790 ::
  T_Theory_118 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__790 = erased
-- Axiom.Set._._∈_
d__'8712'__792 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__792 = erased
-- Axiom.Set._._∉_
d__'8713'__794 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__794 = erased
-- Axiom.Set._._∪_
d__'8746'__796 ::
  T_Theory_118 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__796 v0 v1 v2 v3 = coe du__'8746'__708 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__798 ::
  T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__798 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__800 ::
  T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__800 = erased
-- Axiom.Set._._⊆_
d__'8838'__802 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__802 = erased
-- Axiom.Set._.All
d_All_804 :: T_Theory_118 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_804 = erased
-- Axiom.Set._.Any
d_Any_806 :: T_Theory_118 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_806 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_808 ::
  T_Theory_118 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_808 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_808
du_DecEq'8743'finite'8658'strongly'45'finite_808 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_808 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_346 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_810 :: T_Theory_118 -> () -> ()
d_FinSet_810 = erased
-- Axiom.Set._.Set
d_Set_812 :: T_Theory_118 -> () -> ()
d_Set_812 = erased
-- Axiom.Set._.Show-finite
d_Show'45'finite_814 ::
  T_Theory_118 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_814 ~v0 = du_Show'45'finite_814
du_Show'45'finite_814 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_814 v0 v1 = coe du_Show'45'finite_320 v1
-- Axiom.Set._.binary-unions
d_binary'45'unions_816 ::
  T_Theory_118 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_816 v0 v1 v2 v3
  = coe du_binary'45'unions_672 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_818 ::
  T_Theory_118 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_818 ~v0 = du_card_818
du_card_818 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_818 v0 v1 = coe du_card_364 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_820 ::
  T_Theory_118 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_820 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_822 ::
  T_Theory_118 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_822 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_536 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_824 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_824 = erased
-- Axiom.Set._.filter
d_filter_826 ::
  T_Theory_118 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_826 v0 v1 v2 = coe du_filter_448 (coe v0)
-- Axiom.Set._.finite
d_finite_828 :: T_Theory_118 -> () -> AgdaAny -> ()
d_finite_828 = erased
-- Axiom.Set._.fromList
d_fromList_830 :: T_Theory_118 -> () -> [AgdaAny] -> AgdaAny
d_fromList_830 v0 v1 v2 = coe du_fromList_456 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_832 :: T_Theory_118 -> () -> AgdaAny -> ()
d_isMaximal_832 = erased
-- Axiom.Set._.listing
d_listing_834 ::
  T_Theory_118 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_834 v0 = coe d_listing_244 (coe v0)
-- Axiom.Set._.map
d_map_836 ::
  T_Theory_118 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_836 v0 v1 v2 = coe du_map_426 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_838 ::
  T_Theory_118 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_838 v0 v1 v2 v3 = coe du_mapPartial_604 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_840 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_840 ~v0 = du_maximal'45'unique_840
du_maximal'45'unique_840 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_840 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_388 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_842 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_842 ~v0 = du_maximal'45''8838'_842
du_maximal'45''8838'_842 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_842 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_384 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_844 ::
  T_Theory_118 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_844 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_500 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_846 ::
  T_Theory_118 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_846 v0 = coe d_replacement_236 (coe v0)
-- Axiom.Set._.singleton
d_singleton_848 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny
d_singleton_848 v0 v1 v2 = coe du_singleton_476 (coe v0) v2
-- Axiom.Set._.sp
d_sp_850 :: T_Theory_118 -> T_SpecProperty_48
d_sp_850 v0 = coe d_sp_188 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_852 ::
  T_Theory_118 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_852 v0 = coe d_sp'45''172'_76 (coe d_sp_188 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_854 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_854 v0
  = coe d_sp'45''8728'_74 (coe d_sp_188 (coe v0))
-- Axiom.Set._.sp-∩
d_sp'45''8745'_856 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_sp'45''8745'_856 v0
  = coe d_sp'45''8745'_82 (coe d_sp_188 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_858 :: T_Theory_118 -> () -> ()
d_spec'45''8712'_858 = erased
-- Axiom.Set._.specProperty
d_specProperty_860 :: T_Theory_118 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_860 = erased
-- Axiom.Set._.specification
d_specification_862 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_862 v0 = coe d_specification_214 (coe v0)
-- Axiom.Set._.strictify
d_strictify_864 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_864 v0 v1 v2 v3 v4
  = coe du_strictify_406 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_866 :: T_Theory_118 -> () -> AgdaAny -> ()
d_strongly'45'finite_866 = erased
-- Axiom.Set._.unions
d_unions_868 ::
  T_Theory_118 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_868 v0 = coe d_unions_224 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_870 :: T_Theory_118 -> () -> AgdaAny -> ()
d_weakly'45'finite_870 = erased
-- Axiom.Set._.∅
d_'8709'_872 :: T_Theory_118 -> () -> AgdaAny
d_'8709'_872 v0 v1 = coe du_'8709'_470 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_874 ::
  T_Theory_118 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_874 v0 v1
  = coe du_'8709''45'strongly'45'finite_472 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_876 ::
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'concatMap'738'_876 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_548 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_878 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'filter_878 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_454 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_880 ::
  T_Theory_118 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'fromList_880 v0 v1 v2 v3
  = coe du_'8712''45'fromList_460 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_882 :: T_Theory_118 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_882 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_884 ::
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'map_884 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_434 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_886 ::
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'mapPartial_886 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_614 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_888 ::
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_888 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_440 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_890 ::
  T_Theory_118 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'partialToSet_890 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_512 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_892 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'singleton_892 v0 v1 v2 v3
  = coe du_'8712''45'singleton_486 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_894 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'unions_894 v0 v1 v2 v3
  = coe du_'8712''45'unions_468 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_896 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8746'_896 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_716 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_898 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_898 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_898 v5
du_'8801''8594''8712'_898 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_898 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_900 ::
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_900 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_632 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_902 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_902 ~v0
  = du_'8838''45'weakly'45'finite_902
du_'8838''45'weakly'45'finite_902 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_902 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_368 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_904 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_904 v0 = coe du_'10100'_'10101'_480 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__908 ::
  T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__908 v0 v1 v2 v3 v4
  = coe du__'8745'__732 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection._＼_
d__'65340'__910 ::
  T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__910 v0 v1 v2 v3 v4
  = coe du__'65340'__758 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_912 ::
  T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_912 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_914 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8745'_914 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_740 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryᶠ.theory
d_theory_920 :: T_Theory'7584'_782 -> T_Theory_118
d_theory_920 v0
  = case coe v0 of
      C_constructor_1080 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᶠ._._Preservesˢ_
d__Preserves'738'__924 ::
  T_Theory'7584'_782 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__924 = erased
-- Axiom.Set.Theoryᶠ._._Preservesˢ₂_
d__Preserves'738''8322'__926 ::
  T_Theory'7584'_782 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__926 = erased
-- Axiom.Set.Theoryᶠ._._∈_
d__'8712'__928 ::
  T_Theory'7584'_782 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__928 = erased
-- Axiom.Set.Theoryᶠ._._∉_
d__'8713'__930 ::
  T_Theory'7584'_782 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__930 = erased
-- Axiom.Set.Theoryᶠ._._∪_
d__'8746'__932 ::
  T_Theory'7584'_782 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__932 v0 v1 v2 v3
  = coe du__'8746'__708 (coe d_theory_920 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._._≡ᵉ_
d__'8801''7497'__934 ::
  T_Theory'7584'_782 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__934 = erased
-- Axiom.Set.Theoryᶠ._._≡ᵉ'_
d__'8801''7497'''__936 ::
  T_Theory'7584'_782 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__936 = erased
-- Axiom.Set.Theoryᶠ._._⊆_
d__'8838'__938 ::
  T_Theory'7584'_782 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__938 = erased
-- Axiom.Set.Theoryᶠ._.All
d_All_940 ::
  T_Theory'7584'_782 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_940 = erased
-- Axiom.Set.Theoryᶠ._.Any
d_Any_942 ::
  T_Theory'7584'_782 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_942 = erased
-- Axiom.Set.Theoryᶠ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_944 ::
  T_Theory'7584'_782 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_944 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_944
du_DecEq'8743'finite'8658'strongly'45'finite_944 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_944 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_346 v1 v3
-- Axiom.Set.Theoryᶠ._.FinSet
d_FinSet_946 :: T_Theory'7584'_782 -> () -> ()
d_FinSet_946 = erased
-- Axiom.Set.Theoryᶠ._.Set
d_Set_948 :: T_Theory'7584'_782 -> () -> ()
d_Set_948 = erased
-- Axiom.Set.Theoryᶠ._.Show-finite
d_Show'45'finite_950 ::
  T_Theory'7584'_782 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_950 ~v0 = du_Show'45'finite_950
du_Show'45'finite_950 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_950 v0 v1 = coe du_Show'45'finite_320 v1
-- Axiom.Set.Theoryᶠ._.binary-unions
d_binary'45'unions_952 ::
  T_Theory'7584'_782 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_952 v0 v1 v2 v3
  = coe du_binary'45'unions_672 (coe d_theory_920 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.card
d_card_954 ::
  T_Theory'7584'_782 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_954 ~v0 = du_card_954
du_card_954 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_954 v0 v1 = coe du_card_364 v1
-- Axiom.Set.Theoryᶠ._.card-∅
d_card'45''8709'_956 ::
  T_Theory'7584'_782 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_956 = erased
-- Axiom.Set.Theoryᶠ._.concatMapˢ
d_concatMap'738'_958 ::
  T_Theory'7584'_782 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_958 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_536 (coe d_theory_920 (coe v0)) v3 v4
-- Axiom.Set.Theoryᶠ._.disjoint
d_disjoint_960 ::
  T_Theory'7584'_782 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_960 = erased
-- Axiom.Set.Theoryᶠ._.filter
d_filter_962 ::
  T_Theory'7584'_782 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_962 v0 v1 v2
  = coe du_filter_448 (coe d_theory_920 (coe v0))
-- Axiom.Set.Theoryᶠ._.finite
d_finite_964 :: T_Theory'7584'_782 -> () -> AgdaAny -> ()
d_finite_964 = erased
-- Axiom.Set.Theoryᶠ._.fromList
d_fromList_966 :: T_Theory'7584'_782 -> () -> [AgdaAny] -> AgdaAny
d_fromList_966 v0 v1 v2
  = coe du_fromList_456 (coe d_theory_920 (coe v0)) v2
-- Axiom.Set.Theoryᶠ._.isMaximal
d_isMaximal_968 :: T_Theory'7584'_782 -> () -> AgdaAny -> ()
d_isMaximal_968 = erased
-- Axiom.Set.Theoryᶠ._.listing
d_listing_970 ::
  T_Theory'7584'_782 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_970 v0 = coe d_listing_244 (coe d_theory_920 (coe v0))
-- Axiom.Set.Theoryᶠ._.map
d_map_972 ::
  T_Theory'7584'_782 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_972 v0 v1 v2 = coe du_map_426 (coe d_theory_920 (coe v0))
-- Axiom.Set.Theoryᶠ._.mapPartial
d_mapPartial_974 ::
  T_Theory'7584'_782 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_974 v0 v1 v2 v3
  = coe du_mapPartial_604 (coe d_theory_920 (coe v0)) v3
-- Axiom.Set.Theoryᶠ._.maximal-unique
d_maximal'45'unique_976 ::
  T_Theory'7584'_782 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_976 ~v0 = du_maximal'45'unique_976
du_maximal'45'unique_976 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_976 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_388 v3 v4
-- Axiom.Set.Theoryᶠ._.maximal-⊆
d_maximal'45''8838'_978 ::
  T_Theory'7584'_782 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_978 ~v0 = du_maximal'45''8838'_978
du_maximal'45''8838'_978 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_978 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_384 v3 v4
-- Axiom.Set.Theoryᶠ._.partialToSet
d_partialToSet_980 ::
  T_Theory'7584'_782 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_980 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_500 (coe d_theory_920 (coe v0)) v4 v5
-- Axiom.Set.Theoryᶠ._.replacement
d_replacement_982 ::
  T_Theory'7584'_782 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_982 v0
  = coe d_replacement_236 (coe d_theory_920 (coe v0))
-- Axiom.Set.Theoryᶠ._.singleton
d_singleton_984 :: T_Theory'7584'_782 -> () -> AgdaAny -> AgdaAny
d_singleton_984 v0 v1 v2
  = coe du_singleton_476 (coe d_theory_920 (coe v0)) v2
-- Axiom.Set.Theoryᶠ._.sp
d_sp_986 :: T_Theory'7584'_782 -> T_SpecProperty_48
d_sp_986 v0 = coe d_sp_188 (coe d_theory_920 (coe v0))
-- Axiom.Set.Theoryᶠ._.sp-¬
d_sp'45''172'_988 ::
  T_Theory'7584'_782 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_988 v0
  = coe d_sp'45''172'_76 (coe d_sp_188 (coe d_theory_920 (coe v0)))
-- Axiom.Set.Theoryᶠ._.sp-∘
d_sp'45''8728'_990 ::
  T_Theory'7584'_782 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_990 v0
  = coe d_sp'45''8728'_74 (coe d_sp_188 (coe d_theory_920 (coe v0)))
-- Axiom.Set.Theoryᶠ._.sp-∩
d_sp'45''8745'_992 ::
  T_Theory'7584'_782 ->
  () ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_sp'45''8745'_992 v0
  = coe d_sp'45''8745'_82 (coe d_sp_188 (coe d_theory_920 (coe v0)))
-- Axiom.Set.Theoryᶠ._.spec-∈
d_spec'45''8712'_994 :: T_Theory'7584'_782 -> () -> ()
d_spec'45''8712'_994 = erased
-- Axiom.Set.Theoryᶠ._.specProperty
d_specProperty_996 ::
  T_Theory'7584'_782 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_996 = erased
-- Axiom.Set.Theoryᶠ._.specification
d_specification_998 ::
  T_Theory'7584'_782 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_998 v0
  = coe d_specification_214 (coe d_theory_920 (coe v0))
-- Axiom.Set.Theoryᶠ._.strictify
d_strictify_1000 ::
  T_Theory'7584'_782 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1000 v0 v1 v2 v3 v4
  = coe du_strictify_406 (coe d_theory_920 (coe v0)) v3 v4
-- Axiom.Set.Theoryᶠ._.strongly-finite
d_strongly'45'finite_1002 ::
  T_Theory'7584'_782 -> () -> AgdaAny -> ()
d_strongly'45'finite_1002 = erased
-- Axiom.Set.Theoryᶠ._.unions
d_unions_1004 ::
  T_Theory'7584'_782 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1004 v0 = coe d_unions_224 (coe d_theory_920 (coe v0))
-- Axiom.Set.Theoryᶠ._.weakly-finite
d_weakly'45'finite_1006 ::
  T_Theory'7584'_782 -> () -> AgdaAny -> ()
d_weakly'45'finite_1006 = erased
-- Axiom.Set.Theoryᶠ._.∅
d_'8709'_1008 :: T_Theory'7584'_782 -> () -> AgdaAny
d_'8709'_1008 v0 v1 = coe du_'8709'_470 (coe d_theory_920 (coe v0))
-- Axiom.Set.Theoryᶠ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1010 ::
  T_Theory'7584'_782 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1010 v0 v1
  = coe
      du_'8709''45'strongly'45'finite_472 (coe d_theory_920 (coe v0))
-- Axiom.Set.Theoryᶠ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1012 ::
  T_Theory'7584'_782 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'concatMap'738'_1012 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_548 (coe d_theory_920 (coe v0)) v3 v4
      v5
-- Axiom.Set.Theoryᶠ._.∈-filter
d_'8712''45'filter_1014 ::
  T_Theory'7584'_782 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'filter_1014 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_454 (coe d_theory_920 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-fromList
d_'8712''45'fromList_1016 ::
  T_Theory'7584'_782 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'fromList_1016 v0 v1 v2 v3
  = coe du_'8712''45'fromList_460 (coe d_theory_920 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-irrelevant
d_'8712''45'irrelevant_1018 ::
  T_Theory'7584'_782 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1018 = erased
-- Axiom.Set.Theoryᶠ._.∈-map
d_'8712''45'map_1020 ::
  T_Theory'7584'_782 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'map_1020 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_434 (coe d_theory_920 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-mapPartial
d_'8712''45'mapPartial_1022 ::
  T_Theory'7584'_782 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'mapPartial_1022 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'mapPartial_614 (coe d_theory_920 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-map′
d_'8712''45'map'8242'_1024 ::
  T_Theory'7584'_782 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1024 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_440 (coe d_theory_920 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᶠ._.∈-partialToSet
d_'8712''45'partialToSet_1026 ::
  T_Theory'7584'_782 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'partialToSet_1026 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_512 (coe d_theory_920 (coe v0)) v5
-- Axiom.Set.Theoryᶠ._.∈-singleton
d_'8712''45'singleton_1028 ::
  T_Theory'7584'_782 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'singleton_1028 v0 v1 v2 v3
  = coe du_'8712''45'singleton_486 (coe d_theory_920 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-unions
d_'8712''45'unions_1030 ::
  T_Theory'7584'_782 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'unions_1030 v0 v1 v2 v3
  = coe du_'8712''45'unions_468 (coe d_theory_920 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-∪
d_'8712''45''8746'_1032 ::
  T_Theory'7584'_782 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8746'_1032 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_716 (coe d_theory_920 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᶠ._.≡→∈
d_'8801''8594''8712'_1034 ::
  T_Theory'7584'_782 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1034 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1034 v5
du_'8801''8594''8712'_1034 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1034 v0 = coe v0
-- Axiom.Set.Theoryᶠ._.⊆-mapPartial
d_'8838''45'mapPartial_1036 ::
  T_Theory'7584'_782 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1036 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_632 (coe d_theory_920 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᶠ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1038 ::
  T_Theory'7584'_782 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1038 ~v0
  = du_'8838''45'weakly'45'finite_1038
du_'8838''45'weakly'45'finite_1038 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1038 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_368 v3 v4
-- Axiom.Set.Theoryᶠ._.❴_❵
d_'10100'_'10101'_1040 ::
  T_Theory'7584'_782 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1040 v0
  = coe du_'10100'_'10101'_480 (coe d_theory_920 (coe v0))
-- Axiom.Set.Theoryᶠ._.Intersection._∩_
d__'8745'__1044 ::
  T_Theory'7584'_782 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1044 v0 v1 v2 v3 v4
  = coe du__'8745'__732 (coe d_theory_920 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᶠ._.Intersection._＼_
d__'65340'__1046 ::
  T_Theory'7584'_782 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1046 v0 v1 v2 v3 v4
  = coe du__'65340'__758 (coe d_theory_920 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᶠ._.Intersection.disjoint'
d_disjoint''_1048 ::
  T_Theory'7584'_782 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1048 = erased
-- Axiom.Set.Theoryᶠ._.Intersection.∈-∩
d_'8712''45''8745'_1050 ::
  T_Theory'7584'_782 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8745'_1050 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45''8745'_740 (coe d_theory_920 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryᶠ.finiteness
d_finiteness_1054 ::
  T_Theory'7584'_782 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_finiteness_1054 v0
  = case coe v0 of
      C_constructor_1080 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᶠ.DecEq⇒strongly-finite
d_DecEq'8658'strongly'45'finite_1058 ::
  T_Theory'7584'_782 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8658'strongly'45'finite_1058 v0 ~v1 v2 v3
  = du_DecEq'8658'strongly'45'finite_1058 v0 v2 v3
du_DecEq'8658'strongly'45'finite_1058 ::
  T_Theory'7584'_782 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8658'strongly'45'finite_1058 v0 v1 v2
  = coe
      du_DecEq'8743'finite'8658'strongly'45'finite_346 (coe v1)
      (coe d_finiteness_1054 v0 erased v2)
-- Axiom.Set.Theoryᶠ.toList
d_toList_1062 ::
  T_Theory'7584'_782 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> [AgdaAny]
d_toList_1062 v0 ~v1 v2 v3 = du_toList_1062 v0 v2 v3
du_toList_1062 ::
  T_Theory'7584'_782 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> [AgdaAny]
du_toList_1062 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         du_DecEq'8658'strongly'45'finite_1058 (coe v0) (coe v1) (coe v2))
-- Axiom.Set.Theoryᶠ.lengthˢ
d_length'738'_1064 ::
  T_Theory'7584'_782 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> Integer
d_length'738'_1064 v0 ~v1 v2 v3 = du_length'738'_1064 v0 v2 v3
du_length'738'_1064 ::
  T_Theory'7584'_782 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> Integer
du_length'738'_1064 v0 v1 v2
  = coe
      du_card_364
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
         (coe
            du_DecEq'8658'strongly'45'finite_1058 (coe v0) (coe v1) (coe v2)))
-- Axiom.Set.Theoryᶠ._.Show-Set
d_Show'45'Set_1076 ::
  T_Theory'7584'_782 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Set_1076 v0 ~v1 v2 = du_Show'45'Set_1076 v0 v2
du_Show'45'Set_1076 ::
  T_Theory'7584'_782 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Set_1076 v0 v1
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
                       (coe d_finiteness_1054 v0 erased v2))))))
-- Axiom.Set.Theoryⁱ
d_Theory'8305'_1082 = ()
data T_Theory'8305'_1082
  = C_constructor_1360 T_Theory_118
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Axiom.Set._._Preservesˢ_
d__Preserves'738'__1088 ::
  T_Theory_118 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1088 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__1090 ::
  T_Theory_118 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1090 = erased
-- Axiom.Set._._∈_
d__'8712'__1092 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1092 = erased
-- Axiom.Set._._∉_
d__'8713'__1094 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1094 = erased
-- Axiom.Set._._∪_
d__'8746'__1096 ::
  T_Theory_118 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1096 v0 v1 v2 v3 = coe du__'8746'__708 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__1098 ::
  T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1098 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__1100 ::
  T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1100 = erased
-- Axiom.Set._._⊆_
d__'8838'__1102 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1102 = erased
-- Axiom.Set._.All
d_All_1104 ::
  T_Theory_118 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1104 = erased
-- Axiom.Set._.Any
d_Any_1106 ::
  T_Theory_118 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1106 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1108 ::
  T_Theory_118 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1108 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1108
du_DecEq'8743'finite'8658'strongly'45'finite_1108 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1108 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_346 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_1110 :: T_Theory_118 -> () -> ()
d_FinSet_1110 = erased
-- Axiom.Set._.Set
d_Set_1112 :: T_Theory_118 -> () -> ()
d_Set_1112 = erased
-- Axiom.Set._.Show-finite
d_Show'45'finite_1114 ::
  T_Theory_118 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_1114 ~v0 = du_Show'45'finite_1114
du_Show'45'finite_1114 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_1114 v0 v1 = coe du_Show'45'finite_320 v1
-- Axiom.Set._.binary-unions
d_binary'45'unions_1116 ::
  T_Theory_118 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1116 v0 v1 v2 v3
  = coe du_binary'45'unions_672 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_1118 ::
  T_Theory_118 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1118 ~v0 = du_card_1118
du_card_1118 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1118 v0 v1 = coe du_card_364 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_1120 ::
  T_Theory_118 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1120 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_1122 ::
  T_Theory_118 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1122 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_536 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_1124 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1124 = erased
-- Axiom.Set._.filter
d_filter_1126 ::
  T_Theory_118 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1126 v0 v1 v2 = coe du_filter_448 (coe v0)
-- Axiom.Set._.finite
d_finite_1128 :: T_Theory_118 -> () -> AgdaAny -> ()
d_finite_1128 = erased
-- Axiom.Set._.fromList
d_fromList_1130 :: T_Theory_118 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1130 v0 v1 v2 = coe du_fromList_456 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_1132 :: T_Theory_118 -> () -> AgdaAny -> ()
d_isMaximal_1132 = erased
-- Axiom.Set._.listing
d_listing_1134 ::
  T_Theory_118 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1134 v0 = coe d_listing_244 (coe v0)
-- Axiom.Set._.map
d_map_1136 ::
  T_Theory_118 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1136 v0 v1 v2 = coe du_map_426 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_1138 ::
  T_Theory_118 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1138 v0 v1 v2 v3 = coe du_mapPartial_604 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_1140 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1140 ~v0 = du_maximal'45'unique_1140
du_maximal'45'unique_1140 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1140 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_388 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_1142 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1142 ~v0 = du_maximal'45''8838'_1142
du_maximal'45''8838'_1142 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1142 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_384 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_1144 ::
  T_Theory_118 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1144 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_500 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_1146 ::
  T_Theory_118 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1146 v0 = coe d_replacement_236 (coe v0)
-- Axiom.Set._.singleton
d_singleton_1148 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny
d_singleton_1148 v0 v1 v2 = coe du_singleton_476 (coe v0) v2
-- Axiom.Set._.sp
d_sp_1150 :: T_Theory_118 -> T_SpecProperty_48
d_sp_1150 v0 = coe d_sp_188 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_1152 ::
  T_Theory_118 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1152 v0
  = coe d_sp'45''172'_76 (coe d_sp_188 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_1154 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1154 v0
  = coe d_sp'45''8728'_74 (coe d_sp_188 (coe v0))
-- Axiom.Set._.sp-∩
d_sp'45''8745'_1156 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_sp'45''8745'_1156 v0
  = coe d_sp'45''8745'_82 (coe d_sp_188 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_1158 :: T_Theory_118 -> () -> ()
d_spec'45''8712'_1158 = erased
-- Axiom.Set._.specProperty
d_specProperty_1160 :: T_Theory_118 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1160 = erased
-- Axiom.Set._.specification
d_specification_1162 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1162 v0 = coe d_specification_214 (coe v0)
-- Axiom.Set._.strictify
d_strictify_1164 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1164 v0 v1 v2 v3 v4
  = coe du_strictify_406 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_1166 :: T_Theory_118 -> () -> AgdaAny -> ()
d_strongly'45'finite_1166 = erased
-- Axiom.Set._.unions
d_unions_1168 ::
  T_Theory_118 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1168 v0 = coe d_unions_224 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_1170 :: T_Theory_118 -> () -> AgdaAny -> ()
d_weakly'45'finite_1170 = erased
-- Axiom.Set._.∅
d_'8709'_1172 :: T_Theory_118 -> () -> AgdaAny
d_'8709'_1172 v0 v1 = coe du_'8709'_470 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1174 ::
  T_Theory_118 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1174 v0 v1
  = coe du_'8709''45'strongly'45'finite_472 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1176 ::
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'concatMap'738'_1176 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_548 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_1178 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'filter_1178 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_454 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_1180 ::
  T_Theory_118 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'fromList_1180 v0 v1 v2 v3
  = coe du_'8712''45'fromList_460 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_1182 :: T_Theory_118 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1182 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_1184 ::
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'map_1184 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_434 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_1186 ::
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'mapPartial_1186 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_614 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_1188 ::
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1188 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_440 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_1190 ::
  T_Theory_118 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'partialToSet_1190 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_512 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_1192 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'singleton_1192 v0 v1 v2 v3
  = coe du_'8712''45'singleton_486 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_1194 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'unions_1194 v0 v1 v2 v3
  = coe du_'8712''45'unions_468 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_1196 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8746'_1196 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_716 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_1198 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1198 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1198 v5
du_'8801''8594''8712'_1198 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1198 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_1200 ::
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1200 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_632 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1202 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1202 ~v0
  = du_'8838''45'weakly'45'finite_1202
du_'8838''45'weakly'45'finite_1202 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1202 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_368 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_1204 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1204 v0 = coe du_'10100'_'10101'_480 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__1208 ::
  T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1208 v0 v1 v2 v3 v4
  = coe du__'8745'__732 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection._＼_
d__'65340'__1210 ::
  T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1210 v0 v1 v2 v3 v4
  = coe du__'65340'__758 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_1212 ::
  T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1212 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_1214 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8745'_1214 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_740 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryⁱ.theory
d_theory_1222 :: T_Theory'8305'_1082 -> T_Theory_118
d_theory_1222 v0
  = case coe v0 of
      C_constructor_1360 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryⁱ._._Preservesˢ_
d__Preserves'738'__1226 ::
  T_Theory'8305'_1082 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1226 = erased
-- Axiom.Set.Theoryⁱ._._Preservesˢ₂_
d__Preserves'738''8322'__1228 ::
  T_Theory'8305'_1082 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1228 = erased
-- Axiom.Set.Theoryⁱ._._∈_
d__'8712'__1230 ::
  T_Theory'8305'_1082 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1230 = erased
-- Axiom.Set.Theoryⁱ._._∉_
d__'8713'__1232 ::
  T_Theory'8305'_1082 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1232 = erased
-- Axiom.Set.Theoryⁱ._._∪_
d__'8746'__1234 ::
  T_Theory'8305'_1082 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1234 v0 v1 v2 v3
  = coe du__'8746'__708 (coe d_theory_1222 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._._≡ᵉ_
d__'8801''7497'__1236 ::
  T_Theory'8305'_1082 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1236 = erased
-- Axiom.Set.Theoryⁱ._._≡ᵉ'_
d__'8801''7497'''__1238 ::
  T_Theory'8305'_1082 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1238 = erased
-- Axiom.Set.Theoryⁱ._._⊆_
d__'8838'__1240 ::
  T_Theory'8305'_1082 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1240 = erased
-- Axiom.Set.Theoryⁱ._.All
d_All_1242 ::
  T_Theory'8305'_1082 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1242 = erased
-- Axiom.Set.Theoryⁱ._.Any
d_Any_1244 ::
  T_Theory'8305'_1082 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1244 = erased
-- Axiom.Set.Theoryⁱ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1246 ::
  T_Theory'8305'_1082 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1246 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1246
du_DecEq'8743'finite'8658'strongly'45'finite_1246 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1246 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_346 v1 v3
-- Axiom.Set.Theoryⁱ._.FinSet
d_FinSet_1248 :: T_Theory'8305'_1082 -> () -> ()
d_FinSet_1248 = erased
-- Axiom.Set.Theoryⁱ._.Set
d_Set_1250 :: T_Theory'8305'_1082 -> () -> ()
d_Set_1250 = erased
-- Axiom.Set.Theoryⁱ._.Show-finite
d_Show'45'finite_1252 ::
  T_Theory'8305'_1082 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_1252 ~v0 = du_Show'45'finite_1252
du_Show'45'finite_1252 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_1252 v0 v1 = coe du_Show'45'finite_320 v1
-- Axiom.Set.Theoryⁱ._.binary-unions
d_binary'45'unions_1254 ::
  T_Theory'8305'_1082 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1254 v0 v1 v2 v3
  = coe du_binary'45'unions_672 (coe d_theory_1222 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.card
d_card_1256 ::
  T_Theory'8305'_1082 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1256 ~v0 = du_card_1256
du_card_1256 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1256 v0 v1 = coe du_card_364 v1
-- Axiom.Set.Theoryⁱ._.card-∅
d_card'45''8709'_1258 ::
  T_Theory'8305'_1082 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1258 = erased
-- Axiom.Set.Theoryⁱ._.concatMapˢ
d_concatMap'738'_1260 ::
  T_Theory'8305'_1082 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1260 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_536 (coe d_theory_1222 (coe v0)) v3 v4
-- Axiom.Set.Theoryⁱ._.disjoint
d_disjoint_1262 ::
  T_Theory'8305'_1082 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1262 = erased
-- Axiom.Set.Theoryⁱ._.filter
d_filter_1264 ::
  T_Theory'8305'_1082 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1264 v0 v1 v2
  = coe du_filter_448 (coe d_theory_1222 (coe v0))
-- Axiom.Set.Theoryⁱ._.finite
d_finite_1266 :: T_Theory'8305'_1082 -> () -> AgdaAny -> ()
d_finite_1266 = erased
-- Axiom.Set.Theoryⁱ._.fromList
d_fromList_1268 ::
  T_Theory'8305'_1082 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1268 v0 v1 v2
  = coe du_fromList_456 (coe d_theory_1222 (coe v0)) v2
-- Axiom.Set.Theoryⁱ._.isMaximal
d_isMaximal_1270 :: T_Theory'8305'_1082 -> () -> AgdaAny -> ()
d_isMaximal_1270 = erased
-- Axiom.Set.Theoryⁱ._.listing
d_listing_1272 ::
  T_Theory'8305'_1082 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1272 v0 = coe d_listing_244 (coe d_theory_1222 (coe v0))
-- Axiom.Set.Theoryⁱ._.map
d_map_1274 ::
  T_Theory'8305'_1082 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1274 v0 v1 v2 = coe du_map_426 (coe d_theory_1222 (coe v0))
-- Axiom.Set.Theoryⁱ._.mapPartial
d_mapPartial_1276 ::
  T_Theory'8305'_1082 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1276 v0 v1 v2 v3
  = coe du_mapPartial_604 (coe d_theory_1222 (coe v0)) v3
-- Axiom.Set.Theoryⁱ._.maximal-unique
d_maximal'45'unique_1278 ::
  T_Theory'8305'_1082 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1278 ~v0 = du_maximal'45'unique_1278
du_maximal'45'unique_1278 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1278 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_388 v3 v4
-- Axiom.Set.Theoryⁱ._.maximal-⊆
d_maximal'45''8838'_1280 ::
  T_Theory'8305'_1082 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1280 ~v0 = du_maximal'45''8838'_1280
du_maximal'45''8838'_1280 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1280 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_384 v3 v4
-- Axiom.Set.Theoryⁱ._.partialToSet
d_partialToSet_1282 ::
  T_Theory'8305'_1082 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1282 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_500 (coe d_theory_1222 (coe v0)) v4 v5
-- Axiom.Set.Theoryⁱ._.replacement
d_replacement_1284 ::
  T_Theory'8305'_1082 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1284 v0
  = coe d_replacement_236 (coe d_theory_1222 (coe v0))
-- Axiom.Set.Theoryⁱ._.singleton
d_singleton_1286 :: T_Theory'8305'_1082 -> () -> AgdaAny -> AgdaAny
d_singleton_1286 v0 v1 v2
  = coe du_singleton_476 (coe d_theory_1222 (coe v0)) v2
-- Axiom.Set.Theoryⁱ._.sp
d_sp_1288 :: T_Theory'8305'_1082 -> T_SpecProperty_48
d_sp_1288 v0 = coe d_sp_188 (coe d_theory_1222 (coe v0))
-- Axiom.Set.Theoryⁱ._.sp-¬
d_sp'45''172'_1290 ::
  T_Theory'8305'_1082 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1290 v0
  = coe d_sp'45''172'_76 (coe d_sp_188 (coe d_theory_1222 (coe v0)))
-- Axiom.Set.Theoryⁱ._.sp-∘
d_sp'45''8728'_1292 ::
  T_Theory'8305'_1082 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1292 v0
  = coe d_sp'45''8728'_74 (coe d_sp_188 (coe d_theory_1222 (coe v0)))
-- Axiom.Set.Theoryⁱ._.sp-∩
d_sp'45''8745'_1294 ::
  T_Theory'8305'_1082 ->
  () ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_sp'45''8745'_1294 v0
  = coe d_sp'45''8745'_82 (coe d_sp_188 (coe d_theory_1222 (coe v0)))
-- Axiom.Set.Theoryⁱ._.spec-∈
d_spec'45''8712'_1296 :: T_Theory'8305'_1082 -> () -> ()
d_spec'45''8712'_1296 = erased
-- Axiom.Set.Theoryⁱ._.specProperty
d_specProperty_1298 ::
  T_Theory'8305'_1082 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1298 = erased
-- Axiom.Set.Theoryⁱ._.specification
d_specification_1300 ::
  T_Theory'8305'_1082 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1300 v0
  = coe d_specification_214 (coe d_theory_1222 (coe v0))
-- Axiom.Set.Theoryⁱ._.strictify
d_strictify_1302 ::
  T_Theory'8305'_1082 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1302 v0 v1 v2 v3 v4
  = coe du_strictify_406 (coe d_theory_1222 (coe v0)) v3 v4
-- Axiom.Set.Theoryⁱ._.strongly-finite
d_strongly'45'finite_1304 ::
  T_Theory'8305'_1082 -> () -> AgdaAny -> ()
d_strongly'45'finite_1304 = erased
-- Axiom.Set.Theoryⁱ._.unions
d_unions_1306 ::
  T_Theory'8305'_1082 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1306 v0 = coe d_unions_224 (coe d_theory_1222 (coe v0))
-- Axiom.Set.Theoryⁱ._.weakly-finite
d_weakly'45'finite_1308 ::
  T_Theory'8305'_1082 -> () -> AgdaAny -> ()
d_weakly'45'finite_1308 = erased
-- Axiom.Set.Theoryⁱ._.∅
d_'8709'_1310 :: T_Theory'8305'_1082 -> () -> AgdaAny
d_'8709'_1310 v0 v1
  = coe du_'8709'_470 (coe d_theory_1222 (coe v0))
-- Axiom.Set.Theoryⁱ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1312 ::
  T_Theory'8305'_1082 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1312 v0 v1
  = coe
      du_'8709''45'strongly'45'finite_472 (coe d_theory_1222 (coe v0))
-- Axiom.Set.Theoryⁱ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1314 ::
  T_Theory'8305'_1082 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'concatMap'738'_1314 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_548 (coe d_theory_1222 (coe v0)) v3 v4
      v5
-- Axiom.Set.Theoryⁱ._.∈-filter
d_'8712''45'filter_1316 ::
  T_Theory'8305'_1082 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'filter_1316 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_454 (coe d_theory_1222 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-fromList
d_'8712''45'fromList_1318 ::
  T_Theory'8305'_1082 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'fromList_1318 v0 v1 v2 v3
  = coe du_'8712''45'fromList_460 (coe d_theory_1222 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-irrelevant
d_'8712''45'irrelevant_1320 ::
  T_Theory'8305'_1082 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1320 = erased
-- Axiom.Set.Theoryⁱ._.∈-map
d_'8712''45'map_1322 ::
  T_Theory'8305'_1082 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'map_1322 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_434 (coe d_theory_1222 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-mapPartial
d_'8712''45'mapPartial_1324 ::
  T_Theory'8305'_1082 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'mapPartial_1324 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'mapPartial_614 (coe d_theory_1222 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-map′
d_'8712''45'map'8242'_1326 ::
  T_Theory'8305'_1082 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1326 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_440 (coe d_theory_1222 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryⁱ._.∈-partialToSet
d_'8712''45'partialToSet_1328 ::
  T_Theory'8305'_1082 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'partialToSet_1328 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_512 (coe d_theory_1222 (coe v0)) v5
-- Axiom.Set.Theoryⁱ._.∈-singleton
d_'8712''45'singleton_1330 ::
  T_Theory'8305'_1082 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'singleton_1330 v0 v1 v2 v3
  = coe du_'8712''45'singleton_486 (coe d_theory_1222 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-unions
d_'8712''45'unions_1332 ::
  T_Theory'8305'_1082 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'unions_1332 v0 v1 v2 v3
  = coe du_'8712''45'unions_468 (coe d_theory_1222 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-∪
d_'8712''45''8746'_1334 ::
  T_Theory'8305'_1082 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8746'_1334 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_716 (coe d_theory_1222 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryⁱ._.≡→∈
d_'8801''8594''8712'_1336 ::
  T_Theory'8305'_1082 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1336 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1336 v5
du_'8801''8594''8712'_1336 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1336 v0 = coe v0
-- Axiom.Set.Theoryⁱ._.⊆-mapPartial
d_'8838''45'mapPartial_1338 ::
  T_Theory'8305'_1082 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1338 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_632 (coe d_theory_1222 (coe v0)) v3 v4 v5
      v6
-- Axiom.Set.Theoryⁱ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1340 ::
  T_Theory'8305'_1082 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1340 ~v0
  = du_'8838''45'weakly'45'finite_1340
du_'8838''45'weakly'45'finite_1340 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1340 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_368 v3 v4
-- Axiom.Set.Theoryⁱ._.❴_❵
d_'10100'_'10101'_1342 ::
  T_Theory'8305'_1082 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1342 v0
  = coe du_'10100'_'10101'_480 (coe d_theory_1222 (coe v0))
-- Axiom.Set.Theoryⁱ._.Intersection._∩_
d__'8745'__1346 ::
  T_Theory'8305'_1082 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1346 v0 v1 v2 v3 v4
  = coe du__'8745'__732 (coe d_theory_1222 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryⁱ._.Intersection._＼_
d__'65340'__1348 ::
  T_Theory'8305'_1082 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1348 v0 v1 v2 v3 v4
  = coe du__'65340'__758 (coe d_theory_1222 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryⁱ._.Intersection.disjoint'
d_disjoint''_1350 ::
  T_Theory'8305'_1082 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1350 = erased
-- Axiom.Set.Theoryⁱ._.Intersection.∈-∩
d_'8712''45''8745'_1352 ::
  T_Theory'8305'_1082 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8745'_1352 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45''8745'_740 (coe d_theory_1222 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryⁱ.infinity
d_infinity_1358 ::
  T_Theory'8305'_1082 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infinity_1358 v0
  = case coe v0 of
      C_constructor_1360 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ
d_Theory'7496'_1362 = ()
data T_Theory'7496'_1362
  = C_constructor_1820 T_Theory_118
                       (() ->
                        MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny)
                       (() ->
                        MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
                        AgdaAny ->
                        AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
                       (() ->
                        (AgdaAny -> ()) ->
                        (AgdaAny ->
                         MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
                        AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
                       (() ->
                        (AgdaAny -> ()) ->
                        (AgdaAny ->
                         MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
                        AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
-- Axiom.Set._._Preservesˢ_
d__Preserves'738'__1368 ::
  T_Theory_118 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1368 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__1370 ::
  T_Theory_118 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1370 = erased
-- Axiom.Set._._∈_
d__'8712'__1372 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1372 = erased
-- Axiom.Set._._∉_
d__'8713'__1374 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1374 = erased
-- Axiom.Set._._∪_
d__'8746'__1376 ::
  T_Theory_118 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1376 v0 v1 v2 v3 = coe du__'8746'__708 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__1378 ::
  T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1378 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__1380 ::
  T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1380 = erased
-- Axiom.Set._._⊆_
d__'8838'__1382 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1382 = erased
-- Axiom.Set._.All
d_All_1384 ::
  T_Theory_118 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1384 = erased
-- Axiom.Set._.Any
d_Any_1386 ::
  T_Theory_118 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1386 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1388 ::
  T_Theory_118 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1388 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1388
du_DecEq'8743'finite'8658'strongly'45'finite_1388 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1388 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_346 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_1390 :: T_Theory_118 -> () -> ()
d_FinSet_1390 = erased
-- Axiom.Set._.Set
d_Set_1392 :: T_Theory_118 -> () -> ()
d_Set_1392 = erased
-- Axiom.Set._.Show-finite
d_Show'45'finite_1394 ::
  T_Theory_118 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_1394 ~v0 = du_Show'45'finite_1394
du_Show'45'finite_1394 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_1394 v0 v1 = coe du_Show'45'finite_320 v1
-- Axiom.Set._.binary-unions
d_binary'45'unions_1396 ::
  T_Theory_118 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1396 v0 v1 v2 v3
  = coe du_binary'45'unions_672 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_1398 ::
  T_Theory_118 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1398 ~v0 = du_card_1398
du_card_1398 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1398 v0 v1 = coe du_card_364 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_1400 ::
  T_Theory_118 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1400 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_1402 ::
  T_Theory_118 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1402 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_536 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_1404 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1404 = erased
-- Axiom.Set._.filter
d_filter_1406 ::
  T_Theory_118 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1406 v0 v1 v2 = coe du_filter_448 (coe v0)
-- Axiom.Set._.finite
d_finite_1408 :: T_Theory_118 -> () -> AgdaAny -> ()
d_finite_1408 = erased
-- Axiom.Set._.fromList
d_fromList_1410 :: T_Theory_118 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1410 v0 v1 v2 = coe du_fromList_456 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_1412 :: T_Theory_118 -> () -> AgdaAny -> ()
d_isMaximal_1412 = erased
-- Axiom.Set._.listing
d_listing_1414 ::
  T_Theory_118 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1414 v0 = coe d_listing_244 (coe v0)
-- Axiom.Set._.map
d_map_1416 ::
  T_Theory_118 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1416 v0 v1 v2 = coe du_map_426 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_1418 ::
  T_Theory_118 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1418 v0 v1 v2 v3 = coe du_mapPartial_604 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_1420 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1420 ~v0 = du_maximal'45'unique_1420
du_maximal'45'unique_1420 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1420 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_388 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_1422 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1422 ~v0 = du_maximal'45''8838'_1422
du_maximal'45''8838'_1422 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1422 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_384 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_1424 ::
  T_Theory_118 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1424 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_500 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_1426 ::
  T_Theory_118 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1426 v0 = coe d_replacement_236 (coe v0)
-- Axiom.Set._.singleton
d_singleton_1428 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny
d_singleton_1428 v0 v1 v2 = coe du_singleton_476 (coe v0) v2
-- Axiom.Set._.sp
d_sp_1430 :: T_Theory_118 -> T_SpecProperty_48
d_sp_1430 v0 = coe d_sp_188 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_1432 ::
  T_Theory_118 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1432 v0
  = coe d_sp'45''172'_76 (coe d_sp_188 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_1434 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1434 v0
  = coe d_sp'45''8728'_74 (coe d_sp_188 (coe v0))
-- Axiom.Set._.sp-∩
d_sp'45''8745'_1436 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_sp'45''8745'_1436 v0
  = coe d_sp'45''8745'_82 (coe d_sp_188 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_1438 :: T_Theory_118 -> () -> ()
d_spec'45''8712'_1438 = erased
-- Axiom.Set._.specProperty
d_specProperty_1440 :: T_Theory_118 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1440 = erased
-- Axiom.Set._.specification
d_specification_1442 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1442 v0 = coe d_specification_214 (coe v0)
-- Axiom.Set._.strictify
d_strictify_1444 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1444 v0 v1 v2 v3 v4
  = coe du_strictify_406 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_1446 :: T_Theory_118 -> () -> AgdaAny -> ()
d_strongly'45'finite_1446 = erased
-- Axiom.Set._.unions
d_unions_1448 ::
  T_Theory_118 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1448 v0 = coe d_unions_224 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_1450 :: T_Theory_118 -> () -> AgdaAny -> ()
d_weakly'45'finite_1450 = erased
-- Axiom.Set._.∅
d_'8709'_1452 :: T_Theory_118 -> () -> AgdaAny
d_'8709'_1452 v0 v1 = coe du_'8709'_470 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1454 ::
  T_Theory_118 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1454 v0 v1
  = coe du_'8709''45'strongly'45'finite_472 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1456 ::
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'concatMap'738'_1456 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_548 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_1458 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'filter_1458 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_454 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_1460 ::
  T_Theory_118 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'fromList_1460 v0 v1 v2 v3
  = coe du_'8712''45'fromList_460 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_1462 :: T_Theory_118 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1462 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_1464 ::
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'map_1464 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_434 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_1466 ::
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'mapPartial_1466 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_614 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_1468 ::
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1468 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_440 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_1470 ::
  T_Theory_118 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'partialToSet_1470 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_512 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_1472 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'singleton_1472 v0 v1 v2 v3
  = coe du_'8712''45'singleton_486 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_1474 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'unions_1474 v0 v1 v2 v3
  = coe du_'8712''45'unions_468 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_1476 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8746'_1476 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_716 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_1478 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1478 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1478 v5
du_'8801''8594''8712'_1478 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1478 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_1480 ::
  T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1480 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_632 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1482 ::
  T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1482 ~v0
  = du_'8838''45'weakly'45'finite_1482
du_'8838''45'weakly'45'finite_1482 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1482 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_368 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_1484 :: T_Theory_118 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1484 v0 = coe du_'10100'_'10101'_480 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__1488 ::
  T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1488 v0 v1 v2 v3 v4
  = coe du__'8745'__732 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection._＼_
d__'65340'__1490 ::
  T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1490 v0 v1 v2 v3 v4
  = coe du__'65340'__758 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_1492 ::
  T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1492 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_1494 ::
  T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8745'_1494 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_740 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryᵈ.th
d_th_1516 :: T_Theory'7496'_1362 -> T_Theory_118
d_th_1516 v0
  = case coe v0 of
      C_constructor_1820 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._._Preservesˢ_
d__Preserves'738'__1520 ::
  T_Theory'7496'_1362 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1520 = erased
-- Axiom.Set.Theoryᵈ._._Preservesˢ₂_
d__Preserves'738''8322'__1522 ::
  T_Theory'7496'_1362 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1522 = erased
-- Axiom.Set.Theoryᵈ._._∈_
d__'8712'__1524 ::
  T_Theory'7496'_1362 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1524 = erased
-- Axiom.Set.Theoryᵈ._._∉_
d__'8713'__1526 ::
  T_Theory'7496'_1362 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1526 = erased
-- Axiom.Set.Theoryᵈ._._∪_
d__'8746'__1528 ::
  T_Theory'7496'_1362 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1528 v0 v1 v2 v3
  = coe du__'8746'__708 (coe d_th_1516 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._._≡ᵉ_
d__'8801''7497'__1530 ::
  T_Theory'7496'_1362 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1530 = erased
-- Axiom.Set.Theoryᵈ._._≡ᵉ'_
d__'8801''7497'''__1532 ::
  T_Theory'7496'_1362 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1532 = erased
-- Axiom.Set.Theoryᵈ._._⊆_
d__'8838'__1534 ::
  T_Theory'7496'_1362 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1534 = erased
-- Axiom.Set.Theoryᵈ._.All
d_All_1536 ::
  T_Theory'7496'_1362 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1536 = erased
-- Axiom.Set.Theoryᵈ._.Any
d_Any_1538 ::
  T_Theory'7496'_1362 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1538 = erased
-- Axiom.Set.Theoryᵈ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1540 ::
  T_Theory'7496'_1362 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1540 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1540
du_DecEq'8743'finite'8658'strongly'45'finite_1540 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1540 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_346 v1 v3
-- Axiom.Set.Theoryᵈ._.FinSet
d_FinSet_1542 :: T_Theory'7496'_1362 -> () -> ()
d_FinSet_1542 = erased
-- Axiom.Set.Theoryᵈ._.Set
d_Set_1544 :: T_Theory'7496'_1362 -> () -> ()
d_Set_1544 = erased
-- Axiom.Set.Theoryᵈ._.Show-finite
d_Show'45'finite_1546 ::
  T_Theory'7496'_1362 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_1546 ~v0 = du_Show'45'finite_1546
du_Show'45'finite_1546 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_1546 v0 v1 = coe du_Show'45'finite_320 v1
-- Axiom.Set.Theoryᵈ._.binary-unions
d_binary'45'unions_1548 ::
  T_Theory'7496'_1362 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1548 v0 v1 v2 v3
  = coe du_binary'45'unions_672 (coe d_th_1516 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.card
d_card_1550 ::
  T_Theory'7496'_1362 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1550 ~v0 = du_card_1550
du_card_1550 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1550 v0 v1 = coe du_card_364 v1
-- Axiom.Set.Theoryᵈ._.card-∅
d_card'45''8709'_1552 ::
  T_Theory'7496'_1362 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1552 = erased
-- Axiom.Set.Theoryᵈ._.concatMapˢ
d_concatMap'738'_1554 ::
  T_Theory'7496'_1362 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1554 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_536 (coe d_th_1516 (coe v0)) v3 v4
-- Axiom.Set.Theoryᵈ._.disjoint
d_disjoint_1556 ::
  T_Theory'7496'_1362 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1556 = erased
-- Axiom.Set.Theoryᵈ._.filter
d_filter_1558 ::
  T_Theory'7496'_1362 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1558 v0 v1 v2 = coe du_filter_448 (coe d_th_1516 (coe v0))
-- Axiom.Set.Theoryᵈ._.finite
d_finite_1560 :: T_Theory'7496'_1362 -> () -> AgdaAny -> ()
d_finite_1560 = erased
-- Axiom.Set.Theoryᵈ._.fromList
d_fromList_1562 ::
  T_Theory'7496'_1362 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1562 v0 v1 v2
  = coe du_fromList_456 (coe d_th_1516 (coe v0)) v2
-- Axiom.Set.Theoryᵈ._.isMaximal
d_isMaximal_1564 :: T_Theory'7496'_1362 -> () -> AgdaAny -> ()
d_isMaximal_1564 = erased
-- Axiom.Set.Theoryᵈ._.listing
d_listing_1566 ::
  T_Theory'7496'_1362 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1566 v0 = coe d_listing_244 (coe d_th_1516 (coe v0))
-- Axiom.Set.Theoryᵈ._.map
d_map_1568 ::
  T_Theory'7496'_1362 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1568 v0 v1 v2 = coe du_map_426 (coe d_th_1516 (coe v0))
-- Axiom.Set.Theoryᵈ._.mapPartial
d_mapPartial_1570 ::
  T_Theory'7496'_1362 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1570 v0 v1 v2 v3
  = coe du_mapPartial_604 (coe d_th_1516 (coe v0)) v3
-- Axiom.Set.Theoryᵈ._.maximal-unique
d_maximal'45'unique_1572 ::
  T_Theory'7496'_1362 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1572 ~v0 = du_maximal'45'unique_1572
du_maximal'45'unique_1572 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1572 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_388 v3 v4
-- Axiom.Set.Theoryᵈ._.maximal-⊆
d_maximal'45''8838'_1574 ::
  T_Theory'7496'_1362 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1574 ~v0 = du_maximal'45''8838'_1574
du_maximal'45''8838'_1574 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1574 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_384 v3 v4
-- Axiom.Set.Theoryᵈ._.partialToSet
d_partialToSet_1576 ::
  T_Theory'7496'_1362 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1576 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_500 (coe d_th_1516 (coe v0)) v4 v5
-- Axiom.Set.Theoryᵈ._.replacement
d_replacement_1578 ::
  T_Theory'7496'_1362 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1578 v0
  = coe d_replacement_236 (coe d_th_1516 (coe v0))
-- Axiom.Set.Theoryᵈ._.singleton
d_singleton_1580 :: T_Theory'7496'_1362 -> () -> AgdaAny -> AgdaAny
d_singleton_1580 v0 v1 v2
  = coe du_singleton_476 (coe d_th_1516 (coe v0)) v2
-- Axiom.Set.Theoryᵈ._.sp
d_sp_1582 :: T_Theory'7496'_1362 -> T_SpecProperty_48
d_sp_1582 v0 = coe d_sp_188 (coe d_th_1516 (coe v0))
-- Axiom.Set.Theoryᵈ._.sp-¬
d_sp'45''172'_1584 ::
  T_Theory'7496'_1362 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1584 v0
  = coe d_sp'45''172'_76 (coe d_sp_188 (coe d_th_1516 (coe v0)))
-- Axiom.Set.Theoryᵈ._.sp-∘
d_sp'45''8728'_1586 ::
  T_Theory'7496'_1362 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1586 v0
  = coe d_sp'45''8728'_74 (coe d_sp_188 (coe d_th_1516 (coe v0)))
-- Axiom.Set.Theoryᵈ._.sp-∩
d_sp'45''8745'_1588 ::
  T_Theory'7496'_1362 ->
  () ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_sp'45''8745'_1588 v0
  = coe d_sp'45''8745'_82 (coe d_sp_188 (coe d_th_1516 (coe v0)))
-- Axiom.Set.Theoryᵈ._.spec-∈
d_spec'45''8712'_1590 :: T_Theory'7496'_1362 -> () -> ()
d_spec'45''8712'_1590 = erased
-- Axiom.Set.Theoryᵈ._.specProperty
d_specProperty_1592 ::
  T_Theory'7496'_1362 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1592 = erased
-- Axiom.Set.Theoryᵈ._.specification
d_specification_1594 ::
  T_Theory'7496'_1362 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1594 v0
  = coe d_specification_214 (coe d_th_1516 (coe v0))
-- Axiom.Set.Theoryᵈ._.strictify
d_strictify_1596 ::
  T_Theory'7496'_1362 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1596 v0 v1 v2 v3 v4
  = coe du_strictify_406 (coe d_th_1516 (coe v0)) v3 v4
-- Axiom.Set.Theoryᵈ._.strongly-finite
d_strongly'45'finite_1598 ::
  T_Theory'7496'_1362 -> () -> AgdaAny -> ()
d_strongly'45'finite_1598 = erased
-- Axiom.Set.Theoryᵈ._.unions
d_unions_1600 ::
  T_Theory'7496'_1362 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1600 v0 = coe d_unions_224 (coe d_th_1516 (coe v0))
-- Axiom.Set.Theoryᵈ._.weakly-finite
d_weakly'45'finite_1602 ::
  T_Theory'7496'_1362 -> () -> AgdaAny -> ()
d_weakly'45'finite_1602 = erased
-- Axiom.Set.Theoryᵈ._.∅
d_'8709'_1604 :: T_Theory'7496'_1362 -> () -> AgdaAny
d_'8709'_1604 v0 v1 = coe du_'8709'_470 (coe d_th_1516 (coe v0))
-- Axiom.Set.Theoryᵈ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1606 ::
  T_Theory'7496'_1362 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1606 v0 v1
  = coe du_'8709''45'strongly'45'finite_472 (coe d_th_1516 (coe v0))
-- Axiom.Set.Theoryᵈ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1608 ::
  T_Theory'7496'_1362 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'concatMap'738'_1608 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_548 (coe d_th_1516 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-filter
d_'8712''45'filter_1610 ::
  T_Theory'7496'_1362 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'filter_1610 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_454 (coe d_th_1516 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-fromList
d_'8712''45'fromList_1612 ::
  T_Theory'7496'_1362 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'fromList_1612 v0 v1 v2 v3
  = coe du_'8712''45'fromList_460 (coe d_th_1516 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-irrelevant
d_'8712''45'irrelevant_1614 ::
  T_Theory'7496'_1362 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1614 = erased
-- Axiom.Set.Theoryᵈ._.∈-map
d_'8712''45'map_1616 ::
  T_Theory'7496'_1362 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'map_1616 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_434 (coe d_th_1516 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-mapPartial
d_'8712''45'mapPartial_1618 ::
  T_Theory'7496'_1362 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'mapPartial_1618 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_614 (coe d_th_1516 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-map′
d_'8712''45'map'8242'_1620 ::
  T_Theory'7496'_1362 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1620 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_440 (coe d_th_1516 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᵈ._.∈-partialToSet
d_'8712''45'partialToSet_1622 ::
  T_Theory'7496'_1362 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'partialToSet_1622 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_512 (coe d_th_1516 (coe v0)) v5
-- Axiom.Set.Theoryᵈ._.∈-singleton
d_'8712''45'singleton_1624 ::
  T_Theory'7496'_1362 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'singleton_1624 v0 v1 v2 v3
  = coe du_'8712''45'singleton_486 (coe d_th_1516 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-unions
d_'8712''45'unions_1626 ::
  T_Theory'7496'_1362 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'unions_1626 v0 v1 v2 v3
  = coe du_'8712''45'unions_468 (coe d_th_1516 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-∪
d_'8712''45''8746'_1628 ::
  T_Theory'7496'_1362 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8746'_1628 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_716 (coe d_th_1516 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᵈ._.≡→∈
d_'8801''8594''8712'_1630 ::
  T_Theory'7496'_1362 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1630 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1630 v5
du_'8801''8594''8712'_1630 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1630 v0 = coe v0
-- Axiom.Set.Theoryᵈ._.⊆-mapPartial
d_'8838''45'mapPartial_1632 ::
  T_Theory'7496'_1362 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1632 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_632 (coe d_th_1516 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᵈ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1634 ::
  T_Theory'7496'_1362 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1634 ~v0
  = du_'8838''45'weakly'45'finite_1634
du_'8838''45'weakly'45'finite_1634 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1634 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_368 v3 v4
-- Axiom.Set.Theoryᵈ._.❴_❵
d_'10100'_'10101'_1636 ::
  T_Theory'7496'_1362 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1636 v0
  = coe du_'10100'_'10101'_480 (coe d_th_1516 (coe v0))
-- Axiom.Set.Theoryᵈ._.Intersection._∩_
d__'8745'__1640 ::
  T_Theory'7496'_1362 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1640 v0 v1 v2 v3 v4
  = coe du__'8745'__732 (coe d_th_1516 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᵈ._.Intersection._＼_
d__'65340'__1642 ::
  T_Theory'7496'_1362 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1642 v0 v1 v2 v3 v4
  = coe du__'65340'__758 (coe d_th_1516 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᵈ._.Intersection.disjoint'
d_disjoint''_1644 ::
  T_Theory'7496'_1362 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1644 = erased
-- Axiom.Set.Theoryᵈ._.Intersection.∈-∩
d_'8712''45''8745'_1646 ::
  T_Theory'7496'_1362 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8745'_1646 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_740 (coe d_th_1516 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryᵈ.∈-sp
d_'8712''45'sp_1648 ::
  T_Theory'7496'_1362 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
d_'8712''45'sp_1648 v0
  = case coe v0 of
      C_constructor_1820 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._∈?_
d__'8712''63'__1650 ::
  T_Theory'7496'_1362 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8712''63'__1650 v0
  = case coe v0 of
      C_constructor_1820 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ.all?
d_all'63'_1658 ::
  T_Theory'7496'_1362 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_all'63'_1658 v0
  = case coe v0 of
      C_constructor_1820 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ.any?
d_any'63'_1666 ::
  T_Theory'7496'_1362 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63'_1666 v0
  = case coe v0 of
      C_constructor_1820 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._._.Dec-Allˢ
d_Dec'45'All'738'_1682 ::
  T_Theory'7496'_1362 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'All'738'_1682 v0 ~v1 ~v2 v3 v4
  = du_Dec'45'All'738'_1682 v0 v3 v4
du_Dec'45'All'738'_1682 ::
  T_Theory'7496'_1362 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'All'738'_1682 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
      (coe
         (\ v3 ->
            coe
              d_all'63'_1658 v0 erased erased
              (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72 (coe v1))
              v3))
      (coe v2)
-- Axiom.Set.Theoryᵈ._._.Dec-Anyˢ
d_Dec'45'Any'738'_1686 ::
  T_Theory'7496'_1362 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'Any'738'_1686 v0 ~v1 ~v2 v3 v4
  = du_Dec'45'Any'738'_1686 v0 v3 v4
du_Dec'45'Any'738'_1686 ::
  T_Theory'7496'_1362 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'Any'738'_1686 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
      (coe
         d_any'63'_1666 v0 erased erased
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72 (coe v1)))
      (coe v2)
-- Axiom.Set.Theoryᵈ._._.allᵇ
d_all'7495'_1696 ::
  T_Theory'7496'_1362 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
d_all'7495'_1696 v0 ~v1 ~v2 v3 v4 = du_all'7495'_1696 v0 v3 v4
du_all'7495'_1696 ::
  T_Theory'7496'_1362 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
du_all'7495'_1696 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_140 ()
      erased (coe d_all'63'_1658 v0 erased erased v1 v2)
-- Axiom.Set.Theoryᵈ._._.anyᵇ
d_any'7495'_1700 ::
  T_Theory'7496'_1362 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
d_any'7495'_1700 v0 ~v1 ~v2 v3 v4 = du_any'7495'_1700 v0 v3 v4
du_any'7495'_1700 ::
  T_Theory'7496'_1362 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
du_any'7495'_1700 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_140 ()
      erased (coe d_any'63'_1666 v0 erased erased v1 v2)
-- Axiom.Set.Theoryᵈ._._∈ᵇ_
d__'8712''7495'__1714 ::
  T_Theory'7496'_1362 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Bool
d__'8712''7495'__1714 v0 ~v1 v2 v3 v4
  = du__'8712''7495'__1714 v0 v2 v3 v4
du__'8712''7495'__1714 ::
  T_Theory'7496'_1362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Bool
du__'8712''7495'__1714 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_140 ()
      erased (coe d__'8712''63'__1650 v0 erased v1 v2 v3)
-- Axiom.Set.Theoryᵈ._.Dec-∈
d_Dec'45''8712'_1720 ::
  T_Theory'7496'_1362 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8712'_1720 v0 ~v1 v2 v3 v4
  = du_Dec'45''8712'_1720 v0 v2 v3 v4
du_Dec'45''8712'_1720 ::
  T_Theory'7496'_1362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45''8712'_1720 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
      (coe d__'8712''63'__1650 v0 erased v1) (coe v2) (coe v3)
-- Axiom.Set.Theoryᵈ._.incl-set'
d_incl'45'set''_1732 ::
  T_Theory'7496'_1362 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set''_1732 v0 ~v1 v2 v3 v4
  = du_incl'45'set''_1732 v0 v2 v3 v4
du_incl'45'set''_1732 ::
  T_Theory'7496'_1362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incl'45'set''_1732 v0 v1 v2 v3
  = let v4 = coe d__'8712''63'__1650 v0 erased v1 v3 v2 in
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
d_incl'45'set_1758 ::
  T_Theory'7496'_1362 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
d_incl'45'set_1758 v0 ~v1 v2 v3 = du_incl'45'set_1758 v0 v2 v3
du_incl'45'set_1758 ::
  T_Theory'7496'_1362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
du_incl'45'set_1758 v0 v1 v2
  = coe
      du_mapPartial_604 (d_th_1516 (coe v0))
      (coe du_incl'45'set''_1732 (coe v0) (coe v1) (coe v2)) v2
-- Axiom.Set.Theoryᵈ._._.incl-set-proj₁⊆
d_incl'45'set'45'proj'8321''8838'_1768 ::
  T_Theory'7496'_1362 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_incl'45'set'45'proj'8321''8838'_1768 v0 ~v1 v2 v3 v4 v5
  = du_incl'45'set'45'proj'8321''8838'_1768 v0 v2 v3 v4 v5
du_incl'45'set'45'proj'8321''8838'_1768 ::
  T_Theory'7496'_1362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_incl'45'set'45'proj'8321''8838'_1768 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    d_replacement_236 (d_th_1516 (coe v0)) erased erased
                    (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                    (coe du_incl'45'set_1758 (coe v0) (coe v1) (coe v2)))
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
d_incl'45'set'45'proj'8321''8839'_1780 ::
  T_Theory'7496'_1362 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_incl'45'set'45'proj'8321''8839'_1780 v0 ~v1 v2 v3 v4 v5
  = du_incl'45'set'45'proj'8321''8839'_1780 v0 v2 v3 v4 v5
du_incl'45'set'45'proj'8321''8839'_1780 ::
  T_Theory'7496'_1362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_incl'45'set'45'proj'8321''8839'_1780 v0 v1 v2 v3 v4
  = let v5 = coe d__'8712''63'__1650 v0 erased v1 v3 v2 in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
           -> if coe v6
                then case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                         -> coe
                              MAlonzo.Code.Function.Bundles.d_to_1868
                              (coe
                                 du_'8712''45'map_434 (coe d_th_1516 (coe v0))
                                 (coe
                                    du_mapPartial_604 (d_th_1516 (coe v0))
                                    (coe du_incl'45'set''_1732 (coe v0) (coe v1) (coe v2)) v2)
                                 (coe (\ v9 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                 (coe v3))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v8))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                    (coe
                                       MAlonzo.Code.Function.Bundles.d_to_1868
                                       (coe
                                          du_'8712''45'mapPartial_614 (coe d_th_1516 (coe v0))
                                          (coe v2)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                             (coe v8))
                                          (coe du_incl'45'set''_1732 (coe v0) (coe v1) (coe v2)))
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
d_helper_1808 ::
  T_Theory'7496'_1362 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_helper_1808 = erased
-- Axiom.Set.Theoryᵈ._._.incl-set-proj₁
d_incl'45'set'45'proj'8321'_1818 ::
  T_Theory'7496'_1362 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set'45'proj'8321'_1818 v0 ~v1 v2 v3
  = du_incl'45'set'45'proj'8321'_1818 v0 v2 v3
du_incl'45'set'45'proj'8321'_1818 ::
  T_Theory'7496'_1362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incl'45'set'45'proj'8321'_1818 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_incl'45'set'45'proj'8321''8838'_1768 (coe v0) (coe v1) (coe v2))
      (coe
         du_incl'45'set'45'proj'8321''8839'_1780 (coe v0) (coe v1) (coe v2))
