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
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1926 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1928 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._.UTxOState
d_UTxOState_1972 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._.ValidCertDeposits
d_ValidCertDeposits_1978 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._.UTxOState.deposits
d_deposits_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2410
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._.UTxOState.donations
d_donations_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  Integer
d_donations_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2412
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._.UTxOState.fees
d_fees_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  Integer
d_fees_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2408 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._.UTxOState.utxo
d_utxo_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2406 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2118 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Utxo.L._.Deposits
d_Deposits_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  ()
d_Deposits_2232 = erased
-- Ledger.Conway.Conformance.Equivalence.Utxo.C._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2586 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Utxo.C._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2588 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Utxo.C._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2662 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Equivalence.Utxo.setDeposits
d_setDeposits_3124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
d_setDeposits_3124 ~v0 ~v1 v2 v3 = du_setDeposits_3124 v2 v3
du_setDeposits_3124 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
du_setDeposits_3124 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2414
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2406 (coe v1))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2408 (coe v1))
      (coe v0)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2412
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Utxo.withDepositsFrom
d_withDepositsFrom_3130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
d_withDepositsFrom_3130 ~v0 ~v1 v2 = du_withDepositsFrom_3130 v2
du_withDepositsFrom_3130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
du_withDepositsFrom_3130 v0
  = coe
      du_setDeposits_3124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2410
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Utxo.UTXOSToConf
d_UTXOSToConf_3142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_UTXOSToConf_3142 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_UTXOSToConf_3142
du_UTXOSToConf_3142 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_UTXOSToConf_3142
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C_constructor_36
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_Scripts'45'Yes_3290 v8
                -> case coe v8 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                       -> coe
                            seq (coe v10)
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'Yes_2678
                               v10)
                     _ -> MAlonzo.RTE.mazUnreachableError
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_Scripts'45'No_3346 v8
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'No_2756 v8
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Utxo._.utxoSDeposits
d_utxoSDeposits_3188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2600 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxoSDeposits_3188 v0 ~v1 v2 v3 v4 ~v5 v6
  = du_utxoSDeposits_3188 v0 v2 v3 v4 v6
du_utxoSDeposits_3188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2600 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxoSDeposits_3188 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'Yes_2678 v8
        -> coe
             MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2870
             (coe v0)
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2390
                (coe v1))
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3478
                (coe v3))
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2410
                (coe v2))
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'No_2756 v8
        -> coe
             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2410
             (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Utxo._.utxoDeposits
d_utxoDeposits_3190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxoDeposits_3190 v0 ~v1 v2 v3 v4 ~v5 v6
  = du_utxoDeposits_3190 v0 v2 v3 v4 v6
du_utxoDeposits_3190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxoDeposits_3190 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_UTXO'45'inductive_2868 v9
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
                                                                                                                               -> coe
                                                                                                                                    du_utxoSDeposits_3188
                                                                                                                                    (coe
                                                                                                                                       v0)
                                                                                                                                    (coe
                                                                                                                                       v1)
                                                                                                                                    (coe
                                                                                                                                       v2)
                                                                                                                                    (coe
                                                                                                                                       v3)
                                                                                                                                    (coe
                                                                                                                                       v43)
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
d_utxowDeposits_3194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxow.T__'8866'_'8640''10631'_'44'UTXOW'10632'__2676 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxowDeposits_3194 v0 ~v1 v2 v3 v4 ~v5 v6
  = du_utxowDeposits_3194 v0 v2 v3 v4 v6
du_utxowDeposits_3194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxow.T__'8866'_'8640''10631'_'44'UTXOW'10632'__2676 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxowDeposits_3194 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Ledger.Conway.Conformance.Utxow.C_UTXOW'45'inductive_2788 v9
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
                                                                -> coe
                                                                     du_utxoDeposits_3190 (coe v0)
                                                                     (coe v1) (coe v2) (coe v3)
                                                                     (coe v25)
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
d_pparams_3208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_3208 ~v0 v1 ~v2 ~v3 ~v4 = du_pparams_3208 v1
du_pparams_3208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_3208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2390
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.deposits
d_deposits_3212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3212 ~v0 ~v1 v2 ~v3 ~v4 = du_deposits_3212 v2
du_deposits_3212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_3212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2410
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.body
d_body_3220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286
d_body_3220 ~v0 ~v1 ~v2 v3 ~v4 = du_body_3220 v3
du_body_3220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286
du_body_3220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3478
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.txCerts
d_txCerts_3228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292]
d_txCerts_3228 ~v0 ~v1 ~v2 v3 ~v4 = du_txCerts_3228 v3
du_txCerts_3228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292]
du_txCerts_3228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3334
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3478
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Utxo.UTXOSFromConf
d_UTXOSFromConf_3234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_UTXOSFromConf_3234 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_UTXOSFromConf_3234
du_UTXOSFromConf_3234 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_UTXOSFromConf_3234
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
                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'No_2756 v6
                                    -> coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_Scripts'45'No_3346
                                         v6
                                  _ -> MAlonzo.RTE.mazUnreachableError in
                        coe
                          (case coe v2 of
                             MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'Yes_2678 v7
                               -> coe v3
                             MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'No_2756 v7
                               -> coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_Scripts'45'No_3346
                                    v7
                             _ -> MAlonzo.RTE.mazUnreachableError))
              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'Yes_2678 v6
                            -> coe
                                 seq (coe v6)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_Scripts'45'Yes_3290
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                       (coe v6)))
                          MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'No_2756 v6
                            -> coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_Scripts'45'No_3346
                                 v6
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Utxo.UTXOToConf
d_UTXOToConf_3254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_UTXOToConf_3254 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_UTXOToConf_3254
du_UTXOToConf_3254 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_UTXOToConf_3254
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C_constructor_36
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_UTXO'45'inductive_3446 v6
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
                                                                                                                                       -> coe
                                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_UTXO'45'inductive_2868
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
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_86
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     du_UTXOSToConf_3142)
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v40)))))))))))))))))))
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
d_pparams_3306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_3306 ~v0 v1 ~v2 ~v3 ~v4 = du_pparams_3306 v1
du_pparams_3306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_3306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2390
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.deposits
d_deposits_3310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3310 ~v0 ~v1 v2 ~v3 ~v4 = du_deposits_3310 v2
du_deposits_3310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_3310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2410
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.body
d_body_3318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286
d_body_3318 ~v0 ~v1 ~v2 v3 ~v4 = du_body_3318 v3
du_body_3318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286
du_body_3318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3478
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.txCerts
d_txCerts_3326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292]
d_txCerts_3326 ~v0 ~v1 ~v2 v3 ~v4 = du_txCerts_3326 v3
du_txCerts_3326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292]
du_txCerts_3326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3334
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3478
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Utxo.UTXOFromConf
d_UTXOFromConf_3332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_UTXOFromConf_3332 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_UTXOFromConf_3332
du_UTXOFromConf_3332 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_UTXOFromConf_3332
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C_constructor_36
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_UTXO'45'inductive_2868 v6
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
                                                                                                                                       -> coe
                                                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_UTXO'45'inductive_3446
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
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.d_conv'8305'_34
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     du_UTXOSFromConf_3234)
                                                                                                                                                                                                  v0
                                                                                                                                                                                                  v40))))))))))))))))))
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
d_UTXOWToConf_3384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_UTXOWToConf_3384 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_UTXOWToConf_3384
du_UTXOWToConf_3384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_UTXOWToConf_3384
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C_constructor_36
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Specification.Utxow.C_UTXOW'45'inductive_2828 v6
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
                                                                        -> coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Utxow.C_UTXOW'45'inductive_2788
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe v7)
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
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_86
                                                                                                        (coe
                                                                                                           du_UTXOToConf_3254)
                                                                                                        (coe
                                                                                                           v22))))))))))
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
d_pparams_3414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_3414 ~v0 v1 ~v2 ~v3 ~v4 = du_pparams_3414 v1
du_pparams_3414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_3414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2390
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.deposits
d_deposits_3418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3418 ~v0 ~v1 v2 ~v3 ~v4 = du_deposits_3418 v2
du_deposits_3418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_3418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2410
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.body
d_body_3426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286
d_body_3426 ~v0 ~v1 ~v2 v3 ~v4 = du_body_3426 v3
du_body_3426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286
du_body_3426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3478
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Utxo._.txCerts
d_txCerts_3434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292]
d_txCerts_3434 ~v0 ~v1 ~v2 v3 ~v4 = du_txCerts_3434 v3
du_txCerts_3434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292]
du_txCerts_3434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3334
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3478
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Utxo.UTXOWFromConf
d_UTXOWFromConf_3440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_UTXOWFromConf_3440 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_UTXOWFromConf_3440
du_UTXOWFromConf_3440 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_UTXOWFromConf_3440
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.C_constructor_36
      (coe
         (\ v0 v1 ->
            case coe v1 of
              MAlonzo.Code.Ledger.Conway.Conformance.Utxow.C_UTXOW'45'inductive_2788 v6
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
                                                                        -> coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Utxow.C_UTXOW'45'inductive_2828
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe v7)
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
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.d_conv'8305'_34
                                                                                                        (coe
                                                                                                           du_UTXOFromConf_3332)
                                                                                                        v0
                                                                                                        v22)))))))))
                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
