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
  = C_constructor_72 (() ->
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
      C_constructor_72 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.SpecProperty.sp-¬
d_sp'45''172'_70 ::
  T_SpecProperty_48 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_70 v0
  = case coe v0 of
      C_constructor_72 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.⊤-SpecProperty
d_'8868''45'SpecProperty_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_SpecProperty_48
d_'8868''45'SpecProperty_76 ~v0 = du_'8868''45'SpecProperty_76
du_'8868''45'SpecProperty_76 :: T_SpecProperty_48
du_'8868''45'SpecProperty_76
  = coe
      C_constructor_72
      (\ v0 v1 v2 v3 v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (\ v0 v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Axiom.Set.Dec-SpecProperty
d_Dec'45'SpecProperty_86 :: T_SpecProperty_48
d_Dec'45'SpecProperty_86
  = coe
      C_constructor_72 (\ v0 v1 v2 v3 v4 v5 -> coe v3 (coe v4 v5))
      (\ v0 v1 v2 v3 ->
         coe
           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_76
           (coe v2 v3))
-- Axiom.Set.Theory
d_Theory_96 a0 = ()
data T_Theory_96
  = C_constructor_754 T_SpecProperty_48
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
d_sp'45''172'_108 ::
  T_SpecProperty_48 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_108 v0 = coe d_sp'45''172'_70 (coe v0)
-- Axiom.Set._.sp-∘
d_sp'45''8728'_110 ::
  T_SpecProperty_48 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_110 v0 = coe d_sp'45''8728'_68 (coe v0)
-- Axiom.Set._.specProperty
d_specProperty_112 ::
  T_SpecProperty_48 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_112 = erased
-- Axiom.Set.Theory.Set
d_Set_160 :: T_Theory_96 -> () -> ()
d_Set_160 = erased
-- Axiom.Set.Theory._∈_
d__'8712'__162 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__162 = erased
-- Axiom.Set.Theory.sp
d_sp_164 :: T_Theory_96 -> T_SpecProperty_48
d_sp_164 v0
  = case coe v0 of
      C_constructor_754 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory._.sp-¬
d_sp'45''172'_168 ::
  T_Theory_96 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_168 v0 = coe d_sp'45''172'_70 (coe d_sp_164 (coe v0))
-- Axiom.Set.Theory._.sp-∘
d_sp'45''8728'_170 ::
  T_Theory_96 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_170 v0
  = coe d_sp'45''8728'_68 (coe d_sp_164 (coe v0))
-- Axiom.Set.Theory._.specProperty
d_specProperty_172 :: T_Theory_96 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_172 = erased
-- Axiom.Set.Theory._⊆_
d__'8838'__174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__174 = erased
-- Axiom.Set.Theory.specification
d_specification_188 ::
  T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_188 v0
  = case coe v0 of
      C_constructor_754 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.unions
d_unions_198 ::
  T_Theory_96 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_198 v0
  = case coe v0 of
      C_constructor_754 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.replacement
d_replacement_210 ::
  T_Theory_96 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_210 v0
  = case coe v0 of
      C_constructor_754 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.listing
d_listing_218 ::
  T_Theory_96 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_218 v0
  = case coe v0 of
      C_constructor_754 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory._≡ᵉ_
d__'8801''7497'__226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__226 = erased
-- Axiom.Set.Theory._≡ᵉ'_
d__'8801''7497'''__232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__232 = erased
-- Axiom.Set.Theory._∉_
d__'8713'__240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__240 = erased
-- Axiom.Set.Theory.≡→∈
d_'8801''8594''8712'_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_248 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7
  = du_'8801''8594''8712'_248 v6
du_'8801''8594''8712'_248 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_248 v0 = coe v0
-- Axiom.Set.Theory.∈-irrelevant
d_'8712''45'irrelevant_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_252 = erased
-- Axiom.Set.Theory._Preservesˢ_
d__Preserves'738'__264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__264 = erased
-- Axiom.Set.Theory._Preservesˢ₂_
d__Preserves'738''8322'__272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__272 = erased
-- Axiom.Set.Theory.disjoint
d_disjoint_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_278 = erased
-- Axiom.Set.Theory.finite
d_finite_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> AgdaAny -> ()
d_finite_286 = erased
-- Axiom.Set.Theory.Show-finite
d_Show'45'finite_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_294 ~v0 ~v1 ~v2 v3 = du_Show'45'finite_294 v3
du_Show'45'finite_294 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_294 v0
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
d_weakly'45'finite_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> AgdaAny -> ()
d_weakly'45'finite_300 = erased
-- Axiom.Set.Theory.strongly-finite
d_strongly'45'finite_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> AgdaAny -> ()
d_strongly'45'finite_308 = erased
-- Axiom.Set.Theory.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_320 ~v0 ~v1 ~v2 v3 ~v4
                                                v5
  = du_DecEq'8743'finite'8658'strongly'45'finite_320 v3 v5
du_DecEq'8743'finite'8658'strongly'45'finite_320 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_320 v0 v1
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
d_card_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_338 ~v0 ~v1 ~v2 v3 = du_card_338 v3
du_card_338 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_338 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe MAlonzo.Code.Data.List.Base.du_length_268 v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.⊆-weakly-finite
d_'8838''45'weakly'45'finite_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_342 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_'8838''45'weakly'45'finite_342 v5 v6
du_'8838''45'weakly'45'finite_342 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_342 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe (\ v4 v5 -> coe v3 v4 (coe v0 v4 v5)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theory.isMaximal
d_isMaximal_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> AgdaAny -> ()
d_isMaximal_350 = erased
-- Axiom.Set.Theory.maximal-⊆
d_maximal'45''8838'_358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_358 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7
  = du_maximal'45''8838'_358 v5 v6
du_maximal'45''8838'_358 ::
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_maximal'45''8838'_358 v0 v1 = coe v0 v1
-- Axiom.Set.Theory.maximal-unique
d_maximal'45'unique_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_362 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_maximal'45'unique_362 v5 v6
du_maximal'45'unique_362 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_362 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v2 v3 -> coe du_maximal'45''8838'_358 (coe v1) v2)
      (\ v2 v3 -> coe du_maximal'45''8838'_358 (coe v0) v2)
-- Axiom.Set.Theory.FinSet
d_FinSet_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_Theory_96 -> () -> ()
d_FinSet_368 = erased
-- Axiom.Set.Theory.strictify
d_strictify_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_380 ~v0 v1 ~v2 ~v3 v4 v5 = du_strictify_380 v1 v4 v5
du_strictify_380 ::
  T_Theory_96 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_strictify_380 v0 v1 v2
  = let v3
          = coe
              d_specification_188 v0 erased erased
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
d_map_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_400 ~v0 v1 ~v2 ~v3 = du_map_400 v1
du_map_400 ::
  T_Theory_96 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map_400 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe
         (\ v1 v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe d_replacement_210 v0 erased erased)
-- Axiom.Set.Theory.∈-map
d_'8712''45'map_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'map_408 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'map_408 v1 v4 v5 v6
du_'8712''45'map_408 ::
  T_Theory_96 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'map_408 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_replacement_210 v0 erased erased v2 v1) v3
-- Axiom.Set.Theory.∈-map′
d_'8712''45'map'8242'_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_414 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8712''45'map'8242'_414 v1 v4 v5 v6 v7
du_'8712''45'map'8242'_414 ::
  T_Theory_96 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8712''45'map'8242'_414 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe du_'8712''45'map_408 (coe v0) (coe v1) (coe v2) (coe v2 v3))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v4)))
-- Axiom.Set.Theory.filter
d_filter_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_422 ~v0 v1 ~v2 ~v3 = du_filter_422 v1
du_filter_422 :: T_Theory_96 -> AgdaAny -> AgdaAny -> AgdaAny
du_filter_422 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe
         (\ v1 v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe (\ v1 v2 -> coe d_specification_188 v0 erased erased v2 v1))
-- Axiom.Set.Theory.∈-filter
d_'8712''45'filter_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'filter_428 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'filter_428 v1 v4 v5 v6
du_'8712''45'filter_428 ::
  T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'filter_428 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_specification_188 v0 erased erased v1 v2) v3
-- Axiom.Set.Theory.fromList
d_fromList_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> [AgdaAny] -> AgdaAny
d_fromList_430 ~v0 v1 ~v2 v3 = du_fromList_430 v1 v3
du_fromList_430 :: T_Theory_96 -> [AgdaAny] -> AgdaAny
du_fromList_430 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_listing_218 v0 erased v1)
-- Axiom.Set.Theory.∈-fromList
d_'8712''45'fromList_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'fromList_434 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'fromList_434 v1 v3 v4
du_'8712''45'fromList_434 ::
  T_Theory_96 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'fromList_434 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_listing_218 v0 erased v1) v2
-- Axiom.Set.Theory.∈-unions
d_'8712''45'unions_442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'unions_442 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'unions_442 v1 v3 v4
du_'8712''45'unions_442 ::
  T_Theory_96 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'unions_442 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_unions_198 v0 erased v2) v1
-- Axiom.Set.Theory.∅
d_'8709'_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> AgdaAny
d_'8709'_444 ~v0 v1 ~v2 = du_'8709'_444 v1
du_'8709'_444 :: T_Theory_96 -> AgdaAny
du_'8709'_444 v0
  = coe
      du_fromList_430 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Axiom.Set.Theory.∅-strongly-finite
d_'8709''45'strongly'45'finite_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_446 ~v0 v1 ~v2
  = du_'8709''45'strongly'45'finite_446 v1
du_'8709''45'strongly'45'finite_446 ::
  T_Theory_96 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''45'strongly'45'finite_446 v0
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
                    du_'8712''45'fromList_434 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v1)))))
-- Axiom.Set.Theory.card-∅
d_card'45''8709'_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_448 = erased
-- Axiom.Set.Theory.singleton
d_singleton_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> AgdaAny -> AgdaAny
d_singleton_450 ~v0 v1 ~v2 v3 = du_singleton_450 v1 v3
du_singleton_450 :: T_Theory_96 -> AgdaAny -> AgdaAny
du_singleton_450 v0 v1
  = coe
      du_fromList_430 (coe v0)
      (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v1))
-- Axiom.Set.Theory.❴_❵
d_'10100'_'10101'_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_454 ~v0 v1 = du_'10100'_'10101'_454 v1
du_'10100'_'10101'_454 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny
du_'10100'_'10101'_454 v0 v1 v2 = coe du_singleton_450 (coe v0) v2
-- Axiom.Set.Theory.∈-singleton
d_'8712''45'singleton_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'singleton_460 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'singleton_460 v1 v3 v4
du_'8712''45'singleton_460 ::
  T_Theory_96 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'singleton_460 v0 v1 v2
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
            du_'8712''45'fromList_434 (coe v0)
            (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v2))
            (coe v1)))
      (coe
         MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
         (coe
            (\ v3 ->
               coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased))
         erased)
-- Axiom.Set.Theory.partialToSet
d_partialToSet_474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_474 ~v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_partialToSet_474 v1 v5 v6
du_partialToSet_474 ::
  T_Theory_96 -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
du_partialToSet_474 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe
         (\ v3 ->
            coe
              du_fromList_430 (coe v0)
              (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v3))))
      (coe du_'8709'_444 (coe v0)) (coe v1 v2)
-- Axiom.Set.Theory.∈-partialToSet
d_'8712''45'partialToSet_486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'partialToSet_486 ~v0 v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7
  = du_'8712''45'partialToSet_486 v1 v6
du_'8712''45'partialToSet_486 ::
  T_Theory_96 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'partialToSet_486 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1868
              (coe du_'8712''45'singleton_460 (coe v0) (coe v1) (coe v1))
              erased))
      erased
-- Axiom.Set.Theory.concatMapˢ
d_concatMap'738'_510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_510 ~v0 v1 ~v2 ~v3 v4 v5
  = du_concatMap'738'_510 v1 v4 v5
du_concatMap'738'_510 ::
  T_Theory_96 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_concatMap'738'_510 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_unions_198 v0 erased (coe du_map_400 v0 v1 v2))
-- Axiom.Set.Theory.∈-concatMapˢ
d_'8712''45'concatMap'738'_522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'concatMap'738'_522 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'concatMap'738'_522 v1 v4 v5 v6
du_'8712''45'concatMap'738'_522 ::
  T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'concatMap'738'_522 v0 v1 v2 v3
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
                     du_'8712''45'unions_442 (coe v0) (coe v2)
                     (coe du_map_400 v0 v3 v1)))
               (coe
                  MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
                  (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                       (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                       (coe du_'8712''45'map_408 (coe v0) (coe v1) (coe v3) (coe v4))
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
d_mapPartial_578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_578 ~v0 v1 ~v2 ~v3 v4 = du_mapPartial_578 v1 v4
du_mapPartial_578 ::
  T_Theory_96 -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
du_mapPartial_578 v0 v1
  = coe
      du_concatMap'738'_510 (coe v0)
      (coe du_partialToSet_474 (coe v0) (coe v1))
-- Axiom.Set.Theory.∈-mapPartial
d_'8712''45'mapPartial_588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'mapPartial_588 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'mapPartial_588 v1 v4 v5 v6
du_'8712''45'mapPartial_588 ::
  T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'mapPartial_588 v0 v1 v2 v3
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
            du_'8712''45'concatMap'738'_522 (coe v0) (coe v1) (coe v2)
            (coe du_partialToSet_474 (coe v0) (coe v3))))
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
              (coe du_'8712''45'partialToSet_486 (coe v0) (coe v2))))
-- Axiom.Set.Theory.⊆-mapPartial
d_'8838''45'mapPartial_606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_606 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8838''45'mapPartial_606 v1 v4 v5 v6 v7
du_'8838''45'mapPartial_606 ::
  T_Theory_96 ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du_'8838''45'mapPartial_606 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    d_replacement_210 v0 erased erased
                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                    (coe du_mapPartial_578 v0 v2 v1))
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
                                           du_'8712''45'concatMap'738'_522 (coe v0) (coe v1)
                                           (coe v6) (coe du_partialToSet_474 (coe v0) (coe v2))))
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
                                     (coe du_'8712''45'partialToSet_486 (coe v0) (coe v6)))
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
                                              du_'8712''45'concatMap'738'_522 (coe v0) (coe v1)
                                              (coe v6) (coe du_partialToSet_474 (coe v0) (coe v2))))
                                        v9)) in
                        coe
                          (case coe v11 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                               -> coe
                                    MAlonzo.Code.Function.Bundles.d_to_1868
                                    (coe
                                       du_'8712''45'map_408 (coe v0) (coe v1) (coe v2)
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
d_binary'45'unions_646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_646 ~v0 v1 ~v2 v3 v4
  = du_binary'45'unions_646 v1 v3 v4
du_binary'45'unions_646 ::
  T_Theory_96 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_binary'45'unions_646 v0 v1 v2
  = let v3
          = coe
              d_unions_198 v0 erased
              (coe
                 du_fromList_430 (coe v0)
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
                                                   du_'8712''45'fromList_434 (coe v0)
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
                                                   du_'8712''45'fromList_434 (coe v0)
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
                                              du_'8712''45'fromList_434 (coe v0)
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
d__'8746'__682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__682 ~v0 v1 ~v2 v3 v4 = du__'8746'__682 v1 v3 v4
du__'8746'__682 :: T_Theory_96 -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746'__682 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe du_binary'45'unions_646 (coe v0) (coe v1) (coe v2))
-- Axiom.Set.Theory.∈-∪
d_'8712''45''8746'_690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8746'_690 ~v0 v1 ~v2 v3 v4 v5
  = du_'8712''45''8746'_690 v1 v3 v4 v5
du_'8712''45''8746'_690 ::
  T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45''8746'_690 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe du_binary'45'unions_646 (coe v0) (coe v1) (coe v2)) v3
-- Axiom.Set.Theory.spec-∈
d_spec'45''8712'_692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_Theory_96 -> () -> ()
d_spec'45''8712'_692 = erased
-- Axiom.Set.Theory.Intersection._∩_
d__'8745'__706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__706 ~v0 v1 ~v2 v3 v4 v5 = du__'8745'__706 v1 v3 v4 v5
du__'8745'__706 ::
  T_Theory_96 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8745'__706 v0 v1 v2 v3 = coe du_filter_422 v0 (coe v1 v3) v2
-- Axiom.Set.Theory.Intersection.∈-∩
d_'8712''45''8745'_714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8745'_714 ~v0 v1 ~v2 v3 v4 v5 v6
  = du_'8712''45''8745'_714 v1 v3 v4 v5 v6
du_'8712''45''8745'_714 ::
  T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45''8745'_714 v0 v1 v2 v3 v4
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
            du_'8712''45'filter_428 (coe v0) (coe v2) (coe v1 v3) (coe v4)))
      (coe MAlonzo.Code.Data.Product.Algebra.du_'215''45'comm_232)
-- Axiom.Set.Theory.Intersection.disjoint'
d_disjoint''_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_726 = erased
-- Axiom.Set.Theory.Intersection._＼_
d__'65340'__732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__732 ~v0 v1 ~v2 v3 v4 v5 = du__'65340'__732 v1 v3 v4 v5
du__'65340'__732 ::
  T_Theory_96 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'65340'__732 v0 v1 v2 v3
  = coe
      du_filter_422 v0
      (coe
         d_sp'45''172'_70 (d_sp_164 (coe v0)) erased erased (coe v1 v3))
      v2
-- Axiom.Set.Theory.All
d_All_738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_738 = erased
-- Axiom.Set.Theory.Any
d_Any_746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Theory_96 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_746 = erased
-- Axiom.Set.Theoryᶠ
d_Theory'7584'_756 = ()
data T_Theory'7584'_756
  = C_constructor_1050 T_Theory_96
                       (() -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Axiom.Set._._Preservesˢ_
d__Preserves'738'__762 ::
  T_Theory_96 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__762 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__764 ::
  T_Theory_96 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__764 = erased
-- Axiom.Set._._∈_
d__'8712'__766 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__766 = erased
-- Axiom.Set._._∉_
d__'8713'__768 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__768 = erased
-- Axiom.Set._._∪_
d__'8746'__770 ::
  T_Theory_96 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__770 v0 v1 v2 v3 = coe du__'8746'__682 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__772 ::
  T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__772 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__774 ::
  T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__774 = erased
-- Axiom.Set._._⊆_
d__'8838'__776 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__776 = erased
-- Axiom.Set._.All
d_All_778 :: T_Theory_96 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_778 = erased
-- Axiom.Set._.Any
d_Any_780 :: T_Theory_96 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_780 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_782 ::
  T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_782 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_782
du_DecEq'8743'finite'8658'strongly'45'finite_782 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_782 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_320 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_784 :: T_Theory_96 -> () -> ()
d_FinSet_784 = erased
-- Axiom.Set._.Set
d_Set_786 :: T_Theory_96 -> () -> ()
d_Set_786 = erased
-- Axiom.Set._.Show-finite
d_Show'45'finite_788 ::
  T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_788 ~v0 = du_Show'45'finite_788
du_Show'45'finite_788 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_788 v0 v1 = coe du_Show'45'finite_294 v1
-- Axiom.Set._.binary-unions
d_binary'45'unions_790 ::
  T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_790 v0 v1 v2 v3
  = coe du_binary'45'unions_646 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_792 ::
  T_Theory_96 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_792 ~v0 = du_card_792
du_card_792 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_792 v0 v1 = coe du_card_338 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_794 ::
  T_Theory_96 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_794 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_796 ::
  T_Theory_96 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_796 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_510 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_798 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_798 = erased
-- Axiom.Set._.filter
d_filter_800 ::
  T_Theory_96 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_800 v0 v1 v2 = coe du_filter_422 (coe v0)
-- Axiom.Set._.finite
d_finite_802 :: T_Theory_96 -> () -> AgdaAny -> ()
d_finite_802 = erased
-- Axiom.Set._.fromList
d_fromList_804 :: T_Theory_96 -> () -> [AgdaAny] -> AgdaAny
d_fromList_804 v0 v1 v2 = coe du_fromList_430 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_806 :: T_Theory_96 -> () -> AgdaAny -> ()
d_isMaximal_806 = erased
-- Axiom.Set._.listing
d_listing_808 ::
  T_Theory_96 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_808 v0 = coe d_listing_218 (coe v0)
-- Axiom.Set._.map
d_map_810 ::
  T_Theory_96 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_810 v0 v1 v2 = coe du_map_400 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_812 ::
  T_Theory_96 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_812 v0 v1 v2 v3 = coe du_mapPartial_578 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_814 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_814 ~v0 = du_maximal'45'unique_814
du_maximal'45'unique_814 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_814 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_362 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_816 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_816 ~v0 = du_maximal'45''8838'_816
du_maximal'45''8838'_816 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_816 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_358 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_818 ::
  T_Theory_96 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_818 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_474 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_820 ::
  T_Theory_96 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_820 v0 = coe d_replacement_210 (coe v0)
-- Axiom.Set._.singleton
d_singleton_822 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny
d_singleton_822 v0 v1 v2 = coe du_singleton_450 (coe v0) v2
-- Axiom.Set._.sp
d_sp_824 :: T_Theory_96 -> T_SpecProperty_48
d_sp_824 v0 = coe d_sp_164 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_826 ::
  T_Theory_96 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_826 v0 = coe d_sp'45''172'_70 (coe d_sp_164 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_828 ::
  T_Theory_96 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_828 v0
  = coe d_sp'45''8728'_68 (coe d_sp_164 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_830 :: T_Theory_96 -> () -> ()
d_spec'45''8712'_830 = erased
-- Axiom.Set._.specProperty
d_specProperty_832 :: T_Theory_96 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_832 = erased
-- Axiom.Set._.specification
d_specification_834 ::
  T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_834 v0 = coe d_specification_188 (coe v0)
-- Axiom.Set._.strictify
d_strictify_836 ::
  T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_836 v0 v1 v2 v3 v4
  = coe du_strictify_380 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_838 :: T_Theory_96 -> () -> AgdaAny -> ()
d_strongly'45'finite_838 = erased
-- Axiom.Set._.unions
d_unions_840 ::
  T_Theory_96 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_840 v0 = coe d_unions_198 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_842 :: T_Theory_96 -> () -> AgdaAny -> ()
d_weakly'45'finite_842 = erased
-- Axiom.Set._.∅
d_'8709'_844 :: T_Theory_96 -> () -> AgdaAny
d_'8709'_844 v0 v1 = coe du_'8709'_444 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_846 ::
  T_Theory_96 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_846 v0 v1
  = coe du_'8709''45'strongly'45'finite_446 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_848 ::
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'concatMap'738'_848 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_522 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_850 ::
  T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'filter_850 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_428 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_852 ::
  T_Theory_96 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'fromList_852 v0 v1 v2 v3
  = coe du_'8712''45'fromList_434 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_854 :: T_Theory_96 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_854 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_856 ::
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'map_856 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_408 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_858 ::
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'mapPartial_858 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_588 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_860 ::
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_860 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_414 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_862 ::
  T_Theory_96 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'partialToSet_862 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_486 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_864 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'singleton_864 v0 v1 v2 v3
  = coe du_'8712''45'singleton_460 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_866 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'unions_866 v0 v1 v2 v3
  = coe du_'8712''45'unions_442 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_868 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8746'_868 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_690 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_870 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_870 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_870 v5
du_'8801''8594''8712'_870 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_870 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_872 ::
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_872 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_606 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_874 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_874 ~v0
  = du_'8838''45'weakly'45'finite_874
du_'8838''45'weakly'45'finite_874 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_874 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_342 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_876 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_876 v0 = coe du_'10100'_'10101'_454 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__880 ::
  T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__880 v0 v1 v2 v3 v4
  = coe du__'8745'__706 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection._＼_
d__'65340'__882 ::
  T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__882 v0 v1 v2 v3 v4
  = coe du__'65340'__732 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_884 ::
  T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_884 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_886 ::
  T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8745'_886 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_714 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryᶠ.theory
d_theory_892 :: T_Theory'7584'_756 -> T_Theory_96
d_theory_892 v0
  = case coe v0 of
      C_constructor_1050 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᶠ._._Preservesˢ_
d__Preserves'738'__896 ::
  T_Theory'7584'_756 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__896 = erased
-- Axiom.Set.Theoryᶠ._._Preservesˢ₂_
d__Preserves'738''8322'__898 ::
  T_Theory'7584'_756 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__898 = erased
-- Axiom.Set.Theoryᶠ._._∈_
d__'8712'__900 ::
  T_Theory'7584'_756 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__900 = erased
-- Axiom.Set.Theoryᶠ._._∉_
d__'8713'__902 ::
  T_Theory'7584'_756 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__902 = erased
-- Axiom.Set.Theoryᶠ._._∪_
d__'8746'__904 ::
  T_Theory'7584'_756 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__904 v0 v1 v2 v3
  = coe du__'8746'__682 (coe d_theory_892 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._._≡ᵉ_
d__'8801''7497'__906 ::
  T_Theory'7584'_756 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__906 = erased
-- Axiom.Set.Theoryᶠ._._≡ᵉ'_
d__'8801''7497'''__908 ::
  T_Theory'7584'_756 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__908 = erased
-- Axiom.Set.Theoryᶠ._._⊆_
d__'8838'__910 ::
  T_Theory'7584'_756 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__910 = erased
-- Axiom.Set.Theoryᶠ._.All
d_All_912 ::
  T_Theory'7584'_756 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_912 = erased
-- Axiom.Set.Theoryᶠ._.Any
d_Any_914 ::
  T_Theory'7584'_756 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_914 = erased
-- Axiom.Set.Theoryᶠ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_916 ::
  T_Theory'7584'_756 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_916 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_916
du_DecEq'8743'finite'8658'strongly'45'finite_916 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_916 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_320 v1 v3
-- Axiom.Set.Theoryᶠ._.FinSet
d_FinSet_918 :: T_Theory'7584'_756 -> () -> ()
d_FinSet_918 = erased
-- Axiom.Set.Theoryᶠ._.Set
d_Set_920 :: T_Theory'7584'_756 -> () -> ()
d_Set_920 = erased
-- Axiom.Set.Theoryᶠ._.Show-finite
d_Show'45'finite_922 ::
  T_Theory'7584'_756 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_922 ~v0 = du_Show'45'finite_922
du_Show'45'finite_922 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_922 v0 v1 = coe du_Show'45'finite_294 v1
-- Axiom.Set.Theoryᶠ._.binary-unions
d_binary'45'unions_924 ::
  T_Theory'7584'_756 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_924 v0 v1 v2 v3
  = coe du_binary'45'unions_646 (coe d_theory_892 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.card
d_card_926 ::
  T_Theory'7584'_756 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_926 ~v0 = du_card_926
du_card_926 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_926 v0 v1 = coe du_card_338 v1
-- Axiom.Set.Theoryᶠ._.card-∅
d_card'45''8709'_928 ::
  T_Theory'7584'_756 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_928 = erased
-- Axiom.Set.Theoryᶠ._.concatMapˢ
d_concatMap'738'_930 ::
  T_Theory'7584'_756 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_930 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_510 (coe d_theory_892 (coe v0)) v3 v4
-- Axiom.Set.Theoryᶠ._.disjoint
d_disjoint_932 ::
  T_Theory'7584'_756 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_932 = erased
-- Axiom.Set.Theoryᶠ._.filter
d_filter_934 ::
  T_Theory'7584'_756 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_934 v0 v1 v2
  = coe du_filter_422 (coe d_theory_892 (coe v0))
-- Axiom.Set.Theoryᶠ._.finite
d_finite_936 :: T_Theory'7584'_756 -> () -> AgdaAny -> ()
d_finite_936 = erased
-- Axiom.Set.Theoryᶠ._.fromList
d_fromList_938 :: T_Theory'7584'_756 -> () -> [AgdaAny] -> AgdaAny
d_fromList_938 v0 v1 v2
  = coe du_fromList_430 (coe d_theory_892 (coe v0)) v2
-- Axiom.Set.Theoryᶠ._.isMaximal
d_isMaximal_940 :: T_Theory'7584'_756 -> () -> AgdaAny -> ()
d_isMaximal_940 = erased
-- Axiom.Set.Theoryᶠ._.listing
d_listing_942 ::
  T_Theory'7584'_756 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_942 v0 = coe d_listing_218 (coe d_theory_892 (coe v0))
-- Axiom.Set.Theoryᶠ._.map
d_map_944 ::
  T_Theory'7584'_756 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_944 v0 v1 v2 = coe du_map_400 (coe d_theory_892 (coe v0))
-- Axiom.Set.Theoryᶠ._.mapPartial
d_mapPartial_946 ::
  T_Theory'7584'_756 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_946 v0 v1 v2 v3
  = coe du_mapPartial_578 (coe d_theory_892 (coe v0)) v3
-- Axiom.Set.Theoryᶠ._.maximal-unique
d_maximal'45'unique_948 ::
  T_Theory'7584'_756 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_948 ~v0 = du_maximal'45'unique_948
du_maximal'45'unique_948 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_948 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_362 v3 v4
-- Axiom.Set.Theoryᶠ._.maximal-⊆
d_maximal'45''8838'_950 ::
  T_Theory'7584'_756 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_950 ~v0 = du_maximal'45''8838'_950
du_maximal'45''8838'_950 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_950 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_358 v3 v4
-- Axiom.Set.Theoryᶠ._.partialToSet
d_partialToSet_952 ::
  T_Theory'7584'_756 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_952 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_474 (coe d_theory_892 (coe v0)) v4 v5
-- Axiom.Set.Theoryᶠ._.replacement
d_replacement_954 ::
  T_Theory'7584'_756 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_954 v0
  = coe d_replacement_210 (coe d_theory_892 (coe v0))
-- Axiom.Set.Theoryᶠ._.singleton
d_singleton_956 :: T_Theory'7584'_756 -> () -> AgdaAny -> AgdaAny
d_singleton_956 v0 v1 v2
  = coe du_singleton_450 (coe d_theory_892 (coe v0)) v2
-- Axiom.Set.Theoryᶠ._.sp
d_sp_958 :: T_Theory'7584'_756 -> T_SpecProperty_48
d_sp_958 v0 = coe d_sp_164 (coe d_theory_892 (coe v0))
-- Axiom.Set.Theoryᶠ._.sp-¬
d_sp'45''172'_960 ::
  T_Theory'7584'_756 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_960 v0
  = coe d_sp'45''172'_70 (coe d_sp_164 (coe d_theory_892 (coe v0)))
-- Axiom.Set.Theoryᶠ._.sp-∘
d_sp'45''8728'_962 ::
  T_Theory'7584'_756 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_962 v0
  = coe d_sp'45''8728'_68 (coe d_sp_164 (coe d_theory_892 (coe v0)))
-- Axiom.Set.Theoryᶠ._.spec-∈
d_spec'45''8712'_964 :: T_Theory'7584'_756 -> () -> ()
d_spec'45''8712'_964 = erased
-- Axiom.Set.Theoryᶠ._.specProperty
d_specProperty_966 ::
  T_Theory'7584'_756 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_966 = erased
-- Axiom.Set.Theoryᶠ._.specification
d_specification_968 ::
  T_Theory'7584'_756 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_968 v0
  = coe d_specification_188 (coe d_theory_892 (coe v0))
-- Axiom.Set.Theoryᶠ._.strictify
d_strictify_970 ::
  T_Theory'7584'_756 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_970 v0 v1 v2 v3 v4
  = coe du_strictify_380 (coe d_theory_892 (coe v0)) v3 v4
-- Axiom.Set.Theoryᶠ._.strongly-finite
d_strongly'45'finite_972 ::
  T_Theory'7584'_756 -> () -> AgdaAny -> ()
d_strongly'45'finite_972 = erased
-- Axiom.Set.Theoryᶠ._.unions
d_unions_974 ::
  T_Theory'7584'_756 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_974 v0 = coe d_unions_198 (coe d_theory_892 (coe v0))
-- Axiom.Set.Theoryᶠ._.weakly-finite
d_weakly'45'finite_976 :: T_Theory'7584'_756 -> () -> AgdaAny -> ()
d_weakly'45'finite_976 = erased
-- Axiom.Set.Theoryᶠ._.∅
d_'8709'_978 :: T_Theory'7584'_756 -> () -> AgdaAny
d_'8709'_978 v0 v1 = coe du_'8709'_444 (coe d_theory_892 (coe v0))
-- Axiom.Set.Theoryᶠ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_980 ::
  T_Theory'7584'_756 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_980 v0 v1
  = coe
      du_'8709''45'strongly'45'finite_446 (coe d_theory_892 (coe v0))
-- Axiom.Set.Theoryᶠ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_982 ::
  T_Theory'7584'_756 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'concatMap'738'_982 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_522 (coe d_theory_892 (coe v0)) v3 v4
      v5
-- Axiom.Set.Theoryᶠ._.∈-filter
d_'8712''45'filter_984 ::
  T_Theory'7584'_756 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'filter_984 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_428 (coe d_theory_892 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-fromList
d_'8712''45'fromList_986 ::
  T_Theory'7584'_756 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'fromList_986 v0 v1 v2 v3
  = coe du_'8712''45'fromList_434 (coe d_theory_892 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-irrelevant
d_'8712''45'irrelevant_988 ::
  T_Theory'7584'_756 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_988 = erased
-- Axiom.Set.Theoryᶠ._.∈-map
d_'8712''45'map_990 ::
  T_Theory'7584'_756 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'map_990 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_408 (coe d_theory_892 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-mapPartial
d_'8712''45'mapPartial_992 ::
  T_Theory'7584'_756 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'mapPartial_992 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'mapPartial_588 (coe d_theory_892 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᶠ._.∈-map′
d_'8712''45'map'8242'_994 ::
  T_Theory'7584'_756 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_994 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_414 (coe d_theory_892 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᶠ._.∈-partialToSet
d_'8712''45'partialToSet_996 ::
  T_Theory'7584'_756 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'partialToSet_996 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_486 (coe d_theory_892 (coe v0)) v5
-- Axiom.Set.Theoryᶠ._.∈-singleton
d_'8712''45'singleton_998 ::
  T_Theory'7584'_756 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'singleton_998 v0 v1 v2 v3
  = coe du_'8712''45'singleton_460 (coe d_theory_892 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-unions
d_'8712''45'unions_1000 ::
  T_Theory'7584'_756 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'unions_1000 v0 v1 v2 v3
  = coe du_'8712''45'unions_442 (coe d_theory_892 (coe v0)) v2 v3
-- Axiom.Set.Theoryᶠ._.∈-∪
d_'8712''45''8746'_1002 ::
  T_Theory'7584'_756 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8746'_1002 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_690 (coe d_theory_892 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᶠ._.≡→∈
d_'8801''8594''8712'_1004 ::
  T_Theory'7584'_756 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1004 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1004 v5
du_'8801''8594''8712'_1004 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1004 v0 = coe v0
-- Axiom.Set.Theoryᶠ._.⊆-mapPartial
d_'8838''45'mapPartial_1006 ::
  T_Theory'7584'_756 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1006 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_606 (coe d_theory_892 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᶠ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1008 ::
  T_Theory'7584'_756 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1008 ~v0
  = du_'8838''45'weakly'45'finite_1008
du_'8838''45'weakly'45'finite_1008 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1008 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_342 v3 v4
-- Axiom.Set.Theoryᶠ._.❴_❵
d_'10100'_'10101'_1010 ::
  T_Theory'7584'_756 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1010 v0
  = coe du_'10100'_'10101'_454 (coe d_theory_892 (coe v0))
-- Axiom.Set.Theoryᶠ._.Intersection._∩_
d__'8745'__1014 ::
  T_Theory'7584'_756 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1014 v0 v1 v2 v3 v4
  = coe du__'8745'__706 (coe d_theory_892 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᶠ._.Intersection._＼_
d__'65340'__1016 ::
  T_Theory'7584'_756 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1016 v0 v1 v2 v3 v4
  = coe du__'65340'__732 (coe d_theory_892 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᶠ._.Intersection.disjoint'
d_disjoint''_1018 ::
  T_Theory'7584'_756 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1018 = erased
-- Axiom.Set.Theoryᶠ._.Intersection.∈-∩
d_'8712''45''8745'_1020 ::
  T_Theory'7584'_756 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8745'_1020 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45''8745'_714 (coe d_theory_892 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryᶠ.finiteness
d_finiteness_1024 ::
  T_Theory'7584'_756 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_finiteness_1024 v0
  = case coe v0 of
      C_constructor_1050 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᶠ.DecEq⇒strongly-finite
d_DecEq'8658'strongly'45'finite_1028 ::
  T_Theory'7584'_756 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8658'strongly'45'finite_1028 v0 ~v1 v2 v3
  = du_DecEq'8658'strongly'45'finite_1028 v0 v2 v3
du_DecEq'8658'strongly'45'finite_1028 ::
  T_Theory'7584'_756 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8658'strongly'45'finite_1028 v0 v1 v2
  = coe
      du_DecEq'8743'finite'8658'strongly'45'finite_320 (coe v1)
      (coe d_finiteness_1024 v0 erased v2)
-- Axiom.Set.Theoryᶠ.toList
d_toList_1032 ::
  T_Theory'7584'_756 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> [AgdaAny]
d_toList_1032 v0 ~v1 v2 v3 = du_toList_1032 v0 v2 v3
du_toList_1032 ::
  T_Theory'7584'_756 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> [AgdaAny]
du_toList_1032 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         du_DecEq'8658'strongly'45'finite_1028 (coe v0) (coe v1) (coe v2))
-- Axiom.Set.Theoryᶠ.lengthˢ
d_length'738'_1034 ::
  T_Theory'7584'_756 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> Integer
d_length'738'_1034 v0 ~v1 v2 v3 = du_length'738'_1034 v0 v2 v3
du_length'738'_1034 ::
  T_Theory'7584'_756 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> Integer
du_length'738'_1034 v0 v1 v2
  = coe
      du_card_338
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
         (coe
            du_DecEq'8658'strongly'45'finite_1028 (coe v0) (coe v1) (coe v2)))
-- Axiom.Set.Theoryᶠ._.Show-Set
d_Show'45'Set_1046 ::
  T_Theory'7584'_756 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Set_1046 v0 ~v1 v2 = du_Show'45'Set_1046 v0 v2
du_Show'45'Set_1046 ::
  T_Theory'7584'_756 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Set_1046 v0 v1
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
                       (coe d_finiteness_1024 v0 erased v2))))))
-- Axiom.Set.Theoryⁱ
d_Theory'8305'_1052 = ()
data T_Theory'8305'_1052
  = C_constructor_1326 T_Theory_96
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Axiom.Set._._Preservesˢ_
d__Preserves'738'__1058 ::
  T_Theory_96 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1058 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__1060 ::
  T_Theory_96 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1060 = erased
-- Axiom.Set._._∈_
d__'8712'__1062 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1062 = erased
-- Axiom.Set._._∉_
d__'8713'__1064 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1064 = erased
-- Axiom.Set._._∪_
d__'8746'__1066 ::
  T_Theory_96 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1066 v0 v1 v2 v3 = coe du__'8746'__682 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__1068 ::
  T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1068 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__1070 ::
  T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1070 = erased
-- Axiom.Set._._⊆_
d__'8838'__1072 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1072 = erased
-- Axiom.Set._.All
d_All_1074 :: T_Theory_96 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1074 = erased
-- Axiom.Set._.Any
d_Any_1076 :: T_Theory_96 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1076 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1078 ::
  T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1078 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1078
du_DecEq'8743'finite'8658'strongly'45'finite_1078 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1078 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_320 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_1080 :: T_Theory_96 -> () -> ()
d_FinSet_1080 = erased
-- Axiom.Set._.Set
d_Set_1082 :: T_Theory_96 -> () -> ()
d_Set_1082 = erased
-- Axiom.Set._.Show-finite
d_Show'45'finite_1084 ::
  T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_1084 ~v0 = du_Show'45'finite_1084
du_Show'45'finite_1084 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_1084 v0 v1 = coe du_Show'45'finite_294 v1
-- Axiom.Set._.binary-unions
d_binary'45'unions_1086 ::
  T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1086 v0 v1 v2 v3
  = coe du_binary'45'unions_646 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_1088 ::
  T_Theory_96 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1088 ~v0 = du_card_1088
du_card_1088 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1088 v0 v1 = coe du_card_338 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_1090 ::
  T_Theory_96 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1090 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_1092 ::
  T_Theory_96 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1092 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_510 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_1094 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1094 = erased
-- Axiom.Set._.filter
d_filter_1096 ::
  T_Theory_96 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1096 v0 v1 v2 = coe du_filter_422 (coe v0)
-- Axiom.Set._.finite
d_finite_1098 :: T_Theory_96 -> () -> AgdaAny -> ()
d_finite_1098 = erased
-- Axiom.Set._.fromList
d_fromList_1100 :: T_Theory_96 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1100 v0 v1 v2 = coe du_fromList_430 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_1102 :: T_Theory_96 -> () -> AgdaAny -> ()
d_isMaximal_1102 = erased
-- Axiom.Set._.listing
d_listing_1104 ::
  T_Theory_96 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1104 v0 = coe d_listing_218 (coe v0)
-- Axiom.Set._.map
d_map_1106 ::
  T_Theory_96 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1106 v0 v1 v2 = coe du_map_400 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_1108 ::
  T_Theory_96 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1108 v0 v1 v2 v3 = coe du_mapPartial_578 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_1110 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1110 ~v0 = du_maximal'45'unique_1110
du_maximal'45'unique_1110 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1110 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_362 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_1112 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1112 ~v0 = du_maximal'45''8838'_1112
du_maximal'45''8838'_1112 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1112 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_358 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_1114 ::
  T_Theory_96 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1114 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_474 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_1116 ::
  T_Theory_96 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1116 v0 = coe d_replacement_210 (coe v0)
-- Axiom.Set._.singleton
d_singleton_1118 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny
d_singleton_1118 v0 v1 v2 = coe du_singleton_450 (coe v0) v2
-- Axiom.Set._.sp
d_sp_1120 :: T_Theory_96 -> T_SpecProperty_48
d_sp_1120 v0 = coe d_sp_164 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_1122 ::
  T_Theory_96 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1122 v0
  = coe d_sp'45''172'_70 (coe d_sp_164 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_1124 ::
  T_Theory_96 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1124 v0
  = coe d_sp'45''8728'_68 (coe d_sp_164 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_1126 :: T_Theory_96 -> () -> ()
d_spec'45''8712'_1126 = erased
-- Axiom.Set._.specProperty
d_specProperty_1128 :: T_Theory_96 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1128 = erased
-- Axiom.Set._.specification
d_specification_1130 ::
  T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1130 v0 = coe d_specification_188 (coe v0)
-- Axiom.Set._.strictify
d_strictify_1132 ::
  T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1132 v0 v1 v2 v3 v4
  = coe du_strictify_380 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_1134 :: T_Theory_96 -> () -> AgdaAny -> ()
d_strongly'45'finite_1134 = erased
-- Axiom.Set._.unions
d_unions_1136 ::
  T_Theory_96 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1136 v0 = coe d_unions_198 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_1138 :: T_Theory_96 -> () -> AgdaAny -> ()
d_weakly'45'finite_1138 = erased
-- Axiom.Set._.∅
d_'8709'_1140 :: T_Theory_96 -> () -> AgdaAny
d_'8709'_1140 v0 v1 = coe du_'8709'_444 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1142 ::
  T_Theory_96 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1142 v0 v1
  = coe du_'8709''45'strongly'45'finite_446 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1144 ::
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'concatMap'738'_1144 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_522 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_1146 ::
  T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'filter_1146 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_428 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_1148 ::
  T_Theory_96 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'fromList_1148 v0 v1 v2 v3
  = coe du_'8712''45'fromList_434 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_1150 :: T_Theory_96 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1150 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_1152 ::
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'map_1152 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_408 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_1154 ::
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'mapPartial_1154 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_588 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_1156 ::
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1156 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_414 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_1158 ::
  T_Theory_96 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'partialToSet_1158 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_486 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_1160 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'singleton_1160 v0 v1 v2 v3
  = coe du_'8712''45'singleton_460 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_1162 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'unions_1162 v0 v1 v2 v3
  = coe du_'8712''45'unions_442 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_1164 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8746'_1164 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_690 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_1166 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1166 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1166 v5
du_'8801''8594''8712'_1166 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1166 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_1168 ::
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1168 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_606 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1170 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1170 ~v0
  = du_'8838''45'weakly'45'finite_1170
du_'8838''45'weakly'45'finite_1170 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1170 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_342 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_1172 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1172 v0 = coe du_'10100'_'10101'_454 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__1176 ::
  T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1176 v0 v1 v2 v3 v4
  = coe du__'8745'__706 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection._＼_
d__'65340'__1178 ::
  T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1178 v0 v1 v2 v3 v4
  = coe du__'65340'__732 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_1180 ::
  T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1180 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_1182 ::
  T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8745'_1182 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_714 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryⁱ.theory
d_theory_1190 :: T_Theory'8305'_1052 -> T_Theory_96
d_theory_1190 v0
  = case coe v0 of
      C_constructor_1326 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryⁱ._._Preservesˢ_
d__Preserves'738'__1194 ::
  T_Theory'8305'_1052 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1194 = erased
-- Axiom.Set.Theoryⁱ._._Preservesˢ₂_
d__Preserves'738''8322'__1196 ::
  T_Theory'8305'_1052 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1196 = erased
-- Axiom.Set.Theoryⁱ._._∈_
d__'8712'__1198 ::
  T_Theory'8305'_1052 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1198 = erased
-- Axiom.Set.Theoryⁱ._._∉_
d__'8713'__1200 ::
  T_Theory'8305'_1052 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1200 = erased
-- Axiom.Set.Theoryⁱ._._∪_
d__'8746'__1202 ::
  T_Theory'8305'_1052 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1202 v0 v1 v2 v3
  = coe du__'8746'__682 (coe d_theory_1190 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._._≡ᵉ_
d__'8801''7497'__1204 ::
  T_Theory'8305'_1052 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1204 = erased
-- Axiom.Set.Theoryⁱ._._≡ᵉ'_
d__'8801''7497'''__1206 ::
  T_Theory'8305'_1052 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1206 = erased
-- Axiom.Set.Theoryⁱ._._⊆_
d__'8838'__1208 ::
  T_Theory'8305'_1052 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1208 = erased
-- Axiom.Set.Theoryⁱ._.All
d_All_1210 ::
  T_Theory'8305'_1052 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1210 = erased
-- Axiom.Set.Theoryⁱ._.Any
d_Any_1212 ::
  T_Theory'8305'_1052 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1212 = erased
-- Axiom.Set.Theoryⁱ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1214 ::
  T_Theory'8305'_1052 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1214 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1214
du_DecEq'8743'finite'8658'strongly'45'finite_1214 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1214 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_320 v1 v3
-- Axiom.Set.Theoryⁱ._.FinSet
d_FinSet_1216 :: T_Theory'8305'_1052 -> () -> ()
d_FinSet_1216 = erased
-- Axiom.Set.Theoryⁱ._.Set
d_Set_1218 :: T_Theory'8305'_1052 -> () -> ()
d_Set_1218 = erased
-- Axiom.Set.Theoryⁱ._.Show-finite
d_Show'45'finite_1220 ::
  T_Theory'8305'_1052 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_1220 ~v0 = du_Show'45'finite_1220
du_Show'45'finite_1220 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_1220 v0 v1 = coe du_Show'45'finite_294 v1
-- Axiom.Set.Theoryⁱ._.binary-unions
d_binary'45'unions_1222 ::
  T_Theory'8305'_1052 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1222 v0 v1 v2 v3
  = coe du_binary'45'unions_646 (coe d_theory_1190 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.card
d_card_1224 ::
  T_Theory'8305'_1052 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1224 ~v0 = du_card_1224
du_card_1224 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1224 v0 v1 = coe du_card_338 v1
-- Axiom.Set.Theoryⁱ._.card-∅
d_card'45''8709'_1226 ::
  T_Theory'8305'_1052 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1226 = erased
-- Axiom.Set.Theoryⁱ._.concatMapˢ
d_concatMap'738'_1228 ::
  T_Theory'8305'_1052 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1228 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_510 (coe d_theory_1190 (coe v0)) v3 v4
-- Axiom.Set.Theoryⁱ._.disjoint
d_disjoint_1230 ::
  T_Theory'8305'_1052 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1230 = erased
-- Axiom.Set.Theoryⁱ._.filter
d_filter_1232 ::
  T_Theory'8305'_1052 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1232 v0 v1 v2
  = coe du_filter_422 (coe d_theory_1190 (coe v0))
-- Axiom.Set.Theoryⁱ._.finite
d_finite_1234 :: T_Theory'8305'_1052 -> () -> AgdaAny -> ()
d_finite_1234 = erased
-- Axiom.Set.Theoryⁱ._.fromList
d_fromList_1236 ::
  T_Theory'8305'_1052 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1236 v0 v1 v2
  = coe du_fromList_430 (coe d_theory_1190 (coe v0)) v2
-- Axiom.Set.Theoryⁱ._.isMaximal
d_isMaximal_1238 :: T_Theory'8305'_1052 -> () -> AgdaAny -> ()
d_isMaximal_1238 = erased
-- Axiom.Set.Theoryⁱ._.listing
d_listing_1240 ::
  T_Theory'8305'_1052 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1240 v0 = coe d_listing_218 (coe d_theory_1190 (coe v0))
-- Axiom.Set.Theoryⁱ._.map
d_map_1242 ::
  T_Theory'8305'_1052 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1242 v0 v1 v2 = coe du_map_400 (coe d_theory_1190 (coe v0))
-- Axiom.Set.Theoryⁱ._.mapPartial
d_mapPartial_1244 ::
  T_Theory'8305'_1052 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1244 v0 v1 v2 v3
  = coe du_mapPartial_578 (coe d_theory_1190 (coe v0)) v3
-- Axiom.Set.Theoryⁱ._.maximal-unique
d_maximal'45'unique_1246 ::
  T_Theory'8305'_1052 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1246 ~v0 = du_maximal'45'unique_1246
du_maximal'45'unique_1246 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1246 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_362 v3 v4
-- Axiom.Set.Theoryⁱ._.maximal-⊆
d_maximal'45''8838'_1248 ::
  T_Theory'8305'_1052 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1248 ~v0 = du_maximal'45''8838'_1248
du_maximal'45''8838'_1248 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1248 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_358 v3 v4
-- Axiom.Set.Theoryⁱ._.partialToSet
d_partialToSet_1250 ::
  T_Theory'8305'_1052 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1250 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_474 (coe d_theory_1190 (coe v0)) v4 v5
-- Axiom.Set.Theoryⁱ._.replacement
d_replacement_1252 ::
  T_Theory'8305'_1052 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1252 v0
  = coe d_replacement_210 (coe d_theory_1190 (coe v0))
-- Axiom.Set.Theoryⁱ._.singleton
d_singleton_1254 :: T_Theory'8305'_1052 -> () -> AgdaAny -> AgdaAny
d_singleton_1254 v0 v1 v2
  = coe du_singleton_450 (coe d_theory_1190 (coe v0)) v2
-- Axiom.Set.Theoryⁱ._.sp
d_sp_1256 :: T_Theory'8305'_1052 -> T_SpecProperty_48
d_sp_1256 v0 = coe d_sp_164 (coe d_theory_1190 (coe v0))
-- Axiom.Set.Theoryⁱ._.sp-¬
d_sp'45''172'_1258 ::
  T_Theory'8305'_1052 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1258 v0
  = coe d_sp'45''172'_70 (coe d_sp_164 (coe d_theory_1190 (coe v0)))
-- Axiom.Set.Theoryⁱ._.sp-∘
d_sp'45''8728'_1260 ::
  T_Theory'8305'_1052 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1260 v0
  = coe d_sp'45''8728'_68 (coe d_sp_164 (coe d_theory_1190 (coe v0)))
-- Axiom.Set.Theoryⁱ._.spec-∈
d_spec'45''8712'_1262 :: T_Theory'8305'_1052 -> () -> ()
d_spec'45''8712'_1262 = erased
-- Axiom.Set.Theoryⁱ._.specProperty
d_specProperty_1264 ::
  T_Theory'8305'_1052 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1264 = erased
-- Axiom.Set.Theoryⁱ._.specification
d_specification_1266 ::
  T_Theory'8305'_1052 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1266 v0
  = coe d_specification_188 (coe d_theory_1190 (coe v0))
-- Axiom.Set.Theoryⁱ._.strictify
d_strictify_1268 ::
  T_Theory'8305'_1052 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1268 v0 v1 v2 v3 v4
  = coe du_strictify_380 (coe d_theory_1190 (coe v0)) v3 v4
-- Axiom.Set.Theoryⁱ._.strongly-finite
d_strongly'45'finite_1270 ::
  T_Theory'8305'_1052 -> () -> AgdaAny -> ()
d_strongly'45'finite_1270 = erased
-- Axiom.Set.Theoryⁱ._.unions
d_unions_1272 ::
  T_Theory'8305'_1052 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1272 v0 = coe d_unions_198 (coe d_theory_1190 (coe v0))
-- Axiom.Set.Theoryⁱ._.weakly-finite
d_weakly'45'finite_1274 ::
  T_Theory'8305'_1052 -> () -> AgdaAny -> ()
d_weakly'45'finite_1274 = erased
-- Axiom.Set.Theoryⁱ._.∅
d_'8709'_1276 :: T_Theory'8305'_1052 -> () -> AgdaAny
d_'8709'_1276 v0 v1
  = coe du_'8709'_444 (coe d_theory_1190 (coe v0))
-- Axiom.Set.Theoryⁱ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1278 ::
  T_Theory'8305'_1052 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1278 v0 v1
  = coe
      du_'8709''45'strongly'45'finite_446 (coe d_theory_1190 (coe v0))
-- Axiom.Set.Theoryⁱ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1280 ::
  T_Theory'8305'_1052 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'concatMap'738'_1280 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_522 (coe d_theory_1190 (coe v0)) v3 v4
      v5
-- Axiom.Set.Theoryⁱ._.∈-filter
d_'8712''45'filter_1282 ::
  T_Theory'8305'_1052 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'filter_1282 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_428 (coe d_theory_1190 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-fromList
d_'8712''45'fromList_1284 ::
  T_Theory'8305'_1052 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'fromList_1284 v0 v1 v2 v3
  = coe du_'8712''45'fromList_434 (coe d_theory_1190 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-irrelevant
d_'8712''45'irrelevant_1286 ::
  T_Theory'8305'_1052 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1286 = erased
-- Axiom.Set.Theoryⁱ._.∈-map
d_'8712''45'map_1288 ::
  T_Theory'8305'_1052 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'map_1288 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_408 (coe d_theory_1190 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-mapPartial
d_'8712''45'mapPartial_1290 ::
  T_Theory'8305'_1052 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'mapPartial_1290 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'mapPartial_588 (coe d_theory_1190 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryⁱ._.∈-map′
d_'8712''45'map'8242'_1292 ::
  T_Theory'8305'_1052 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1292 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_414 (coe d_theory_1190 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryⁱ._.∈-partialToSet
d_'8712''45'partialToSet_1294 ::
  T_Theory'8305'_1052 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'partialToSet_1294 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_486 (coe d_theory_1190 (coe v0)) v5
-- Axiom.Set.Theoryⁱ._.∈-singleton
d_'8712''45'singleton_1296 ::
  T_Theory'8305'_1052 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'singleton_1296 v0 v1 v2 v3
  = coe du_'8712''45'singleton_460 (coe d_theory_1190 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-unions
d_'8712''45'unions_1298 ::
  T_Theory'8305'_1052 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'unions_1298 v0 v1 v2 v3
  = coe du_'8712''45'unions_442 (coe d_theory_1190 (coe v0)) v2 v3
-- Axiom.Set.Theoryⁱ._.∈-∪
d_'8712''45''8746'_1300 ::
  T_Theory'8305'_1052 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8746'_1300 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_690 (coe d_theory_1190 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryⁱ._.≡→∈
d_'8801''8594''8712'_1302 ::
  T_Theory'8305'_1052 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1302 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1302 v5
du_'8801''8594''8712'_1302 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1302 v0 = coe v0
-- Axiom.Set.Theoryⁱ._.⊆-mapPartial
d_'8838''45'mapPartial_1304 ::
  T_Theory'8305'_1052 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1304 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_606 (coe d_theory_1190 (coe v0)) v3 v4 v5
      v6
-- Axiom.Set.Theoryⁱ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1306 ::
  T_Theory'8305'_1052 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1306 ~v0
  = du_'8838''45'weakly'45'finite_1306
du_'8838''45'weakly'45'finite_1306 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1306 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_342 v3 v4
-- Axiom.Set.Theoryⁱ._.❴_❵
d_'10100'_'10101'_1308 ::
  T_Theory'8305'_1052 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1308 v0
  = coe du_'10100'_'10101'_454 (coe d_theory_1190 (coe v0))
-- Axiom.Set.Theoryⁱ._.Intersection._∩_
d__'8745'__1312 ::
  T_Theory'8305'_1052 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1312 v0 v1 v2 v3 v4
  = coe du__'8745'__706 (coe d_theory_1190 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryⁱ._.Intersection._＼_
d__'65340'__1314 ::
  T_Theory'8305'_1052 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1314 v0 v1 v2 v3 v4
  = coe du__'65340'__732 (coe d_theory_1190 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryⁱ._.Intersection.disjoint'
d_disjoint''_1316 ::
  T_Theory'8305'_1052 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1316 = erased
-- Axiom.Set.Theoryⁱ._.Intersection.∈-∩
d_'8712''45''8745'_1318 ::
  T_Theory'8305'_1052 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8745'_1318 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45''8745'_714 (coe d_theory_1190 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryⁱ.infinity
d_infinity_1324 ::
  T_Theory'8305'_1052 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infinity_1324 v0
  = case coe v0 of
      C_constructor_1326 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ
d_Theory'7496'_1328 = ()
data T_Theory'7496'_1328
  = C_constructor_1782 T_Theory_96
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
d__Preserves'738'__1334 ::
  T_Theory_96 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1334 = erased
-- Axiom.Set._._Preservesˢ₂_
d__Preserves'738''8322'__1336 ::
  T_Theory_96 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1336 = erased
-- Axiom.Set._._∈_
d__'8712'__1338 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1338 = erased
-- Axiom.Set._._∉_
d__'8713'__1340 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1340 = erased
-- Axiom.Set._._∪_
d__'8746'__1342 ::
  T_Theory_96 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1342 v0 v1 v2 v3 = coe du__'8746'__682 (coe v0) v2 v3
-- Axiom.Set._._≡ᵉ_
d__'8801''7497'__1344 ::
  T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1344 = erased
-- Axiom.Set._._≡ᵉ'_
d__'8801''7497'''__1346 ::
  T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1346 = erased
-- Axiom.Set._._⊆_
d__'8838'__1348 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1348 = erased
-- Axiom.Set._.All
d_All_1350 :: T_Theory_96 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1350 = erased
-- Axiom.Set._.Any
d_Any_1352 :: T_Theory_96 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1352 = erased
-- Axiom.Set._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1354 ::
  T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1354 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1354
du_DecEq'8743'finite'8658'strongly'45'finite_1354 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1354 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_320 v1 v3
-- Axiom.Set._.FinSet
d_FinSet_1356 :: T_Theory_96 -> () -> ()
d_FinSet_1356 = erased
-- Axiom.Set._.Set
d_Set_1358 :: T_Theory_96 -> () -> ()
d_Set_1358 = erased
-- Axiom.Set._.Show-finite
d_Show'45'finite_1360 ::
  T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_1360 ~v0 = du_Show'45'finite_1360
du_Show'45'finite_1360 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_1360 v0 v1 = coe du_Show'45'finite_294 v1
-- Axiom.Set._.binary-unions
d_binary'45'unions_1362 ::
  T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1362 v0 v1 v2 v3
  = coe du_binary'45'unions_646 (coe v0) v2 v3
-- Axiom.Set._.card
d_card_1364 ::
  T_Theory_96 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1364 ~v0 = du_card_1364
du_card_1364 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1364 v0 v1 = coe du_card_338 v1
-- Axiom.Set._.card-∅
d_card'45''8709'_1366 ::
  T_Theory_96 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1366 = erased
-- Axiom.Set._.concatMapˢ
d_concatMap'738'_1368 ::
  T_Theory_96 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1368 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_510 (coe v0) v3 v4
-- Axiom.Set._.disjoint
d_disjoint_1370 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1370 = erased
-- Axiom.Set._.filter
d_filter_1372 ::
  T_Theory_96 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1372 v0 v1 v2 = coe du_filter_422 (coe v0)
-- Axiom.Set._.finite
d_finite_1374 :: T_Theory_96 -> () -> AgdaAny -> ()
d_finite_1374 = erased
-- Axiom.Set._.fromList
d_fromList_1376 :: T_Theory_96 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1376 v0 v1 v2 = coe du_fromList_430 (coe v0) v2
-- Axiom.Set._.isMaximal
d_isMaximal_1378 :: T_Theory_96 -> () -> AgdaAny -> ()
d_isMaximal_1378 = erased
-- Axiom.Set._.listing
d_listing_1380 ::
  T_Theory_96 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1380 v0 = coe d_listing_218 (coe v0)
-- Axiom.Set._.map
d_map_1382 ::
  T_Theory_96 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1382 v0 v1 v2 = coe du_map_400 (coe v0)
-- Axiom.Set._.mapPartial
d_mapPartial_1384 ::
  T_Theory_96 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1384 v0 v1 v2 v3 = coe du_mapPartial_578 (coe v0) v3
-- Axiom.Set._.maximal-unique
d_maximal'45'unique_1386 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1386 ~v0 = du_maximal'45'unique_1386
du_maximal'45'unique_1386 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1386 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_362 v3 v4
-- Axiom.Set._.maximal-⊆
d_maximal'45''8838'_1388 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1388 ~v0 = du_maximal'45''8838'_1388
du_maximal'45''8838'_1388 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1388 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_358 v3 v4
-- Axiom.Set._.partialToSet
d_partialToSet_1390 ::
  T_Theory_96 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1390 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_474 (coe v0) v4 v5
-- Axiom.Set._.replacement
d_replacement_1392 ::
  T_Theory_96 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1392 v0 = coe d_replacement_210 (coe v0)
-- Axiom.Set._.singleton
d_singleton_1394 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny
d_singleton_1394 v0 v1 v2 = coe du_singleton_450 (coe v0) v2
-- Axiom.Set._.sp
d_sp_1396 :: T_Theory_96 -> T_SpecProperty_48
d_sp_1396 v0 = coe d_sp_164 (coe v0)
-- Axiom.Set._.sp-¬
d_sp'45''172'_1398 ::
  T_Theory_96 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1398 v0
  = coe d_sp'45''172'_70 (coe d_sp_164 (coe v0))
-- Axiom.Set._.sp-∘
d_sp'45''8728'_1400 ::
  T_Theory_96 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1400 v0
  = coe d_sp'45''8728'_68 (coe d_sp_164 (coe v0))
-- Axiom.Set._.spec-∈
d_spec'45''8712'_1402 :: T_Theory_96 -> () -> ()
d_spec'45''8712'_1402 = erased
-- Axiom.Set._.specProperty
d_specProperty_1404 :: T_Theory_96 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1404 = erased
-- Axiom.Set._.specification
d_specification_1406 ::
  T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1406 v0 = coe d_specification_188 (coe v0)
-- Axiom.Set._.strictify
d_strictify_1408 ::
  T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1408 v0 v1 v2 v3 v4
  = coe du_strictify_380 (coe v0) v3 v4
-- Axiom.Set._.strongly-finite
d_strongly'45'finite_1410 :: T_Theory_96 -> () -> AgdaAny -> ()
d_strongly'45'finite_1410 = erased
-- Axiom.Set._.unions
d_unions_1412 ::
  T_Theory_96 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1412 v0 = coe d_unions_198 (coe v0)
-- Axiom.Set._.weakly-finite
d_weakly'45'finite_1414 :: T_Theory_96 -> () -> AgdaAny -> ()
d_weakly'45'finite_1414 = erased
-- Axiom.Set._.∅
d_'8709'_1416 :: T_Theory_96 -> () -> AgdaAny
d_'8709'_1416 v0 v1 = coe du_'8709'_444 (coe v0)
-- Axiom.Set._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1418 ::
  T_Theory_96 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1418 v0 v1
  = coe du_'8709''45'strongly'45'finite_446 (coe v0)
-- Axiom.Set._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1420 ::
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'concatMap'738'_1420 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'concatMap'738'_522 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-filter
d_'8712''45'filter_1422 ::
  T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'filter_1422 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_428 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-fromList
d_'8712''45'fromList_1424 ::
  T_Theory_96 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'fromList_1424 v0 v1 v2 v3
  = coe du_'8712''45'fromList_434 (coe v0) v2 v3
-- Axiom.Set._.∈-irrelevant
d_'8712''45'irrelevant_1426 :: T_Theory_96 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1426 = erased
-- Axiom.Set._.∈-map
d_'8712''45'map_1428 ::
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'map_1428 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_408 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-mapPartial
d_'8712''45'mapPartial_1430 ::
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'mapPartial_1430 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_588 (coe v0) v3 v4 v5
-- Axiom.Set._.∈-map′
d_'8712''45'map'8242'_1432 ::
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1432 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'map'8242'_414 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.∈-partialToSet
d_'8712''45'partialToSet_1434 ::
  T_Theory_96 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'partialToSet_1434 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_486 (coe v0) v5
-- Axiom.Set._.∈-singleton
d_'8712''45'singleton_1436 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'singleton_1436 v0 v1 v2 v3
  = coe du_'8712''45'singleton_460 (coe v0) v2 v3
-- Axiom.Set._.∈-unions
d_'8712''45'unions_1438 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'unions_1438 v0 v1 v2 v3
  = coe du_'8712''45'unions_442 (coe v0) v2 v3
-- Axiom.Set._.∈-∪
d_'8712''45''8746'_1440 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8746'_1440 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_690 (coe v0) v2 v3 v4
-- Axiom.Set._.≡→∈
d_'8801''8594''8712'_1442 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1442 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1442 v5
du_'8801''8594''8712'_1442 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1442 v0 = coe v0
-- Axiom.Set._.⊆-mapPartial
d_'8838''45'mapPartial_1444 ::
  T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1444 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8838''45'mapPartial_606 (coe v0) v3 v4 v5 v6
-- Axiom.Set._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1446 ::
  T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1446 ~v0
  = du_'8838''45'weakly'45'finite_1446
du_'8838''45'weakly'45'finite_1446 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1446 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_342 v3 v4
-- Axiom.Set._.❴_❵
d_'10100'_'10101'_1448 :: T_Theory_96 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1448 v0 = coe du_'10100'_'10101'_454 (coe v0)
-- Axiom.Set._.Intersection._∩_
d__'8745'__1452 ::
  T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1452 v0 v1 v2 v3 v4
  = coe du__'8745'__706 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection._＼_
d__'65340'__1454 ::
  T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1454 v0 v1 v2 v3 v4
  = coe du__'65340'__732 (coe v0) v2 v3 v4
-- Axiom.Set._.Intersection.disjoint'
d_disjoint''_1456 ::
  T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1456 = erased
-- Axiom.Set._.Intersection.∈-∩
d_'8712''45''8745'_1458 ::
  T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8745'_1458 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_714 (coe v0) v2 v3 v4 v5
-- Axiom.Set.Theoryᵈ.th
d_th_1480 :: T_Theory'7496'_1328 -> T_Theory_96
d_th_1480 v0
  = case coe v0 of
      C_constructor_1782 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._._Preservesˢ_
d__Preserves'738'__1484 ::
  T_Theory'7496'_1328 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738'__1484 = erased
-- Axiom.Set.Theoryᵈ._._Preservesˢ₂_
d__Preserves'738''8322'__1486 ::
  T_Theory'7496'_1328 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__1486 = erased
-- Axiom.Set.Theoryᵈ._._∈_
d__'8712'__1488 ::
  T_Theory'7496'_1328 -> () -> AgdaAny -> AgdaAny -> ()
d__'8712'__1488 = erased
-- Axiom.Set.Theoryᵈ._._∉_
d__'8713'__1490 ::
  T_Theory'7496'_1328 -> () -> AgdaAny -> AgdaAny -> ()
d__'8713'__1490 = erased
-- Axiom.Set.Theoryᵈ._._∪_
d__'8746'__1492 ::
  T_Theory'7496'_1328 -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__1492 v0 v1 v2 v3
  = coe du__'8746'__682 (coe d_th_1480 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._._≡ᵉ_
d__'8801''7497'__1494 ::
  T_Theory'7496'_1328 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__1494 = erased
-- Axiom.Set.Theoryᵈ._._≡ᵉ'_
d__'8801''7497'''__1496 ::
  T_Theory'7496'_1328 -> () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__1496 = erased
-- Axiom.Set.Theoryᵈ._._⊆_
d__'8838'__1498 ::
  T_Theory'7496'_1328 -> () -> AgdaAny -> AgdaAny -> ()
d__'8838'__1498 = erased
-- Axiom.Set.Theoryᵈ._.All
d_All_1500 ::
  T_Theory'7496'_1328 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All_1500 = erased
-- Axiom.Set.Theoryᵈ._.Any
d_Any_1502 ::
  T_Theory'7496'_1328 -> () -> (AgdaAny -> ()) -> AgdaAny -> ()
d_Any_1502 = erased
-- Axiom.Set.Theoryᵈ._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_1504 ::
  T_Theory'7496'_1328 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_1504 ~v0
  = du_DecEq'8743'finite'8658'strongly'45'finite_1504
du_DecEq'8743'finite'8658'strongly'45'finite_1504 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_DecEq'8743'finite'8658'strongly'45'finite_1504 v0 v1 v2 v3
  = coe du_DecEq'8743'finite'8658'strongly'45'finite_320 v1 v3
-- Axiom.Set.Theoryᵈ._.FinSet
d_FinSet_1506 :: T_Theory'7496'_1328 -> () -> ()
d_FinSet_1506 = erased
-- Axiom.Set.Theoryᵈ._.Set
d_Set_1508 :: T_Theory'7496'_1328 -> () -> ()
d_Set_1508 = erased
-- Axiom.Set.Theoryᵈ._.Show-finite
d_Show'45'finite_1510 ::
  T_Theory'7496'_1328 ->
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_1510 ~v0 = du_Show'45'finite_1510
du_Show'45'finite_1510 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'finite_1510 v0 v1 = coe du_Show'45'finite_294 v1
-- Axiom.Set.Theoryᵈ._.binary-unions
d_binary'45'unions_1512 ::
  T_Theory'7496'_1328 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_1512 v0 v1 v2 v3
  = coe du_binary'45'unions_646 (coe d_th_1480 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.card
d_card_1514 ::
  T_Theory'7496'_1328 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_1514 ~v0 = du_card_1514
du_card_1514 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_1514 v0 v1 = coe du_card_338 v1
-- Axiom.Set.Theoryᵈ._.card-∅
d_card'45''8709'_1516 ::
  T_Theory'7496'_1328 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_1516 = erased
-- Axiom.Set.Theoryᵈ._.concatMapˢ
d_concatMap'738'_1518 ::
  T_Theory'7496'_1328 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_concatMap'738'_1518 v0 v1 v2 v3 v4
  = coe du_concatMap'738'_510 (coe d_th_1480 (coe v0)) v3 v4
-- Axiom.Set.Theoryᵈ._.disjoint
d_disjoint_1520 ::
  T_Theory'7496'_1328 -> () -> AgdaAny -> AgdaAny -> ()
d_disjoint_1520 = erased
-- Axiom.Set.Theoryᵈ._.filter
d_filter_1522 ::
  T_Theory'7496'_1328 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_1522 v0 v1 v2 = coe du_filter_422 (coe d_th_1480 (coe v0))
-- Axiom.Set.Theoryᵈ._.finite
d_finite_1524 :: T_Theory'7496'_1328 -> () -> AgdaAny -> ()
d_finite_1524 = erased
-- Axiom.Set.Theoryᵈ._.fromList
d_fromList_1526 ::
  T_Theory'7496'_1328 -> () -> [AgdaAny] -> AgdaAny
d_fromList_1526 v0 v1 v2
  = coe du_fromList_430 (coe d_th_1480 (coe v0)) v2
-- Axiom.Set.Theoryᵈ._.isMaximal
d_isMaximal_1528 :: T_Theory'7496'_1328 -> () -> AgdaAny -> ()
d_isMaximal_1528 = erased
-- Axiom.Set.Theoryᵈ._.listing
d_listing_1530 ::
  T_Theory'7496'_1328 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_1530 v0 = coe d_listing_218 (coe d_th_1480 (coe v0))
-- Axiom.Set.Theoryᵈ._.map
d_map_1532 ::
  T_Theory'7496'_1328 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_1532 v0 v1 v2 = coe du_map_400 (coe d_th_1480 (coe v0))
-- Axiom.Set.Theoryᵈ._.mapPartial
d_mapPartial_1534 ::
  T_Theory'7496'_1328 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_1534 v0 v1 v2 v3
  = coe du_mapPartial_578 (coe d_th_1480 (coe v0)) v3
-- Axiom.Set.Theoryᵈ._.maximal-unique
d_maximal'45'unique_1536 ::
  T_Theory'7496'_1328 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_1536 ~v0 = du_maximal'45'unique_1536
du_maximal'45'unique_1536 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_maximal'45'unique_1536 v0 v1 v2 v3 v4
  = coe du_maximal'45'unique_362 v3 v4
-- Axiom.Set.Theoryᵈ._.maximal-⊆
d_maximal'45''8838'_1538 ::
  T_Theory'7496'_1328 ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_maximal'45''8838'_1538 ~v0 = du_maximal'45''8838'_1538
du_maximal'45''8838'_1538 ::
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_maximal'45''8838'_1538 v0 v1 v2 v3 v4 v5
  = coe du_maximal'45''8838'_358 v3 v4
-- Axiom.Set.Theoryᵈ._.partialToSet
d_partialToSet_1540 ::
  T_Theory'7496'_1328 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_partialToSet_1540 v0 v1 v2 v3 v4 v5
  = coe du_partialToSet_474 (coe d_th_1480 (coe v0)) v4 v5
-- Axiom.Set.Theoryᵈ._.replacement
d_replacement_1542 ::
  T_Theory'7496'_1328 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_1542 v0
  = coe d_replacement_210 (coe d_th_1480 (coe v0))
-- Axiom.Set.Theoryᵈ._.singleton
d_singleton_1544 :: T_Theory'7496'_1328 -> () -> AgdaAny -> AgdaAny
d_singleton_1544 v0 v1 v2
  = coe du_singleton_450 (coe d_th_1480 (coe v0)) v2
-- Axiom.Set.Theoryᵈ._.sp
d_sp_1546 :: T_Theory'7496'_1328 -> T_SpecProperty_48
d_sp_1546 v0 = coe d_sp_164 (coe d_th_1480 (coe v0))
-- Axiom.Set.Theoryᵈ._.sp-¬
d_sp'45''172'_1548 ::
  T_Theory'7496'_1328 -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_sp'45''172'_1548 v0
  = coe d_sp'45''172'_70 (coe d_sp_164 (coe d_th_1480 (coe v0)))
-- Axiom.Set.Theoryᵈ._.sp-∘
d_sp'45''8728'_1550 ::
  T_Theory'7496'_1328 ->
  () ->
  (AgdaAny -> ()) -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_sp'45''8728'_1550 v0
  = coe d_sp'45''8728'_68 (coe d_sp_164 (coe d_th_1480 (coe v0)))
-- Axiom.Set.Theoryᵈ._.spec-∈
d_spec'45''8712'_1552 :: T_Theory'7496'_1328 -> () -> ()
d_spec'45''8712'_1552 = erased
-- Axiom.Set.Theoryᵈ._.specProperty
d_specProperty_1554 ::
  T_Theory'7496'_1328 -> () -> (AgdaAny -> ()) -> ()
d_specProperty_1554 = erased
-- Axiom.Set.Theoryᵈ._.specification
d_specification_1556 ::
  T_Theory'7496'_1328 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_1556 v0
  = coe d_specification_188 (coe d_th_1480 (coe v0))
-- Axiom.Set.Theoryᵈ._.strictify
d_strictify_1558 ::
  T_Theory'7496'_1328 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_1558 v0 v1 v2 v3 v4
  = coe du_strictify_380 (coe d_th_1480 (coe v0)) v3 v4
-- Axiom.Set.Theoryᵈ._.strongly-finite
d_strongly'45'finite_1560 ::
  T_Theory'7496'_1328 -> () -> AgdaAny -> ()
d_strongly'45'finite_1560 = erased
-- Axiom.Set.Theoryᵈ._.unions
d_unions_1562 ::
  T_Theory'7496'_1328 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_1562 v0 = coe d_unions_198 (coe d_th_1480 (coe v0))
-- Axiom.Set.Theoryᵈ._.weakly-finite
d_weakly'45'finite_1564 ::
  T_Theory'7496'_1328 -> () -> AgdaAny -> ()
d_weakly'45'finite_1564 = erased
-- Axiom.Set.Theoryᵈ._.∅
d_'8709'_1566 :: T_Theory'7496'_1328 -> () -> AgdaAny
d_'8709'_1566 v0 v1 = coe du_'8709'_444 (coe d_th_1480 (coe v0))
-- Axiom.Set.Theoryᵈ._.∅-strongly-finite
d_'8709''45'strongly'45'finite_1568 ::
  T_Theory'7496'_1328 -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_1568 v0 v1
  = coe du_'8709''45'strongly'45'finite_446 (coe d_th_1480 (coe v0))
-- Axiom.Set.Theoryᵈ._.∈-concatMapˢ
d_'8712''45'concatMap'738'_1570 ::
  T_Theory'7496'_1328 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'concatMap'738'_1570 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'concatMap'738'_522 (coe d_th_1480 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-filter
d_'8712''45'filter_1572 ::
  T_Theory'7496'_1328 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'filter_1572 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'filter_428 (coe d_th_1480 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-fromList
d_'8712''45'fromList_1574 ::
  T_Theory'7496'_1328 ->
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'fromList_1574 v0 v1 v2 v3
  = coe du_'8712''45'fromList_434 (coe d_th_1480 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-irrelevant
d_'8712''45'irrelevant_1576 ::
  T_Theory'7496'_1328 -> () -> AgdaAny -> ()
d_'8712''45'irrelevant_1576 = erased
-- Axiom.Set.Theoryᵈ._.∈-map
d_'8712''45'map_1578 ::
  T_Theory'7496'_1328 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'map_1578 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'map_408 (coe d_th_1480 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-mapPartial
d_'8712''45'mapPartial_1580 ::
  T_Theory'7496'_1328 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'mapPartial_1580 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45'mapPartial_588 (coe d_th_1480 (coe v0)) v3 v4 v5
-- Axiom.Set.Theoryᵈ._.∈-map′
d_'8712''45'map'8242'_1582 ::
  T_Theory'7496'_1328 ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8242'_1582 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8712''45'map'8242'_414 (coe d_th_1480 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᵈ._.∈-partialToSet
d_'8712''45'partialToSet_1584 ::
  T_Theory'7496'_1328 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'partialToSet_1584 v0 v1 v2 v3 v4 v5 v6
  = coe du_'8712''45'partialToSet_486 (coe d_th_1480 (coe v0)) v5
-- Axiom.Set.Theoryᵈ._.∈-singleton
d_'8712''45'singleton_1586 ::
  T_Theory'7496'_1328 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'singleton_1586 v0 v1 v2 v3
  = coe du_'8712''45'singleton_460 (coe d_th_1480 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-unions
d_'8712''45'unions_1588 ::
  T_Theory'7496'_1328 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'unions_1588 v0 v1 v2 v3
  = coe du_'8712''45'unions_442 (coe d_th_1480 (coe v0)) v2 v3
-- Axiom.Set.Theoryᵈ._.∈-∪
d_'8712''45''8746'_1590 ::
  T_Theory'7496'_1328 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8746'_1590 v0 v1 v2 v3 v4
  = coe du_'8712''45''8746'_690 (coe d_th_1480 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᵈ._.≡→∈
d_'8801''8594''8712'_1592 ::
  T_Theory'7496'_1328 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8594''8712'_1592 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''8594''8712'_1592 v5
du_'8801''8594''8712'_1592 :: AgdaAny -> AgdaAny
du_'8801''8594''8712'_1592 v0 = coe v0
-- Axiom.Set.Theoryᵈ._.⊆-mapPartial
d_'8838''45'mapPartial_1594 ::
  T_Theory'7496'_1328 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'mapPartial_1594 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'8838''45'mapPartial_606 (coe d_th_1480 (coe v0)) v3 v4 v5 v6
-- Axiom.Set.Theoryᵈ._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_1596 ::
  T_Theory'7496'_1328 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_1596 ~v0
  = du_'8838''45'weakly'45'finite_1596
du_'8838''45'weakly'45'finite_1596 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'weakly'45'finite_1596 v0 v1 v2 v3 v4
  = coe du_'8838''45'weakly'45'finite_342 v3 v4
-- Axiom.Set.Theoryᵈ._.❴_❵
d_'10100'_'10101'_1598 ::
  T_Theory'7496'_1328 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_1598 v0
  = coe du_'10100'_'10101'_454 (coe d_th_1480 (coe v0))
-- Axiom.Set.Theoryᵈ._.Intersection._∩_
d__'8745'__1602 ::
  T_Theory'7496'_1328 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__1602 v0 v1 v2 v3 v4
  = coe du__'8745'__706 (coe d_th_1480 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᵈ._.Intersection._＼_
d__'65340'__1604 ::
  T_Theory'7496'_1328 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'65340'__1604 v0 v1 v2 v3 v4
  = coe du__'65340'__732 (coe d_th_1480 (coe v0)) v2 v3 v4
-- Axiom.Set.Theoryᵈ._.Intersection.disjoint'
d_disjoint''_1606 ::
  T_Theory'7496'_1328 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_1606 = erased
-- Axiom.Set.Theoryᵈ._.Intersection.∈-∩
d_'8712''45''8745'_1608 ::
  T_Theory'7496'_1328 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8745'_1608 v0 v1 v2 v3 v4 v5
  = coe du_'8712''45''8745'_714 (coe d_th_1480 (coe v0)) v2 v3 v4 v5
-- Axiom.Set.Theoryᵈ.∈-sp
d_'8712''45'sp_1610 ::
  T_Theory'7496'_1328 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
d_'8712''45'sp_1610 v0
  = case coe v0 of
      C_constructor_1782 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._∈?_
d__'8712''63'__1612 ::
  T_Theory'7496'_1328 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8712''63'__1612 v0
  = case coe v0 of
      C_constructor_1782 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ.all?
d_all'63'_1620 ::
  T_Theory'7496'_1328 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_all'63'_1620 v0
  = case coe v0 of
      C_constructor_1782 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ.any?
d_any'63'_1628 ::
  T_Theory'7496'_1328 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63'_1628 v0
  = case coe v0 of
      C_constructor_1782 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Theoryᵈ._._.Dec-Allˢ
d_Dec'45'All'738'_1644 ::
  T_Theory'7496'_1328 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'All'738'_1644 v0 ~v1 ~v2 v3 v4
  = du_Dec'45'All'738'_1644 v0 v3 v4
du_Dec'45'All'738'_1644 ::
  T_Theory'7496'_1328 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'All'738'_1644 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
      (coe
         (\ v3 ->
            coe
              d_all'63'_1620 v0 erased erased
              (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72 (coe v1))
              v3))
      (coe v2)
-- Axiom.Set.Theoryᵈ._._.Dec-Anyˢ
d_Dec'45'Any'738'_1648 ::
  T_Theory'7496'_1328 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'Any'738'_1648 v0 ~v1 ~v2 v3 v4
  = du_Dec'45'Any'738'_1648 v0 v3 v4
du_Dec'45'Any'738'_1648 ::
  T_Theory'7496'_1328 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'Any'738'_1648 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
      (coe
         d_any'63'_1628 v0 erased erased
         (coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72 (coe v1)))
      (coe v2)
-- Axiom.Set.Theoryᵈ._._.allᵇ
d_all'7495'_1658 ::
  T_Theory'7496'_1328 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
d_all'7495'_1658 v0 ~v1 ~v2 v3 v4 = du_all'7495'_1658 v0 v3 v4
du_all'7495'_1658 ::
  T_Theory'7496'_1328 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
du_all'7495'_1658 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_140 ()
      erased (coe d_all'63'_1620 v0 erased erased v1 v2)
-- Axiom.Set.Theoryᵈ._._.anyᵇ
d_any'7495'_1662 ::
  T_Theory'7496'_1328 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
d_any'7495'_1662 v0 ~v1 ~v2 v3 v4 = du_any'7495'_1662 v0 v3 v4
du_any'7495'_1662 ::
  T_Theory'7496'_1328 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> Bool
du_any'7495'_1662 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_140 ()
      erased (coe d_any'63'_1628 v0 erased erased v1 v2)
-- Axiom.Set.Theoryᵈ._._∈ᵇ_
d__'8712''7495'__1676 ::
  T_Theory'7496'_1328 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Bool
d__'8712''7495'__1676 v0 ~v1 v2 v3 v4
  = du__'8712''7495'__1676 v0 v2 v3 v4
du__'8712''7495'__1676 ::
  T_Theory'7496'_1328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Bool
du__'8712''7495'__1676 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_140 ()
      erased (coe d__'8712''63'__1612 v0 erased v1 v2 v3)
-- Axiom.Set.Theoryᵈ._.Dec-∈
d_Dec'45''8712'_1682 ::
  T_Theory'7496'_1328 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8712'_1682 v0 ~v1 v2 v3 v4
  = du_Dec'45''8712'_1682 v0 v2 v3 v4
du_Dec'45''8712'_1682 ::
  T_Theory'7496'_1328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45''8712'_1682 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
      (coe d__'8712''63'__1612 v0 erased v1) (coe v2) (coe v3)
-- Axiom.Set.Theoryᵈ._.incl-set'
d_incl'45'set''_1694 ::
  T_Theory'7496'_1328 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set''_1694 v0 ~v1 v2 v3 v4
  = du_incl'45'set''_1694 v0 v2 v3 v4
du_incl'45'set''_1694 ::
  T_Theory'7496'_1328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incl'45'set''_1694 v0 v1 v2 v3
  = let v4 = coe d__'8712''63'__1612 v0 erased v1 v3 v2 in
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
d_incl'45'set_1720 ::
  T_Theory'7496'_1328 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
d_incl'45'set_1720 v0 ~v1 v2 v3 = du_incl'45'set_1720 v0 v2 v3
du_incl'45'set_1720 ::
  T_Theory'7496'_1328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
du_incl'45'set_1720 v0 v1 v2
  = coe
      du_mapPartial_578 (d_th_1480 (coe v0))
      (coe du_incl'45'set''_1694 (coe v0) (coe v1) (coe v2)) v2
-- Axiom.Set.Theoryᵈ._._.incl-set-proj₁⊆
d_incl'45'set'45'proj'8321''8838'_1730 ::
  T_Theory'7496'_1328 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_incl'45'set'45'proj'8321''8838'_1730 v0 ~v1 v2 v3 v4 v5
  = du_incl'45'set'45'proj'8321''8838'_1730 v0 v2 v3 v4 v5
du_incl'45'set'45'proj'8321''8838'_1730 ::
  T_Theory'7496'_1328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_incl'45'set'45'proj'8321''8838'_1730 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    d_replacement_210 (d_th_1480 (coe v0)) erased erased
                    (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                    (coe du_incl'45'set_1720 (coe v0) (coe v1) (coe v2)))
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
d_incl'45'set'45'proj'8321''8839'_1742 ::
  T_Theory'7496'_1328 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_incl'45'set'45'proj'8321''8839'_1742 v0 ~v1 v2 v3 v4 v5
  = du_incl'45'set'45'proj'8321''8839'_1742 v0 v2 v3 v4 v5
du_incl'45'set'45'proj'8321''8839'_1742 ::
  T_Theory'7496'_1328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_incl'45'set'45'proj'8321''8839'_1742 v0 v1 v2 v3 v4
  = let v5 = coe d__'8712''63'__1612 v0 erased v1 v3 v2 in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
           -> if coe v6
                then case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                         -> coe
                              MAlonzo.Code.Function.Bundles.d_to_1868
                              (coe
                                 du_'8712''45'map_408 (coe d_th_1480 (coe v0))
                                 (coe
                                    du_mapPartial_578 (d_th_1480 (coe v0))
                                    (coe du_incl'45'set''_1694 (coe v0) (coe v1) (coe v2)) v2)
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
                                          du_'8712''45'mapPartial_588 (coe d_th_1480 (coe v0))
                                          (coe v2)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                             (coe v8))
                                          (coe du_incl'45'set''_1694 (coe v0) (coe v1) (coe v2)))
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
d_helper_1770 ::
  T_Theory'7496'_1328 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_helper_1770 = erased
-- Axiom.Set.Theoryᵈ._._.incl-set-proj₁
d_incl'45'set'45'proj'8321'_1780 ::
  T_Theory'7496'_1328 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set'45'proj'8321'_1780 v0 ~v1 v2 v3
  = du_incl'45'set'45'proj'8321'_1780 v0 v2 v3
du_incl'45'set'45'proj'8321'_1780 ::
  T_Theory'7496'_1328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incl'45'set'45'proj'8321'_1780 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_incl'45'set'45'proj'8321''8838'_1730 (coe v0) (coe v1) (coe v2))
      (coe
         du_incl'45'set'45'proj'8321''8839'_1742 (coe v0) (coe v1) (coe v2))
