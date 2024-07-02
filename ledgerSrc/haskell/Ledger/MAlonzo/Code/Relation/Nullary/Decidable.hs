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

module MAlonzo.Code.Relation.Nullary.Decidable where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Relation.Nullary.Decidable.map
d_map_18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_map_18 ~v0 ~v1 ~v2 ~v3 v4 = du_map_18 v4
du_map_18 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_map_18 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
      (coe MAlonzo.Code.Function.Bundles.d_to_1724 (coe v0))
-- Relation.Nullary.Decidable._.Eq₁._≈_
d__'8776'__114 ::
  T_GeneralizeTel_1843 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Injection_776 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__114 = erased
-- Relation.Nullary.Decidable._.Eq₂._≈_
d__'8776'__138 ::
  T_GeneralizeTel_1843 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Injection_776 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__138 = erased
-- Relation.Nullary.Decidable.via-injection
d_via'45'injection_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Injection_776 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_via'45'injection_160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_via'45'injection_160 v6 v7 v8 v9
du_via'45'injection_160 ::
  MAlonzo.Code.Function.Bundles.T_Injection_776 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_via'45'injection_160 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
      (coe MAlonzo.Code.Function.Bundles.d_injective_788 v0 v2 v3)
      (coe
         v1 (coe MAlonzo.Code.Function.Bundles.d_to_784 v0 v2)
         (coe MAlonzo.Code.Function.Bundles.d_to_784 v0 v3))
-- Relation.Nullary.Decidable.True-↔
d_True'45''8596'_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_True'45''8596'_238 ~v0 ~v1 v2 ~v3 = du_True'45''8596'_238 v2
du_True'45''8596'_238 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_True'45''8596'_238 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v1 v2
        -> if coe v1
             then coe
                    MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2364
                    (coe
                       (\ v3 ->
                          coe MAlonzo.Code.Relation.Nullary.Reflects.du_invert_38 (coe v2)))
                    (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
             else coe
                    seq (coe v2)
                    (coe
                       MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2364 erased
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.du_invert_38
                          (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.isYes≗does
d_isYes'8791'does_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isYes'8791'does_250 = erased
-- Relation.Nullary.Decidable.dec-true
d_dec'45'true_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_dec'45'true_254 = erased
-- Relation.Nullary.Decidable.dec-false
d_dec'45'false_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_dec'45'false_264 = erased
-- Relation.Nullary.Decidable.dec-yes
d_dec'45'yes_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dec'45'yes_276 ~v0 ~v1 v2 ~v3 = du_dec'45'yes_276 v2
du_dec'45'yes_276 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dec'45'yes_276 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v1 v2
        -> coe
             seq (coe v1)
             (case coe v2 of
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v3
                  -> coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) erased
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.dec-no
d_dec'45'no_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_dec'45'no_294 = erased
-- Relation.Nullary.Decidable.dec-yes-irr
d_dec'45'yes'45'irr_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_dec'45'yes'45'irr_308 = erased
-- Relation.Nullary.Decidable..generalizedField-a
d_'46'generalizedField'45'a_1835 ::
  T_GeneralizeTel_1843 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'a_1835 = MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable..generalizedField-ℓ₁
d_'46'generalizedField'45'ℓ'8321'_1837 ::
  T_GeneralizeTel_1843 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ'8321'_1837
  = MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable..generalizedField-b
d_'46'generalizedField'45'b_1839 ::
  T_GeneralizeTel_1843 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'b_1839 = MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable..generalizedField-ℓ₂
d_'46'generalizedField'45'ℓ'8322'_1841 ::
  T_GeneralizeTel_1843 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'ℓ'8322'_1841
  = MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.GeneralizeTel
d_GeneralizeTel_1843 = ()
data T_GeneralizeTel_1843
  = C_mkGeneralizeTel_1845 MAlonzo.Code.Agda.Primitive.T_Level_18
                           MAlonzo.Code.Agda.Primitive.T_Level_18
                           MAlonzo.Code.Agda.Primitive.T_Level_18
                           MAlonzo.Code.Agda.Primitive.T_Level_18
