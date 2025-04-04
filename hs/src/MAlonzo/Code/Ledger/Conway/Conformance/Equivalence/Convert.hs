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

module MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Unit

-- Ledger.Conway.Conformance.Equivalence.Convert._⊢_⭆ⁱ_
d__'8866'_'11078''8305'__16 a0 a1 a2 = ()
newtype T__'8866'_'11078''8305'__16
  = C__'8866'_'11078''8305'_'46'constructor_41 (AgdaAny ->
                                                AgdaAny -> AgdaAny)
-- Ledger.Conway.Conformance.Equivalence.Convert._⊢_⭆ⁱ_.convⁱ
d_conv'8305'_34 ::
  T__'8866'_'11078''8305'__16 -> AgdaAny -> AgdaAny -> AgdaAny
d_conv'8305'_34 v0
  = case coe v0 of
      C__'8866'_'11078''8305'_'46'constructor_41 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Convert._⊢conv_
d__'8866'conv__46 ::
  T__'8866'_'11078''8305'__16 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8866'conv__46 v0 = coe d_conv'8305'_34 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Convert._⊢_⭆_
d__'8866'_'11078'__56 :: () -> () -> () -> ()
d__'8866'_'11078'__56 = erased
-- Ledger.Conway.Conformance.Equivalence.Convert._⭆_
d__'11078'__72 :: () -> () -> ()
d__'11078'__72 = erased
-- Ledger.Conway.Conformance.Equivalence.Convert.conv
d_conv_84 ::
  () ->
  (MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T__'8866'_'11078''8305'__16 -> AgdaAny -> AgdaAny
d_conv_84 ~v0 ~v1 v2 v3 = du_conv_84 v2 v3
du_conv_84 :: T__'8866'_'11078''8305'__16 -> AgdaAny -> AgdaAny
du_conv_84 v0 v1
  = coe
      d_conv'8305'_34 v0 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) v1
