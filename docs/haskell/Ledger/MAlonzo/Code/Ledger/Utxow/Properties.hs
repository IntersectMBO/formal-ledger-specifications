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

module MAlonzo.Code.Ledger.Utxow.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Ledger.Utxo.Properties
import qualified MAlonzo.Code.Ledger.Utxow
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Ledger.Utxow.Properties._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1376 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxow.Properties.Computational-UTXOW
d_Computational'45'UTXOW_1602 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXOW_1602 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_1642 (coe v0) (coe v1))
-- Ledger.Utxow.Properties._.Go.computeProof
d_computeProof_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1848 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2376 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1642 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Class.Decidable.Core.d_dec_16
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Ledger.Utxow.du_UTXOW'45'inductive'45'premises_1812
                    (coe v0) (coe v4) (coe v3))) in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
           -> if coe v6
                then case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                         -> case coe v8 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                -> case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> case coe v12 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                              -> case coe v14 of
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                     -> coe
                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                          (coe
                                                             MAlonzo.Code.Interface.ComputationalRelation.du_Functor'45'ComputationResult_138)
                                                          () erased () erased
                                                          (coe
                                                             MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                             (coe
                                                                MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
                                                             (coe
                                                                (\ v17 v18 ->
                                                                   coe
                                                                     MAlonzo.Code.Ledger.Utxow.C_UTXOW'45'inductive_1796
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe v9)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v11)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v13)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe v15)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v16)
                                                                                    (coe
                                                                                       v18)))))))))
                                                          (coe
                                                             MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                                             (MAlonzo.Code.Ledger.Utxo.Properties.d_Computational'45'UTXO_2082
                                                                (coe v0) (coe v1))
                                                             v2 v3 v4)
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v7)
                       (coe
                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                          (coe ("Failed in UTXOW" :: Data.Text.Text)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxow.Properties._.Go.completeness
d_completeness_1658 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1838 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1848 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2376 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1848 ->
  MAlonzo.Code.Ledger.Utxow.T__'8866'_'8640''10631'_'44'UTXOW'10632'__1704 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1658 = erased
