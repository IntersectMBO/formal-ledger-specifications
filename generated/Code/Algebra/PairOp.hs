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

module MAlonzo.Code.Algebra.PairOp where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent

-- Algebra.PairOp._∙ᵖ_
d__'8729''7510'__12 ::
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8729''7510'__12 ~v0 ~v1 ~v2 v3 v4 v5
  = du__'8729''7510'__12 v3 v4 v5
du__'8729''7510'__12 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8729''7510'__12 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0 v3 v5)
                    (coe v0 v4 v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.PairOp._≈ᵖ_
d__'8776''7510'__22 ::
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8776''7510'__22 = erased
-- Algebra.PairOp.pairOpIdentityˡ
d_pairOpIdentity'737'_24 ::
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pairOpIdentity'737'_24 ~v0 v1 ~v2 ~v3 v4 v5
  = du_pairOpIdentity'737'_24 v1 v4 v5
du_pairOpIdentity'737'_24 ::
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pairOpIdentity'737'_24 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du_'215''45'refl_60
             (coe (\ v5 -> coe v1 v3)) (coe (\ v5 -> coe v1 v4))
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v0))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.PairOp.pairOpIdentityʳ
d_pairOpIdentity'691'_32 ::
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pairOpIdentity'691'_32 ~v0 v1 ~v2 ~v3 v4 v5
  = du_pairOpIdentity'691'_32 v1 v4 v5
du_pairOpIdentity'691'_32 ::
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pairOpIdentity'691'_32 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du_'215''45'refl_60
             (coe (\ v5 -> coe v1 v3)) (coe (\ v5 -> coe v1 v4))
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v0))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.PairOp.pairOpIdentity
d_pairOpIdentity_40 ::
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pairOpIdentity_40 ~v0 v1 ~v2 ~v3 v4 = du_pairOpIdentity_40 v1 v4
du_pairOpIdentity_40 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pairOpIdentity_40 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe du_pairOpIdentity'737'_24 (coe v0) (coe v2))
             (coe du_pairOpIdentity'691'_32 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.PairOp.pairOpAssoc
d_pairOpAssoc_46 ::
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pairOpAssoc_46 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_pairOpAssoc_46 v1 v4 v5 v6 v7
du_pairOpAssoc_46 ::
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pairOpAssoc_46 v0 v1 v2 v3 v4
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                      -> coe
                           MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du_'215''45'refl_60
                           (coe (\ v11 -> coe v1 v5 v7 v9)) (coe (\ v11 -> coe v1 v6 v8 v10))
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v0))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.PairOp.pairOpIsMonoid
d_pairOpIsMonoid_62 ::
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_pairOpIsMonoid_62 ~v0 v1 ~v2 ~v3 v4 = du_pairOpIsMonoid_62 v1 v4
du_pairOpIsMonoid_62 ::
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_pairOpIsMonoid_62 v0 v1
  = case coe v1 of
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873 v2 v3
        -> coe
             MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
             (coe
                MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10417
                (coe
                   MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1867
                   (coe
                      MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du_'215''45'isEquivalence_236
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2)))
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
                   (coe
                      (\ v4 v5 v6 v7 v8 v9 ->
                         coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
                              (MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
                              (MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v9))))))
                (coe
                   du_pairOpAssoc_46 (coe v0)
                   (coe MAlonzo.Code.Algebra.Structures.d_assoc_482 (coe v2))))
             (coe du_pairOpIdentity_40 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.PairOp.pairOpComm
d_pairOpComm_80 ::
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pairOpComm_80 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_pairOpComm_80 v1 v4 v5 v6
du_pairOpComm_80 ::
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pairOpComm_80 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du_'215''45'refl_60
                    (coe (\ v8 -> coe v1 v4 v6)) (coe (\ v8 -> coe v1 v5 v7))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v0))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.PairOp.pairOpRespectsComm
d_pairOpRespectsComm_92 ::
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_pairOpRespectsComm_92 ~v0 v1 ~v2 ~v3 v4
  = du_pairOpRespectsComm_92 v1 v4
du_pairOpRespectsComm_92 ::
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_pairOpRespectsComm_92 v0 v1
  = case coe v1 of
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695 v2 v3
        -> coe
             MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
             (coe du_pairOpIsMonoid_62 (coe v0) (coe v2))
             (coe du_pairOpComm_80 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
