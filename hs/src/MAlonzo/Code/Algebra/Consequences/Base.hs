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

module MAlonzo.Code.Algebra.Consequences.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Sum.Base

-- Algebra.Consequences.Base._.sel⇒idem
d_sel'8658'idem_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny
d_sel'8658'idem_20 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_sel'8658'idem_20 v5 v6
du_sel'8658'idem_20 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny
du_sel'8658'idem_20 v0 v1
  = coe MAlonzo.Code.Data.Sum.Base.du_reduce_76 (coe v0 v1 v1)
-- Algebra.Consequences.Base._.reflexive∧selfInverse⇒involutive
d_reflexive'8743'selfInverse'8658'involutive_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_reflexive'8743'selfInverse'8658'involutive_36 ~v0 ~v1 ~v2 v3 ~v4
                                                v5 v6 v7
  = du_reflexive'8743'selfInverse'8658'involutive_36 v3 v5 v6 v7
du_reflexive'8743'selfInverse'8658'involutive_36 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_reflexive'8743'selfInverse'8658'involutive_36 v0 v1 v2 v3
  = coe v2 v3 (coe v0 v3) (coe v1 (coe v0 v3))
-- Algebra.Consequences.Base.reflexive+selfInverse⇒involutive
d_reflexive'43'selfInverse'8658'involutive_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_reflexive'43'selfInverse'8658'involutive_42 ~v0 ~v1
  = du_reflexive'43'selfInverse'8658'involutive_42
du_reflexive'43'selfInverse'8658'involutive_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_reflexive'43'selfInverse'8658'involutive_42 v0 v1 v2 v3 v4 v5
  = coe du_reflexive'8743'selfInverse'8658'involutive_36 v1 v3 v4 v5
