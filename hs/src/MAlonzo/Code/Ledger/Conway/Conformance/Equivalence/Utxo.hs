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

module MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Utxo where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxow
import qualified MAlonzo.Code.Ledger.Core.Specification.Address

-- Ledger.Conway.Conformance.Equivalence.Utxo.L._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2014 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2016 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._.UTxOState
d_UTxOState_2060 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._.ValidCertDeposits
d_ValidCertDeposits_2066 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._.UTxOState.deposits
d_deposits_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2500
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._.UTxOState.donations
d_donations_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  Integer
d_donations_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2502
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._.UTxOState.fees
d_fees_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  Integer
d_fees_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2498 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._.UTxOState.utxo
d_utxo_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2496 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2206 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._.Deposits
d_Deposits_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  ()
d_Deposits_2346 = erased
-- Ledger.Conway.Conformance.Equivalence.Utxo.C._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2700 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Utxo.C._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2702 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Utxo.C._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2776 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Utxo.setDeposits
d_setDeposits_3242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486
d_setDeposits_3242 ~v0 ~v1 v2 v3 = du_setDeposits_3242 v2 v3
du_setDeposits_3242 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486
du_setDeposits_3242 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2504
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2496 (coe v1))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2498 (coe v1))
      (coe v0)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2502
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Utxo.withDepositsFrom
d_withDepositsFrom_3248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486
d_withDepositsFrom_3248 ~v0 ~v1 v2 = du_withDepositsFrom_3248 v2
du_withDepositsFrom_3248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486
du_withDepositsFrom_3248 v0
  = coe
      du_setDeposits_3242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2500
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Utxo.UTXOSToConf
d_UTXOSToConf_3260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_UTXOSToConf_3260 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_UTXOSToConf_3260
du_UTXOSToConf_3260 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_UTXOSToConf_3260
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C_constructor_36
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_Scripts'45'Yes_3380 v8
                -> case coe v8 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                       -> coe
                            seq (coe v10)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'Yes_2768
                               v10)
                     _ -> MAlonzo.RTE.mazUnreachableError
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_Scripts'45'No_3436 v8
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'No_2846 v8
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Utxo._.utxoSDeposits
d_utxoSDeposits_3306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxoSDeposits_3306 v0 ~v1 v2 v3 v4 ~v5 v6
  = du_utxoSDeposits_3306 v0 v2 v3 v4 v6
du_utxoSDeposits_3306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxoSDeposits_3306 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'Yes_2768 v8
        -> coe
             MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2960
             (coe v0)
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2480
                (coe v1))
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3606
                (coe v3))
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2500
                (coe v2))
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'No_2846 v8
        -> coe
             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2500
             (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Utxo._.utxoDeposits
d_utxoDeposits_3308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxoDeposits_3308 v0 ~v1 v2 v3 v4 ~v5 v6
  = du_utxoDeposits_3308 v0 v2 v3 v4 v6
du_utxoDeposits_3308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxoDeposits_3308 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_UTXO'45'inductive_2958 v9
        -> case coe v9 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
               -> case coe v11 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                      -> case coe v13 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                             -> case coe v15 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                    -> case coe v17 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                           -> case coe v19 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                  -> case coe v21 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                         -> case coe v23 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v24 v25
                                                                -> case coe v25 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                       -> case coe v27 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v28 v29
                                                                              -> case coe v29 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v30 v31
                                                                                     -> case coe
                                                                                               v31 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v32 v33
                                                                                            -> case coe
                                                                                                      v33 of
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v34 v35
                                                                                                   -> case coe
                                                                                                             v35 of
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v36 v37
                                                                                                          -> case coe
                                                                                                                    v37 of
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v38 v39
                                                                                                                 -> case coe
                                                                                                                           v39 of
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v40 v41
                                                                                                                        -> case coe
                                                                                                                                  v41 of
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v42 v43
                                                                                                                               -> case coe
                                                                                                                                         v43 of
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v44 v45
                                                                                                                                      -> coe
                                                                                                                                           du_utxoSDeposits_3306
                                                                                                                                           (coe
                                                                                                                                              v0)
                                                                                                                                           (coe
                                                                                                                                              v1)
                                                                                                                                           (coe
                                                                                                                                              v2)
                                                                                                                                           (coe
                                                                                                                                              v3)
                                                                                                                                           (coe
                                                                                                                                              v45)
                                                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Utxo._.utxowDeposits
d_utxowDeposits_3312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxow.T__'8866'_'8640''10631'_'44'UTXOW'10632'__2792 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxowDeposits_3312 v0 ~v1 v2 v3 v4 ~v5 v6
  = du_utxowDeposits_3312 v0 v2 v3 v4 v6
du_utxowDeposits_3312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxow.T__'8866'_'8640''10631'_'44'UTXOW'10632'__2792 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxowDeposits_3312 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Ledger.Conway.Conformance.Utxow.C_UTXOW'45'inductive_2916 v9
        -> case coe v9 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
               -> case coe v11 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                      -> case coe v13 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                             -> case coe v15 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                    -> case coe v17 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                           -> case coe v19 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                  -> case coe v21 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                         -> case coe v23 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v24 v25
                                                                -> case coe v25 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                       -> case coe v27 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v28 v29
                                                                              -> case coe v29 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v30 v31
                                                                                     -> case coe
                                                                                               v31 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v32 v33
                                                                                            -> coe
                                                                                                 du_utxoDeposits_3308
                                                                                                 (coe
                                                                                                    v0)
                                                                                                 (coe
                                                                                                    v1)
                                                                                                 (coe
                                                                                                    v2)
                                                                                                 (coe
                                                                                                    v3)
                                                                                                 (coe
                                                                                                    v33)
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Utxo._.pparams
d_pparams_3326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_3326 ~v0 v1 ~v2 ~v3 ~v4 = du_pparams_3326 v1
du_pparams_3326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_3326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2480
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.deposits
d_deposits_3330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3330 ~v0 ~v1 v2 ~v3 ~v4 = du_deposits_3330 v2
du_deposits_3330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_3330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2500
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.body
d_body_3338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
d_body_3338 ~v0 ~v1 ~v2 v3 ~v4 = du_body_3338 v3
du_body_3338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
du_body_3338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3606
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.txCerts
d_txCerts_3346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338]
d_txCerts_3346 ~v0 ~v1 ~v2 v3 ~v4 = du_txCerts_3346 v3
du_txCerts_3346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338]
du_txCerts_3346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3606
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Utxo.UTXOSFromConf
d_UTXOSFromConf_3352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_UTXOSFromConf_3352 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_UTXOSFromConf_3352
du_UTXOSFromConf_3352 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_UTXOSFromConf_3352
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C_constructor_36
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
                -> coe
                     (\ v2 ->
                        let v3
                              = case coe v2 of
                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'No_2846 v6
                                    -> coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_Scripts'45'No_3436
                                         v6
                                  _ -> MAlonzo.RTE.mazUnreachableError in
                        coe
                          (case coe v2 of
                             MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'Yes_2768 v7
                               -> coe v3
                             MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'No_2846 v7
                               -> coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_Scripts'45'No_3436
                                    v7
                             _ -> MAlonzo.RTE.mazUnreachableError))
              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'Yes_2768 v6
                            -> coe
                                 seq (coe v6)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_Scripts'45'Yes_3380
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                       (coe v6)))
                          MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'No_2846 v6
                            -> coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_Scripts'45'No_3436
                                 v6
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Utxo.UTXOToConf
d_UTXOToConf_3372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_UTXOToConf_3372 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_UTXOToConf_3372
du_UTXOToConf_3372 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_UTXOToConf_3372
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C_constructor_36
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_UTXO'45'inductive_3536 v6
                -> case coe v6 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                       -> case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                              -> case coe v10 of
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                     -> case coe v12 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                            -> case coe v14 of
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                   -> case coe v16 of
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                          -> case coe v18 of
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                 -> case coe v20 of
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                        -> case coe v22 of
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                               -> case coe v24 of
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                      -> case coe
                                                                                                v26 of
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                             -> case coe
                                                                                                       v28 of
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                    -> case coe
                                                                                                              v30 of
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                                                                           -> case coe
                                                                                                                     v32 of
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v33 v34
                                                                                                                  -> case coe
                                                                                                                            v34 of
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                                                                         -> case coe
                                                                                                                                   v36 of
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v37 v38
                                                                                                                                -> case coe
                                                                                                                                          v38 of
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v39 v40
                                                                                                                                       -> case coe
                                                                                                                                                 v40 of
                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v41 v42
                                                                                                                                              -> coe
                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_UTXO'45'inductive_2958
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                      (coe
                                                                                                                                                         v7)
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                         (coe
                                                                                                                                                            v9)
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                            (coe
                                                                                                                                                               v11)
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                               (coe
                                                                                                                                                                  v13)
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                  (coe
                                                                                                                                                                     v15)
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                     (coe
                                                                                                                                                                        v17)
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                        (coe
                                                                                                                                                                           v19)
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                           (coe
                                                                                                                                                                              v21)
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                              (coe
                                                                                                                                                                                 v23)
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v25)
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                    (coe
                                                                                                                                                                                       v27)
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                       (coe
                                                                                                                                                                                          v29)
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                          (coe
                                                                                                                                                                                             v31)
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v33)
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v35)
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v37)
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v39)
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            v41)
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_86
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               du_UTXOSToConf_3260)
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               v42))))))))))))))))))))
                                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Utxo._.pparams
d_pparams_3426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_3426 ~v0 v1 ~v2 ~v3 ~v4 = du_pparams_3426 v1
du_pparams_3426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_3426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2480
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.deposits
d_deposits_3430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3430 ~v0 ~v1 v2 ~v3 ~v4 = du_deposits_3430 v2
du_deposits_3430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_3430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2500
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.body
d_body_3438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
d_body_3438 ~v0 ~v1 ~v2 v3 ~v4 = du_body_3438 v3
du_body_3438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
du_body_3438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3606
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.txCerts
d_txCerts_3446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338]
d_txCerts_3446 ~v0 ~v1 ~v2 v3 ~v4 = du_txCerts_3446 v3
du_txCerts_3446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338]
du_txCerts_3446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3606
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Utxo.UTXOFromConf
d_UTXOFromConf_3452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_UTXOFromConf_3452 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_UTXOFromConf_3452
du_UTXOFromConf_3452 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_UTXOFromConf_3452
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C_constructor_36
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_UTXO'45'inductive_2958 v6
                -> case coe v6 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                       -> case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                              -> case coe v10 of
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                     -> case coe v12 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                            -> case coe v14 of
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                   -> case coe v16 of
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                          -> case coe v18 of
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                 -> case coe v20 of
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                        -> case coe v22 of
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                               -> case coe v24 of
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                      -> case coe
                                                                                                v26 of
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                             -> case coe
                                                                                                       v28 of
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                    -> case coe
                                                                                                              v30 of
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                                                                           -> case coe
                                                                                                                     v32 of
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v33 v34
                                                                                                                  -> case coe
                                                                                                                            v34 of
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                                                                         -> case coe
                                                                                                                                   v36 of
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v37 v38
                                                                                                                                -> case coe
                                                                                                                                          v38 of
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v39 v40
                                                                                                                                       -> case coe
                                                                                                                                                 v40 of
                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v41 v42
                                                                                                                                              -> coe
                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_UTXO'45'inductive_3536
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                      (coe
                                                                                                                                                         v7)
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                         (coe
                                                                                                                                                            v9)
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                            (coe
                                                                                                                                                               v11)
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                               (coe
                                                                                                                                                                  v13)
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                  (coe
                                                                                                                                                                     v15)
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                     (coe
                                                                                                                                                                        v17)
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                        (coe
                                                                                                                                                                           v19)
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                           (coe
                                                                                                                                                                              v21)
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                              (coe
                                                                                                                                                                                 v23)
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v25)
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                    (coe
                                                                                                                                                                                       v27)
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                       (coe
                                                                                                                                                                                          v29)
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                          (coe
                                                                                                                                                                                             v31)
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v33)
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v35)
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v37)
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v39)
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            v41)
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.d_conv'8305'_34
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               du_UTXOSFromConf_3352)
                                                                                                                                                                                                            v0
                                                                                                                                                                                                            v42)))))))))))))))))))
                                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Utxo.UTXOWToConf
d_UTXOWToConf_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_UTXOWToConf_3506 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_UTXOWToConf_3506
du_UTXOWToConf_3506 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_UTXOWToConf_3506
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C_constructor_36
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Specification.Utxow.C_UTXOW'45'inductive_3068 v6
                -> case coe v6 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                       -> case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                              -> case coe v10 of
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                     -> case coe v12 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                            -> case coe v14 of
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                   -> case coe v16 of
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                          -> case coe v18 of
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                 -> case coe v20 of
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                        -> case coe v22 of
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                               -> case coe v24 of
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                      -> case coe
                                                                                                v26 of
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                             -> case coe
                                                                                                       v28 of
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxow.C_UTXOW'45'inductive_2916
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               v7)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  v9)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                  (coe
                                                                                                                     v11)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                     (coe
                                                                                                                        v13)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                        (coe
                                                                                                                           v15)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                           (coe
                                                                                                                              v17)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                              (coe
                                                                                                                                 v19)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                 (coe
                                                                                                                                    v21)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                    (coe
                                                                                                                                       v23)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                       (coe
                                                                                                                                          v25)
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                          (coe
                                                                                                                                             v27)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                             (coe
                                                                                                                                                v29)
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_86
                                                                                                                                                (coe
                                                                                                                                                   du_UTXOToConf_3372)
                                                                                                                                                (coe
                                                                                                                                                   v30))))))))))))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Utxo._.pparams
d_pparams_3544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_3544 ~v0 v1 ~v2 ~v3 ~v4 = du_pparams_3544 v1
du_pparams_3544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_3544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2480
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.deposits
d_deposits_3548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3548 ~v0 ~v1 v2 ~v3 ~v4 = du_deposits_3548 v2
du_deposits_3548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_3548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2500
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.body
d_body_3556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
d_body_3556 ~v0 ~v1 ~v2 v3 ~v4 = du_body_3556 v3
du_body_3556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
du_body_3556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3606
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.txCerts
d_txCerts_3564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338]
d_txCerts_3564 ~v0 ~v1 ~v2 v3 ~v4 = du_txCerts_3564 v3
du_txCerts_3564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338]
du_txCerts_3564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3606
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Utxo.UTXOWFromConf
d_UTXOWFromConf_3570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_UTXOWFromConf_3570 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_UTXOWFromConf_3570
du_UTXOWFromConf_3570 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_UTXOWFromConf_3570
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C_constructor_36
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Conformance.Utxow.C_UTXOW'45'inductive_2916 v6
                -> case coe v6 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                       -> case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                              -> case coe v10 of
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                     -> case coe v12 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                            -> case coe v14 of
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                   -> case coe v16 of
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                          -> case coe v18 of
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                 -> case coe v20 of
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                        -> case coe v22 of
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                               -> case coe v24 of
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                      -> case coe
                                                                                                v26 of
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                             -> case coe
                                                                                                       v28 of
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxow.C_UTXOW'45'inductive_3068
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               v7)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  v9)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                  (coe
                                                                                                                     v11)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                     (coe
                                                                                                                        v13)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                        (coe
                                                                                                                           v15)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                           (coe
                                                                                                                              v17)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                              (coe
                                                                                                                                 v19)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                 (coe
                                                                                                                                    v21)
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                    (coe
                                                                                                                                       v23)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                       (coe
                                                                                                                                          v25)
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                          (coe
                                                                                                                                             v27)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                             (coe
                                                                                                                                                v29)
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.d_conv'8305'_34
                                                                                                                                                (coe
                                                                                                                                                   du_UTXOFromConf_3452)
                                                                                                                                                v0
                                                                                                                                                v30)))))))))))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
