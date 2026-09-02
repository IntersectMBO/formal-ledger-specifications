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

module MAlonzo.Code.Ledger.Dijkstra.Foreign.Cert where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Class.Convertible.Core
import qualified MAlonzo.Code.Class.Convertible.Instances
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes

-- Ledger.Dijkstra.Foreign.Cert._.Computational-CERT
d_Computational'45'CERT_10 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_10
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.Properties.Computational.d_Computational'45'CERT_2194
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2784
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Cert._.Computational-CERTS
d_Computational'45'CERTS_12 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_12
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.Properties.Computational.d_Computational'45'CERTS_2418
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2784
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Cert.cert-step
certStep ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_CertEnv_25941 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_CertState_27973 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_DCert_3773 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_CertState_27973
certStep = coe d_cert'45'step_14
d_cert'45'step_14 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_CertEnv_25941 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_CertState_27973 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_DCert_3773 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_CertState_27973
d_cert'45'step_14 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'CertState_54)
         (coe
            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
            (coe MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22)
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSComputationResult_134
               (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvString_12)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'CertState_54))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.Properties.Computational.d_Computational'45'CERT_2194
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2784
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                  (coe
                     MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))))
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'CertEnv_46
            v0))
-- Ledger.Dijkstra.Foreign.Cert.certs-step
certsStep ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_CertEnv_25941 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_CertState_27973 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_DCert_3773 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_CertState_27973
certsStep = coe d_certs'45'step_16
d_certs'45'step_16 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_CertEnv_25941 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_CertState_27973 ->
  [MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_DCert_3773] ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_CertState_27973
d_certs'45'step_16 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'CertState_54)
         (coe
            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
            (coe
               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSComputationResult_134
               (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvString_12)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'CertState_54))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.Properties.Computational.d_Computational'45'CERTS_2418
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2784
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_648
                  (coe
                     MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))))
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'CertEnv_46
            v0))
