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

module MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Data.Relation.Nullary.Decidable.Ext.map′⇔
d_map'8242''8660'_16 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_map'8242''8660'_16 ~v0 ~v1 ~v2 ~v3 v4 = du_map'8242''8660'_16 v4
du_map'8242''8660'_16 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_map'8242''8660'_16 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
         (coe MAlonzo.Code.Function.Bundles.d_to_1724 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_from_1726 (coe v0)))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
         (coe MAlonzo.Code.Function.Bundles.d_from_1726 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_to_1724 (coe v0)))
