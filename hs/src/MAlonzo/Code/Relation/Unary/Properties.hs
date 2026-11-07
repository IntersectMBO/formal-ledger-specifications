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

module MAlonzo.Code.Relation.Unary.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Relation.Unary.Properties.∅?
d_'8709''63'_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8709''63'_22 ~v0 ~v1 ~v2 = du_'8709''63'_22
du_'8709''63'_22 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'8709''63'_22
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
-- Relation.Unary.Properties.∅-Empty
d_'8709''45'Empty_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8709''45'Empty_24 = erased
-- Relation.Unary.Properties.∁∅-Universal
d_'8705''8709''45'Universal_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8705''8709''45'Universal_28 = erased
-- Relation.Unary.Properties.U?
d_U'63'_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_U'63'_34 ~v0 ~v1 ~v2 = du_U'63'_34
du_U'63'_34 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_U'63'_34
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      (coe
         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Relation.Unary.Properties.U-Universal
d_U'45'Universal_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_U'45'Universal_36 ~v0 ~v1 ~v2 = du_U'45'Universal_36
du_U'45'Universal_36 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_U'45'Universal_36 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Relation.Unary.Properties.∁U-Empty
d_'8705'U'45'Empty_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8705'U'45'Empty_40 = erased
-- Relation.Unary.Properties.¬∃⟨P⟩⇒Π[∁P]
d_'172''8707''10216'P'10217''8658'Π'91''8705'P'93'_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'172''8707''10216'P'10217''8658'Π'91''8705'P'93'_48 = erased
-- Relation.Unary.Properties.¬∃⟨P⟩⇒∀[∁P]
d_'172''8707''10216'P'10217''8658''8704''91''8705'P'93'_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'172''8707''10216'P'10217''8658''8704''91''8705'P'93'_54 = erased
-- Relation.Unary.Properties.∃⟨∁P⟩⇒¬Π[P]
d_'8707''10216''8705'P'10217''8658''172'Π'91'P'93'_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8707''10216''8705'P'10217''8658''172'Π'91'P'93'_60 = erased
-- Relation.Unary.Properties.∃⟨∁P⟩⇒¬∀[P]
d_'8707''10216''8705'P'10217''8658''172''8704''91'P'93'_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8707''10216''8705'P'10217''8658''172''8704''91'P'93'_70 = erased
-- Relation.Unary.Properties.Π[∁P]⇒¬∃[P]
d_Π'91''8705'P'93''8658''172''8707''91'P'93'_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_Π'91''8705'P'93''8658''172''8707''91'P'93'_78 = erased
-- Relation.Unary.Properties.∀[∁P]⇒¬∃[P]
d_'8704''91''8705'P'93''8658''172''8707''91'P'93'_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8704''91''8705'P'93''8658''172''8707''91'P'93'_88 = erased
-- Relation.Unary.Properties.∅-⊆
d_'8709''45''8838'_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20 -> AgdaAny
d_'8709''45''8838'_96 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8709''45''8838'_96
du_'8709''45''8838'_96 :: AgdaAny
du_'8709''45''8838'_96 = MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties.⊆-U
d_'8838''45'U_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_'8838''45'U_102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_'8838''45'U_102
du_'8838''45'U_102 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_'8838''45'U_102 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Relation.Unary.Properties.⊆-refl
d_'8838''45'refl_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'refl_106 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8838''45'refl_106 v5
du_'8838''45'refl_106 :: AgdaAny -> AgdaAny
du_'8838''45'refl_106 v0 = coe v0
-- Relation.Unary.Properties.⊆-reflexive
d_'8838''45'reflexive_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'reflexive_110 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_'8838''45'reflexive_110 v6 v7
du_'8838''45'reflexive_110 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8838''45'reflexive_110 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3 -> coe v2 v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties.⊆-trans
d_'8838''45'trans_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'trans_116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10 v11
  = du_'8838''45'trans_116 v8 v9 v10 v11
du_'8838''45'trans_116 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8838''45'trans_116 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
-- Relation.Unary.Properties.⊆-antisym
d_'8838''45'antisym_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'antisym_124 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_'8838''45'antisym_124
du_'8838''45'antisym_124 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'antisym_124
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
-- Relation.Unary.Properties.⊆-min
d_'8838''45'min_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20 -> AgdaAny
d_'8838''45'min_126 ~v0 ~v1 ~v2 = du_'8838''45'min_126
du_'8838''45'min_126 ::
  (AgdaAny -> ()) ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20 -> AgdaAny
du_'8838''45'min_126 v0 v1 v2 = coe du_'8709''45''8838'_96
-- Relation.Unary.Properties.⊆-max
d_'8838''45'max_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_'8838''45'max_128 ~v0 ~v1 ~v2 = du_'8838''45'max_128
du_'8838''45'max_128 ::
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_'8838''45'max_128 v0 v1 v2 = coe du_'8838''45'U_102
-- Relation.Unary.Properties.⊂⇒⊆
d_'8834''8658''8838'_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8834''8658''8838'_130 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8834''8658''8838'_130 v6
du_'8834''8658''8838'_130 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8834''8658''8838'_130 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)
-- Relation.Unary.Properties.⊂-trans
d_'8834''45'trans_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8834''45'trans_132 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_'8834''45'trans_132 v8 v9
du_'8834''45'trans_132 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8834''45'trans_132 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe (\ v6 v7 -> coe v4 v6 (coe v2 v6 v7)))
                    (coe (\ v6 -> coe v5 (\ v7 v8 -> coe v2 v7 (coe v6 v7 v8))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties.⊂-⊆-trans
d_'8834''45''8838''45'trans_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8834''45''8838''45'trans_148 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
                                v9
  = du_'8834''45''8838''45'trans_148 v8 v9
du_'8834''45''8838''45'trans_148 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8834''45''8838''45'trans_148 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe (\ v4 v5 -> coe v1 v4 (coe v2 v4 v5)))
             (coe (\ v4 -> coe v3 (\ v5 v6 -> coe v4 v5 (coe v1 v5 v6))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties.⊆-⊂-trans
d_'8838''45''8834''45'trans_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45''8834''45'trans_162 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
                                v9
  = du_'8838''45''8834''45'trans_162 v8 v9
du_'8838''45''8834''45'trans_162 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45''8834''45'trans_162 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe (\ v4 v5 -> coe v2 v4 (coe v0 v4 v5)))
             (coe (\ v4 -> coe v3 (\ v5 v6 -> coe v0 v5 (coe v4 v5 v6))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties.⊂-respʳ-≐
d_'8834''45'resp'691''45''8784'_176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8834''45'resp'691''45''8784'_176 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
                                    v8
  = du_'8834''45'resp'691''45''8784'_176 v7 v8
du_'8834''45'resp'691''45''8784'_176 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8834''45'resp'691''45''8784'_176 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe du_'8834''45''8838''45'trans_148 (coe v1) (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties.⊂-respˡ-≐
d_'8834''45'resp'737''45''8784'_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8834''45'resp'737''45''8784'_182 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
                                    v8
  = du_'8834''45'resp'737''45''8784'_182 v7 v8
du_'8834''45'resp'737''45''8784'_182 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8834''45'resp'737''45''8784'_182 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe du_'8838''45''8834''45'trans_162 (coe v3) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties.⊂-resp-≐
d_'8834''45'resp'45''8784'_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8834''45'resp'45''8784'_188 ~v0 ~v1 ~v2
  = du_'8834''45'resp'45''8784'_188
du_'8834''45'resp'45''8784'_188 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8834''45'resp'45''8784'_188
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 v1 v2 v3 v4 ->
         coe du_'8834''45'resp'691''45''8784'_176 v3 v4)
      (\ v0 v1 v2 v3 v4 ->
         coe du_'8834''45'resp'737''45''8784'_182 v3 v4)
-- Relation.Unary.Properties.⊂-irrefl
d_'8834''45'irrefl_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8834''45'irrefl_190 = erased
-- Relation.Unary.Properties.⊂-antisym
d_'8834''45'antisym_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8834''45'antisym_196 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_'8834''45'antisym_196 v5 v6
du_'8834''45'antisym_196 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8834''45'antisym_196 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe du_'8838''45'antisym_124 v2 v4
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties.⊂-asym
d_'8834''45'asym_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8834''45'asym_202 = erased
-- Relation.Unary.Properties.∅-⊆′
d_'8709''45''8838''8242'_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20 -> AgdaAny
d_'8709''45''8838''8242'_208 = erased
-- Relation.Unary.Properties.⊆′-U
d_'8838''8242''45'U_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_'8838''8242''45'U_212 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8838''8242''45'U_212
du_'8838''8242''45'U_212 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_'8838''8242''45'U_212
  = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Relation.Unary.Properties.⊆′-refl
d_'8838''8242''45'refl_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8838''8242''45'refl_214 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8838''8242''45'refl_214 v5
du_'8838''8242''45'refl_214 :: AgdaAny -> AgdaAny
du_'8838''8242''45'refl_214 v0 = coe v0
-- Relation.Unary.Properties.⊆′-reflexive
d_'8838''8242''45'reflexive_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8838''8242''45'reflexive_220 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8838''8242''45'reflexive_220 v6
du_'8838''8242''45'reflexive_220 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8838''8242''45'reflexive_220 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties.⊆′-trans
d_'8838''8242''45'trans_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8838''8242''45'trans_226 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
                            v10 v11
  = du_'8838''8242''45'trans_226 v8 v9 v10 v11
du_'8838''8242''45'trans_226 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8838''8242''45'trans_226 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
-- Relation.Unary.Properties.⊆′-antisym
d_'8838''8242''45'antisym_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''8242''45'antisym_236 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_'8838''8242''45'antisym_236
du_'8838''8242''45'antisym_236 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''8242''45'antisym_236
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
-- Relation.Unary.Properties.⊆′-min
d_'8838''8242''45'min_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20 -> AgdaAny
d_'8838''8242''45'min_238 v0 ~v1 v2
  = du_'8838''8242''45'min_238 v0 v2
du_'8838''8242''45'min_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20 -> AgdaAny
du_'8838''8242''45'min_238 v0 v1
  = coe d_'8709''45''8838''8242'_208 v0 erased v1
-- Relation.Unary.Properties.⊆′-max
d_'8838''8242''45'max_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_'8838''8242''45'max_240 ~v0 ~v1 ~v2 = du_'8838''8242''45'max_240
du_'8838''8242''45'max_240 ::
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_'8838''8242''45'max_240 v0 v1 v2 = coe du_'8838''8242''45'U_212
-- Relation.Unary.Properties.⊂′⇒⊆′
d_'8834''8242''8658''8838''8242'_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8834''8242''8658''8838''8242'_242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8834''8242''8658''8838''8242'_242 v6
du_'8834''8242''8658''8838''8242'_242 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8834''8242''8658''8838''8242'_242 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)
-- Relation.Unary.Properties.⊂′-trans
d_'8834''8242''45'trans_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8834''8242''45'trans_244 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_'8834''8242''45'trans_244 v8 v9
du_'8834''8242''45'trans_244 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8834''8242''45'trans_244 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe du_'8838''8242''45'trans_226 (coe v2) (coe v4))
                    (coe
                       (\ v6 ->
                          coe v5 (coe du_'8838''8242''45'trans_226 (coe v6) (coe v2))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties.⊂′-⊆′-trans
d_'8834''8242''45''8838''8242''45'trans_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8834''8242''45''8838''8242''45'trans_256 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                            ~v6 ~v7 v8 v9
  = du_'8834''8242''45''8838''8242''45'trans_256 v8 v9
du_'8834''8242''45''8838''8242''45'trans_256 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8834''8242''45''8838''8242''45'trans_256 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe du_'8838''8242''45'trans_226 (coe v2) (coe v1))
             (coe
                (\ v4 ->
                   coe v3 (coe du_'8838''8242''45'trans_226 (coe v1) (coe v4))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties.⊆′-⊂′-trans
d_'8838''8242''45''8834''8242''45'trans_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''8242''45''8834''8242''45'trans_266 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                            ~v6 ~v7 v8 v9
  = du_'8838''8242''45''8834''8242''45'trans_266 v8 v9
du_'8838''8242''45''8834''8242''45'trans_266 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''8242''45''8834''8242''45'trans_266 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe du_'8838''8242''45'trans_226 (coe v0) (coe v2))
             (coe
                (\ v4 ->
                   coe v3 (coe du_'8838''8242''45'trans_226 (coe v4) (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties.⊂′-respʳ-≐′
d_'8834''8242''45'resp'691''45''8784''8242'_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8834''8242''45'resp'691''45''8784''8242'_276 ~v0 ~v1 ~v2 ~v3 ~v4
                                                ~v5 ~v6 v7 v8
  = du_'8834''8242''45'resp'691''45''8784''8242'_276 v7 v8
du_'8834''8242''45'resp'691''45''8784''8242'_276 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8834''8242''45'resp'691''45''8784''8242'_276 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             du_'8834''8242''45''8838''8242''45'trans_256 (coe v1) (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties.⊂′-respˡ-≐′
d_'8834''8242''45'resp'737''45''8784''8242'_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8834''8242''45'resp'737''45''8784''8242'_282 ~v0 ~v1 ~v2 ~v3 ~v4
                                                ~v5 ~v6 v7 v8
  = du_'8834''8242''45'resp'737''45''8784''8242'_282 v7 v8
du_'8834''8242''45'resp'737''45''8784''8242'_282 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8834''8242''45'resp'737''45''8784''8242'_282 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             du_'8838''8242''45''8834''8242''45'trans_266 (coe v3) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties.⊂′-resp-≐′
d_'8834''8242''45'resp'45''8784''8242'_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8834''8242''45'resp'45''8784''8242'_288 ~v0 ~v1 ~v2
  = du_'8834''8242''45'resp'45''8784''8242'_288
du_'8834''8242''45'resp'45''8784''8242'_288 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8834''8242''45'resp'45''8784''8242'_288
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 v1 v2 v3 v4 ->
         coe du_'8834''8242''45'resp'691''45''8784''8242'_276 v3 v4)
      (\ v0 v1 v2 v3 v4 ->
         coe du_'8834''8242''45'resp'737''45''8784''8242'_282 v3 v4)
-- Relation.Unary.Properties.⊂′-irrefl
d_'8834''8242''45'irrefl_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8834''8242''45'irrefl_290 = erased
-- Relation.Unary.Properties.⊂′-antisym
d_'8834''8242''45'antisym_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8834''8242''45'antisym_296 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_'8834''8242''45'antisym_296 v5 v6
du_'8834''8242''45'antisym_296 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8834''8242''45'antisym_296 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe du_'8838''8242''45'antisym_236 v2 v4
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties.⊆⇒⊆′
d_'8838''8658''8838''8242'_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8838''8658''8838''8242'_302 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_'8838''8658''8838''8242'_302 v6 v7 v8
du_'8838''8658''8838''8242'_302 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8838''8658''8838''8242'_302 v0 v1 v2 = coe v0 v1 v2
-- Relation.Unary.Properties.⊆′⇒⊆
d_'8838''8242''8658''8838'_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8838''8242''8658''8838'_308 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_'8838''8242''8658''8838'_308 v6 v7 v8
du_'8838''8242''8658''8838'_308 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8838''8242''8658''8838'_308 v0 v1 v2 = coe v0 v1 v2
-- Relation.Unary.Properties.⊂⇒⊂′
d_'8834''8658''8834''8242'_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8834''8658''8834''8242'_314 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8834''8658''8834''8242'_314
du_'8834''8658''8834''8242'_314 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8834''8658''8834''8242'_314
  = coe
      MAlonzo.Code.Data.Product.Base.du_map_128
      (coe du_'8838''8658''8838''8242'_302)
      (coe
         (\ v0 v1 v2 ->
            coe v1 (coe du_'8838''8242''8658''8838'_308 (coe v2))))
-- Relation.Unary.Properties.⊂′⇒⊂
d_'8834''8242''8658''8834'_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8834''8242''8658''8834'_318 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8834''8242''8658''8834'_318
du_'8834''8242''8658''8834'_318 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8834''8242''8658''8834'_318
  = coe
      MAlonzo.Code.Data.Product.Base.du_map_128
      (coe du_'8838''8242''8658''8838'_308)
      (coe
         (\ v0 v1 v2 ->
            coe v1 (coe du_'8838''8658''8838''8242'_302 (coe v2))))
-- Relation.Unary.Properties.≐-refl
d_'8784''45'refl_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8784''45'refl_322 ~v0 ~v1 ~v2 ~v3 = du_'8784''45'refl_322
du_'8784''45'refl_322 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8784''45'refl_322
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v0 v1 -> v1))
      (coe (\ v0 v1 -> v1))
-- Relation.Unary.Properties.≐-sym
d_'8784''45'sym_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8784''45'sym_324 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_'8784''45'sym_324
du_'8784''45'sym_324 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8784''45'sym_324
  = coe MAlonzo.Code.Data.Product.Base.du_swap_370
-- Relation.Unary.Properties.≐-trans
d_'8784''45'trans_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8784''45'trans_326 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
  = du_'8784''45'trans_326
du_'8784''45'trans_326 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8784''45'trans_326
  = coe
      MAlonzo.Code.Data.Product.Base.du_zip'8242'_312
      (coe (\ v0 v1 v2 v3 -> coe v1 v2 (coe v0 v2 v3)))
      (coe (\ v0 v1 v2 v3 -> coe v0 v2 (coe v1 v2 v3)))
-- Relation.Unary.Properties.≐′-refl
d_'8784''8242''45'refl_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8784''8242''45'refl_340 ~v0 ~v1 ~v2 ~v3
  = du_'8784''8242''45'refl_340
du_'8784''8242''45'refl_340 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8784''8242''45'refl_340
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v0 v1 -> v1))
      (coe (\ v0 v1 -> v1))
-- Relation.Unary.Properties.≐′-sym
d_'8784''8242''45'sym_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8784''8242''45'sym_346 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8784''8242''45'sym_346
du_'8784''8242''45'sym_346 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8784''8242''45'sym_346
  = coe MAlonzo.Code.Data.Product.Base.du_swap_370
-- Relation.Unary.Properties.≐′-trans
d_'8784''8242''45'trans_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8784''8242''45'trans_348 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
  = du_'8784''8242''45'trans_348
du_'8784''8242''45'trans_348 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8784''8242''45'trans_348
  = coe
      MAlonzo.Code.Data.Product.Base.du_zip'8242'_312
      (coe (\ v0 v1 v2 v3 -> coe v1 v2 (coe v0 v2 v3)))
      (coe (\ v0 v1 v2 v3 -> coe v0 v2 (coe v1 v2 v3)))
-- Relation.Unary.Properties.≐⇒≐′
d_'8784''8658''8784''8242'_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8784''8658''8784''8242'_366 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8784''8658''8784''8242'_366
du_'8784''8658''8784''8242'_366 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8784''8658''8784''8242'_366
  = coe
      MAlonzo.Code.Data.Product.Base.du_map_128
      (coe du_'8838''8658''8838''8242'_302)
      (coe (\ v0 -> coe du_'8838''8658''8838''8242'_302))
-- Relation.Unary.Properties.≐′⇒≐
d_'8784''8242''8658''8784'_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8784''8242''8658''8784'_368 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8784''8242''8658''8784'_368
du_'8784''8242''8658''8784'_368 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8784''8242''8658''8784'_368
  = coe
      MAlonzo.Code.Data.Product.Base.du_map_128
      (coe du_'8838''8242''8658''8838'_308)
      (coe (\ v0 -> coe du_'8838''8242''8658''8838'_308))
-- Relation.Unary.Properties.≬-symmetric
d_'8812''45'symmetric_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8812''45'symmetric_370 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8812''45'symmetric_370
du_'8812''45'symmetric_370 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8812''45'symmetric_370
  = coe
      MAlonzo.Code.Data.Product.Base.du_map'8322'_150
      (coe (\ v0 -> coe MAlonzo.Code.Data.Product.Base.du_swap_370))
-- Relation.Unary.Properties.⊥-symmetric
d_'8869''45'symmetric_372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8869''45'symmetric_372 = erased
-- Relation.Unary.Properties.≬-sym
d_'8812''45'sym_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8812''45'sym_376 ~v0 ~v1 ~v2 ~v3 ~v4 = du_'8812''45'sym_376
du_'8812''45'sym_376 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8812''45'sym_376 = coe du_'8812''45'symmetric_370
-- Relation.Unary.Properties.⊥-sym
d_'8869''45'sym_378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8869''45'sym_378 = erased
-- Relation.Unary.Properties.≬⇒¬⊥
d_'8812''8658''172''8869'_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8812''8658''172''8869'_380 = erased
-- Relation.Unary.Properties.⊥⇒¬≬
d_'8869''8658''172''8812'_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8869''8658''172''8812'_386 = erased
-- Relation.Unary.Properties._._map-⊢_
d__map'45''8866'__406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__map'45''8866'__406 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du__map'45''8866'__406 v8 v9 v10
du__map'45''8866'__406 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__map'45''8866'__406 v0 v1 v2 = coe v1 (coe v0 v2)
-- Relation.Unary.Properties._.⟨_⟩⊢⁻_
d_'10216'_'10217''8866''8315'__430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'10216'_'10217''8866''8315'__430 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   v8 v9 v10 v11
  = du_'10216'_'10217''8866''8315'__430 v8 v9 v10 v11
du_'10216'_'10217''8866''8315'__430 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'10216'_'10217''8866''8315'__430 v0 v1 v2 v3
  = coe
      v1 (coe v0 v2)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v3)))
-- Relation.Unary.Properties._.⟨_⟩⊢⁺_
d_'10216'_'10217''8866''8314'__436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'10216'_'10217''8866''8314'__436 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   ~v8 v9 ~v10 v11
  = du_'10216'_'10217''8866''8314'__436 v9 v11
du_'10216'_'10217''8866''8314'__436 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'10216'_'10217''8866''8314'__436 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5 -> coe v0 v2 v5
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties._.[_]⊢⁻_
d_'91'_'93''8866''8315'__442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'91'_'93''8866''8315'__442 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
                             v10 v11
  = du_'91'_'93''8866''8315'__442 v8 v9 v10 v11
du_'91'_'93''8866''8315'__442 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'91'_'93''8866''8315'__442 v0 v1 v2 v3
  = coe v1 (coe v0 v2) v3 v2 erased
-- Relation.Unary.Properties._.[_]⊢⁺_
d_'91'_'93''8866''8314'__448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'91'_'93''8866''8314'__448 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
                             ~v10 v11 v12 ~v13
  = du_'91'_'93''8866''8314'__448 v9 v11 v12
du_'91'_'93''8866''8314'__448 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'91'_'93''8866''8314'__448 v0 v1 v2 = coe v0 v2 v1
-- Relation.Unary.Properties._.map-⟨_⟩⊢_
d_map'45''10216'_'10217''8866'__472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''10216'_'10217''8866'__472 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                    v8 v9 ~v10
  = du_map'45''10216'_'10217''8866'__472 v8 v9
du_map'45''10216'_'10217''8866'__472 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_map'45''10216'_'10217''8866'__472 v0 v1
  = coe
      du_'10216'_'10217''8866''8314'__436
      (coe
         du_'8838''45'trans_116 (coe v1)
         (coe
            du_'10216'_'10217''8866''8315'__430 (coe v0)
            (coe (\ v2 v3 -> v3))))
-- Relation.Unary.Properties._._.⟨f⟩⊢Q
d_'10216'f'10217''8866'Q_480 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_'10216'f'10217''8866'Q_480 = erased
-- Relation.Unary.Properties._.map-[_]⊢_
d_map'45''91'_'93''8866'__482 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_map'45''91'_'93''8866'__482 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
                              ~v10
  = du_map'45''91'_'93''8866'__482 v8 v9
du_map'45''91'_'93''8866'__482 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_map'45''91'_'93''8866'__482 v0 v1 v2 v3 v4
  = coe
      du_'91'_'93''8866''8314'__448
      (coe
         du_'8838''45'trans_116
         (coe du_'91'_'93''8866''8315'__442 (coe v0) (coe (\ v5 v6 -> v6)))
         (coe v1))
      v2 v3
-- Relation.Unary.Properties._._.[f]⊢P
d_'91'f'93''8866'P_490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_'91'f'93''8866'P_490 = erased
-- Relation.Unary.Properties.map
d_map_496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_map_496 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 = du_map_496 v6 v7 v8
du_map_496 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_map_496 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
             (coe v3 v2) (coe v4 v2) (coe v1 v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties.∁?
d_'8705''63'_508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8705''63'_508 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_'8705''63'_508 v4 v5
du_'8705''63'_508 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'8705''63'_508 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_76
      (coe v0 v1)
-- Relation.Unary.Properties._∪?_
d__'8746''63'__518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8746''63'__518 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du__'8746''63'__518 v6 v7 v8
du__'8746''63'__518 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8746''63'__518 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''63'__96
      (coe v0 v2) (coe v1 v2)
-- Relation.Unary.Properties._∩?_
d__'8745''63'__530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8745''63'__530 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du__'8745''63'__530 v6 v7 v8
du__'8745''63'__530 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8745''63'__530 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''63'__84
      (coe v0 v2) (coe v1 v2)
-- Relation.Unary.Properties._×?_
d__'215''63'__542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'215''63'__542 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du__'215''63'__542 v8 v9 v10
du__'215''63'__542 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'215''63'__542 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''63'__84
             (coe v0 v3) (coe v1 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties._⊙?_
d__'8857''63'__556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8857''63'__556 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du__'8857''63'__556 v8 v9 v10
du__'8857''63'__556 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8857''63'__556 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''63'__96
             (coe v0 v3) (coe v1 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties._⊎?_
d__'8846''63'__570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8846''63'__570 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du__'8846''63'__570 v7 v8 v9
du__'8846''63'__570 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8846''63'__570 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3 -> coe v0 v3
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3 -> coe v1 v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties._~?
d__'126''63'_586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'126''63'_586 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du__'126''63'_586 v6 v7
du__'126''63'_586 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'126''63'_586 v0 v1
  = coe v0 (coe MAlonzo.Code.Data.Product.Base.du_swap_370 (coe v1))
-- Relation.Unary.Properties.does-≡
d_does'45''8801'_596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_does'45''8801'_596 = erased
-- Relation.Unary.Properties.does-≐
d_does'45''8784'_612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_does'45''8784'_612 = erased
-- Relation.Unary.Properties.U-irrelevant
d_U'45'irrelevant_618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_U'45'irrelevant_618 = erased
-- Relation.Unary.Properties.∁-irrelevant
d_'8705''45'irrelevant_626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8705''45'irrelevant_626 = erased
