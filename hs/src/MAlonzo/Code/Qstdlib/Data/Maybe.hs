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

module MAlonzo.Code.Qstdlib.Data.Maybe where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.All
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Function.Bundles

-- stdlib.Data.Maybe.¬Is-just↔Is-nothing
d_'172'Is'45'just'8596'Is'45'nothing_10 ::
  () -> Maybe AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'172'Is'45'just'8596'Is'45'nothing_10 ~v0 v1
  = du_'172'Is'45'just'8596'Is'45'nothing_10 v1
du_'172'Is'45'just'8596'Is'45'nothing_10 ::
  Maybe AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'172'Is'45'just'8596'Is'45'nothing_10 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596'_2526
      (\ v1 -> coe du_to_26 (coe v0)) erased
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
-- stdlib.Data.Maybe._.from
d_from_20 ::
  () ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T_Any_18 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_from_20 = erased
-- stdlib.Data.Maybe._.to
d_to_26 ::
  () ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  (MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T_Any_18 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
d_to_26 ~v0 ~v1 v2 ~v3 = du_to_26 v2
du_to_26 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
du_to_26 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe MAlonzo.Code.Data.Maybe.Relation.Unary.All.C_nothing_32
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib.Data.Maybe._.to∘from≡id
d_to'8728'from'8801'id_34 ::
  () ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18 ->
  (MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T_Any_18 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_to'8728'from'8801'id_34 = erased
