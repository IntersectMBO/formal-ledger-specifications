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

module MAlonzo.Code.Algebra.Properties.CommutativeMonoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.CommutativeMonoid.invertibleˡ⇒invertibleʳ
d_invertible'737''8658'invertible'691'_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_invertible'737''8658'invertible'691'_86 ~v0 ~v1 v2 v3 v4
  = du_invertible'737''8658'invertible'691'_86 v2 v3 v4
du_invertible'737''8658'invertible'691'_86 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_invertible'737''8658'invertible'691'_86 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
             (coe
                MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isMagma_448
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                               (coe v0))))))
                (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 v1 v3)
                (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 v3 v1)
                (MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0))
                (coe
                   MAlonzo.Code.Algebra.Structures.d_comm_666
                   (MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844 (coe v0))
                   v1 v3)
                v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Properties.CommutativeMonoid.invertibleʳ⇒invertibleˡ
d_invertible'691''8658'invertible'737'_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_invertible'691''8658'invertible'737'_94 ~v0 ~v1 v2 v3 v4
  = du_invertible'691''8658'invertible'737'_94 v2 v3 v4
du_invertible'691''8658'invertible'737'_94 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_invertible'691''8658'invertible'737'_94 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
             (coe
                MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isMagma_448
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                               (coe v0))))))
                (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 v3 v1)
                (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__840 v0 v1 v3)
                (MAlonzo.Code.Algebra.Bundles.d_ε_842 (coe v0))
                (coe
                   MAlonzo.Code.Algebra.Structures.d_comm_666
                   (MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844 (coe v0))
                   v3 v1)
                v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Properties.CommutativeMonoid.invertibleˡ⇒invertible
d_invertible'737''8658'invertible_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_invertible'737''8658'invertible_102 ~v0 ~v1 v2 v3 v4
  = du_invertible'737''8658'invertible_102 v2 v3 v4
du_invertible'737''8658'invertible_102 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_invertible'737''8658'invertible_102 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      du_invertible'737''8658'invertible'691'_86 (coe v0) (coe v1)
                      (coe v2))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Properties.CommutativeMonoid.invertibleʳ⇒invertible
d_invertible'691''8658'invertible_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_invertible'691''8658'invertible_110 ~v0 ~v1 v2 v3 v4
  = du_invertible'691''8658'invertible_110 v2 v3 v4
du_invertible'691''8658'invertible_110 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_invertible'691''8658'invertible_110 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      du_invertible'691''8658'invertible'737'_94 (coe v0) (coe v1)
                      (coe v2)))
                (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
