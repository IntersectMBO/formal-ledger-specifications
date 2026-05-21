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

module MAlonzo.Code.Ledger.Dijkstra.Foreign.Entities where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Cert
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes

-- Ledger.Dijkstra.Foreign.Entities._.Computational-ENTITIES
d_Computational'45'ENTITIES_10 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'ENTITIES_10
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.Properties.Computational.d_Computational'45'ENTITIES_1830
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Entities._.Computational-CERTS.completeness
d_completeness_14 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1288] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_14 = erased
-- Ledger.Dijkstra.Foreign.Entities._.Computational-CERTS.compute
d_compute_16 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1288] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_compute_16
  = let v0
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.Properties.Computational.d_Computational'45'CERTS_2256
            (coe v0)))
-- Ledger.Dijkstra.Foreign.Entities._.Computational-CERTS.computeFail
d_computeFail_18 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1288] ->
  ()
d_computeFail_18 = erased
-- Ledger.Dijkstra.Foreign.Entities._.Computational-CERTS.computeProof
d_computeProof_20 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1288] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_20
  = let v0
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.Properties.Computational.d_Computational'45'CERTS_2256
            (coe v0)))
-- Ledger.Dijkstra.Foreign.Entities._.Computational-CERTS.failure⇒∀¬STS
d_failure'8658''8704''172'STS_22 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1288] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_failure'8658''8704''172'STS_22 = erased
-- Ledger.Dijkstra.Foreign.Entities._.Computational-CERTS.failure⇔∀¬STS
d_failure'8660''8704''172'STS_24 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1288] ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_failure'8660''8704''172'STS_24
  = let v0
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_failure'8660''8704''172'STS_398
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.Properties.Computational.d_Computational'45'CERTS_2256
            (coe v0)))
-- Ledger.Dijkstra.Foreign.Entities._.Computational-CERTS.recomputeProof
d_recomputeProof_26 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1288] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_recomputeProof_26
  = let v0
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.du_recomputeProof_410
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.Properties.Computational.d_Computational'45'CERTS_2256
              (coe v0))
           v1 v2 v3)
-- Ledger.Dijkstra.Foreign.Entities._.Computational-CERTS.∀¬STS⇒failure
d_'8704''172'STS'8658'failure_28 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1288] ->
  (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
   MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8704''172'STS'8658'failure_28
  = let v0
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.du_'8704''172'STS'8658'failure_360
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.Properties.Computational.d_Computational'45'CERTS_2256
              (coe v0))
           v1 v2 v3)
-- Ledger.Dijkstra.Foreign.Entities._.Computational-CERTS.≡-success⇔STS
d_'8801''45'success'8660'STS_30 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1320 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1288] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'success'8660'STS_30
  = let v0
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_'8801''45'success'8660'STS_300
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.Properties.Computational.d_Computational'45'CERTS_2256
            (coe v0)))
-- Ledger.Dijkstra.Foreign.Entities.entities-step
entitiesStep ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_CertEnv_24355 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Cert.T_CertState_41 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_DCert_2881 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Cert.T_CertState_41
entitiesStep = coe d_entities'45'step_32
d_entities'45'step_32 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_CertEnv_24355 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Cert.T_CertState_41 ->
  [MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_DCert_2881] ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Cert.T_CertState_41
d_entities'45'step_32 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Cert.d_Conv'45'CertState_16)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'DCert_22))
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSComputationResult_134
               (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvString_12)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Cert.d_Conv'45'CertState_16))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Entities.Properties.Computational.d_Computational'45'ENTITIES_1830
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                  (coe
                     MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'CertEnv_110
            v0))
