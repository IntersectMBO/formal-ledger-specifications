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

module MAlonzo.Code.MetaPrelude where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base

-- MetaPrelude.lookupᵇ
d_lookup'7495'_6 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Bool) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> Maybe AgdaAny
d_lookup'7495'_6 ~v0 ~v1 v2 v3 v4 = du_lookup'7495'_6 v2 v3 v4
du_lookup'7495'_6 ::
  (AgdaAny -> AgdaAny -> Bool) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> Maybe AgdaAny
du_lookup'7495'_6 v0 v1 v2
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> coe
                    MAlonzo.Code.Data.Bool.Base.du_if_then_else__44 (coe v0 v5 v2)
                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v6))
                    (coe du_lookup'7495'_6 (coe v0) (coe v4) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- MetaPrelude.zipWithIndex
d_zipWithIndex_26 ::
  () ->
  () -> (Integer -> AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_zipWithIndex_26 ~v0 ~v1 v2 v3 = du_zipWithIndex_26 v2 v3
du_zipWithIndex_26 ::
  (Integer -> AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
du_zipWithIndex_26 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_zipWith_104 (coe v0)
      (coe
         MAlonzo.Code.Data.List.Base.d_upTo_418
         (coe MAlonzo.Code.Data.List.Base.du_length_284 v1))
      (coe v1)
-- MetaPrelude.enumerate
d_enumerate_34 ::
  () -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_enumerate_34 ~v0 = du_enumerate_34
du_enumerate_34 ::
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_enumerate_34
  = coe
      du_zipWithIndex_26
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
