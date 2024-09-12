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

module MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Membership.Propositional
import qualified MAlonzo.Code.Data.List.Membership.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties

-- Data.List.Membership.Propositional.Properties.Core.find-∈
d_find'45''8712'_26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_find'45''8712'_26 = erased
-- Data.List.Membership.Propositional.Properties.Core._.map∘find
d_map'8728'find_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'8728'find_56 = erased
-- Data.List.Membership.Propositional.Properties.Core._.find∘map
d_find'8728'map_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_find'8728'map_80 = erased
-- Data.List.Membership.Propositional.Properties.Core._.∃∈-Any
d_'8707''8712''45'Any_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8707''8712''45'Any_106 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_'8707''8712''45'Any_106 v4 v5
du_'8707''8712''45'Any_106 ::
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8707''8712''45'Any_106 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    MAlonzo.Code.Data.List.Membership.Propositional.du_lose_50 v2 v0 v4
                    v5
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Membership.Propositional.Properties.Core._.∃∈-Any∘find
d_'8707''8712''45'Any'8728'find_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8707''8712''45'Any'8728'find_116 = erased
-- Data.List.Membership.Propositional.Properties.Core._.find∘∃∈-Any
d_find'8728''8707''8712''45'Any_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_find'8728''8707''8712''45'Any_124 = erased
-- Data.List.Membership.Propositional.Properties.Core._.Any↔
d_Any'8596'_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_Any'8596'_144 ~v0 ~v1 ~v2 ~v3 v4 = du_Any'8596'_144 v4
du_Any'8596'_144 ::
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_Any'8596'_144 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2366
      (coe du_'8707''8712''45'Any_106 (coe v0))
      (coe
         MAlonzo.Code.Data.List.Membership.Setoid.du_find_84
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
         (coe v0))
-- Data.List.Membership.Propositional.Properties.Core.lose∘find
d_lose'8728'find_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lose'8728'find_152 = erased
-- Data.List.Membership.Propositional.Properties.Core.find∘lose
d_find'8728'lose_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_find'8728'lose_164 = erased
