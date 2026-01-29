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

module MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Bisimilarity where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma

-- Ledger.Conway.Conformance.Equivalence.Bisimilarity.Bisimilar
d_Bisimilar_22 a0 a1 a2 a3 a4 a5 = ()
data T_Bisimilar_22
  = C_constructor_96 (AgdaAny ->
                      AgdaAny ->
                      AgdaAny ->
                      AgdaAny ->
                      AgdaAny ->
                      AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                     (AgdaAny ->
                      AgdaAny ->
                      AgdaAny ->
                      AgdaAny ->
                      AgdaAny ->
                      AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Conway.Conformance.Equivalence.Bisimilarity.Bisimilar._≈_
d__'8776'__66 :: T_Bisimilar_22 -> AgdaAny -> AgdaAny -> ()
d__'8776'__66 = erased
-- Ledger.Conway.Conformance.Equivalence.Bisimilarity.Bisimilar.to
d_to_80 ::
  T_Bisimilar_22 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_to_80 v0
  = case coe v0 of
      C_constructor_96 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Bisimilarity.Bisimilar.from
d_from_94 ::
  T_Bisimilar_22 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_from_94 v0
  = case coe v0 of
      C_constructor_96 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
