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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

import GHC.Generics (Generic)
data CertState = MkCertState {dState :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.DState, pState :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.PState, gState :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.GState}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.HSLedger.Cert._.Computational-CERT
d_Computational'45'CERT_12 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_12
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1834
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.Cert._.Computational-CERTS
d_Computational'45'CERTS_14 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_14
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2322
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__18 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__19 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__20 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1058 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__20 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__21 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__22 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__23 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__24 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__25 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__26 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__27 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__28 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertState
d_CertState_29 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState
d_GState_31 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv
d_CertEnv_46 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertState
d_CertState_48 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertStateOf
d_CertStateOf_50 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1236 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216
d_CertStateOf_50 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_CertStateOf_1244 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DCert
d_DCert_54 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.DReps
d_DReps_70 :: ()
d_DReps_70 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.DRepsOf
d_DRepsOf_72 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDReps_984 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_72 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DRepsOf_992 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState
d_DState_74 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.DStateOf
d_DStateOf_76 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDState_1120 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_DState_1100
d_DStateOf_76 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DStateOf_1128 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_78 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_78
  = let v0
          = MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe
                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Cert._.DelegEnv
d_DelegEnv_80 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.DepositPurpose
d_DepositPurpose_82 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.Deposits
d_Deposits_84 :: ()
d_Deposits_84 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.DepositsOf
d_DepositsOf_86 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_86 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_956 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState
d_GState_100 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.GStateOf
d_GStateOf_102 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasGState_1200 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_GState_1184
d_GStateOf_102 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_GStateOf_1208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GovCertEnv
d_GovCertEnv_106 :: ()
d_GovCertEnv_106 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-CertEnv
d_HasCast'45'CertEnv_108 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_108
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'CertEnv_1286
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-CertState
d_HasCast'45'CertState_110 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_110
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1314
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-DState
d_HasCast'45'DState_112 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_112
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1310
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_114 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_114
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'DelegEnv_1296
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-GState
d_HasCast'45'GState_116 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_116
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1312
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-PState
d_HasCast'45'PState_118 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_118
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'PState_1290
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCertState
d_HasCertState_120 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCoin-CertState
d_HasCoin'45'CertState_122 ::
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_122
  = let v0
          = MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe
                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Certs.d_HasCoin'45'CertState_1284
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDReps
d_HasDReps_124 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDReps-CertState
d_HasDReps'45'CertState_126 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDReps_984
d_HasDReps'45'CertState_126
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.du_HasDReps'45'CertState_1258
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDReps-GState
d_HasDReps'45'GState_128 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDReps_984
d_HasDReps'45'GState_128
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasDReps'45'GState_1214
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDState
d_HasDState_130 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDState-CertState
d_HasDState'45'CertState_132 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDState_1120
d_HasDState'45'CertState_132
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.du_HasDState'45'CertState_1250
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDeposits
d_HasDeposits_134 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasGState
d_HasGState_136 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasGState-CertState
d_HasGState'45'CertState_138 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasGState_1200
d_HasGState'45'CertState_138
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.du_HasGState'45'CertState_1254
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPState
d_HasPState_140 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPState-CertState
d_HasPState'45'CertState_142 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasPState_1170
d_HasPState'45'CertState_142
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.du_HasPState'45'CertState_1252
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRewards
d_HasRewards_144 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRewards-CertState
d_HasRewards'45'CertState_146 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasRewards_966
d_HasRewards'45'CertState_146
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.du_HasRewards'45'CertState_1256
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRewards-DState
d_HasRewards'45'DState_148 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasRewards_966
d_HasRewards'45'DState_148
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasRewards'45'DState_1154
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasVDelegs
d_HasVDelegs_150 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasVDelegs-DState
d_HasVDelegs'45'DState_152 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasVDelegs_1138
d_HasVDelegs'45'DState_152
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasVDelegs'45'DState_1152
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasWdrls
d_HasWdrls_154 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasWdrls-CertEnv
d_HasWdrls'45'CertEnv_156 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1084
d_HasWdrls'45'CertEnv_156
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasWdrls'45'CertEnv_1098
-- Ledger.Conway.Foreign.HSLedger.Cert._.PState
d_PState_166 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.PStateOf
d_PStateOf_168 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasPState_1170 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_PState_1156
d_PStateOf_168 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_PStateOf_1178 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PoolEnv
d_PoolEnv_172 :: ()
d_PoolEnv_172 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.PoolParams
d_PoolParams_174 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.Rewards
d_Rewards_176 :: ()
d_Rewards_176 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.RewardsOf
d_RewardsOf_178 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasRewards_966 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_178 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_RewardsOf_974 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.certDeposit
d_certDeposit_182 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_182
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1316
-- Ledger.Conway.Foreign.HSLedger.Cert._.certRefund
d_certRefund_184 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_928]
d_certRefund_184
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1332
-- Ledger.Conway.Foreign.HSLedger.Cert._.cwitness
d_cwitness_186 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_cwitness_186
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_cwitness_1040
-- Ledger.Conway.Foreign.HSLedger.Cert._.rewardsBalance
d_rewardsBalance_202 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DState_1100 -> Integer
d_rewardsBalance_202
  = let v0
          = MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe
                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Certs.d_rewardsBalance_1278 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Cert._.updateCertDeposit
d_updateCertDeposit_204 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_204
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1338
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.Cert._.voteDelegsOf
d_voteDelegsOf_206 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasVDelegs_1138 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegsOf_206 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_voteDelegsOf_1146 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.wdrlsOf
d_wdrlsOf_208 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1084 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_208 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrlsOf_1092 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.coldCreds
d_coldCreds_256 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1058 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_coldCreds_256 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_coldCreds_1078 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.epoch
d_epoch_258 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1058 -> Integer
d_epoch_258 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_epoch_1070 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.pp
d_pp_260 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1058 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pp_260 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pp_1072 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.votes
d_votes_262 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1058 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836]
d_votes_262 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_votes_1074 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.wdrls
d_wdrls_264 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1058 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_264 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrls_1076 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertState.dState
d_dState_268 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1258
d_dState_268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1302 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertState.gState
d_gState_270 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1278
d_gState_270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1306 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertState.pState
d_pState_272 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1156
d_pState_272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1304 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState.deposits
d_deposits_294 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1274
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState.rewards
d_rewards_296 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1272
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState.stakeDelegs
d_stakeDelegs_298 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1270
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState.voteDelegs
d_voteDelegs_300 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1268
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DelegEnv.delegatees
d_delegatees_304 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DelegEnv_1260 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_delegatees_304 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_delegatees_1272 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DelegEnv.pools
d_pools_306 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DelegEnv_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_306 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pools_1270 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DelegEnv.pparams
d_pparams_308 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DelegEnv_1260 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pparams_308 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pparams_1268 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState.ccHotKeys
d_ccHotKeys_322 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1288
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState.deposits
d_deposits_324 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1290
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState.dreps
d_dreps_326 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1286 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCertState.CertStateOf
d_CertStateOf_330 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1236 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216
d_CertStateOf_330 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_CertStateOf_1244 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDReps.DRepsOf
d_DRepsOf_334 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDReps_984 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_334 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DRepsOf_992 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDState.DStateOf
d_DStateOf_338 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDState_1120 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_DState_1100
d_DStateOf_338 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DStateOf_1128 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDeposits.DepositsOf
d_DepositsOf_342 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_342 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_956 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasGState.GStateOf
d_GStateOf_346 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasGState_1200 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_GState_1184
d_GStateOf_346 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_GStateOf_1208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPState.PStateOf
d_PStateOf_350 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasPState_1170 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_PState_1156
d_PStateOf_350 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_PStateOf_1178 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRewards.RewardsOf
d_RewardsOf_354 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasRewards_966 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_354 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_RewardsOf_974 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasVDelegs.voteDelegsOf
d_voteDelegsOf_358 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasVDelegs_1138 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegsOf_358 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_voteDelegsOf_1146 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasWdrls.wdrlsOf
d_wdrlsOf_362 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1084 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_362 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrlsOf_1092 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PState.pools
d_pools_366 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1156 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_366 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pools_1162 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PState.retiring
d_retiring_368 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1156 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_368 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_retiring_1164 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PoolParams.cost
d_cost_372 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_1000 -> Integer
d_cost_372 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_cost_1014 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PoolParams.margin
d_margin_374 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_1000 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_374 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_margin_1016 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PoolParams.owners
d_owners_376 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_1000 -> [Integer]
d_owners_376 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_owners_1012 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PoolParams.pledge
d_pledge_378 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_1000 -> Integer
d_pledge_378 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pledge_1018 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PoolParams.rewardAccount
d_rewardAccount_380 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_1000 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_rewardAccount_380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.d_rewardAccount_1020 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert.HsTy-CertState
d_HsTy'45'CertState_382 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'CertState_382 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert.Conv-CertState
d_Conv'45'CertState_384 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'CertState_384
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1308 v1 v2 v3
                -> coe
                     C_MkCertState_663
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11013
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1268
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1270
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1272
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_66)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1274
                                    (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_5743
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_62)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Conway.Certs.d_pools_1162 (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Conway.Certs.d_retiring_1164 (coe v2))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_22063
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1286
                                    (coe v3)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1288
                                    (coe v3)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_66)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1290
                                    (coe v3))))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkCertState_663 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1308
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1276 v5 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11013
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v5))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_66)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11013 v5 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1276
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v5)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v7)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_66)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v8)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Certs.C_PState'46'constructor_19285 v5 v6
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_5743
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_62)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v5))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_5743 v5 v6
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Certs.C_PState'46'constructor_19285
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_62))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v5)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v6)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1292 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_22063
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v5))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_66)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_22063 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1292
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                 coe
                                                   (let v9
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v5)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                 coe
                                                   (let v9
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_66)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v7)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Cert.Conv-CertState-CertState'
d_Conv'45'CertState'45'CertState''_386 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'CertState'45'CertState''_386
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1308 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1230
                     (coe
                        MAlonzo.Code.Ledger.Conway.Certs.C_'10214'_'44'_'44'_'10215''7496'_1114
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1268
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1270
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1270
                           (coe v1)))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Certs.C_'10214'_'44'_'10215''7515'_1194
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1286 (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1288
                           (coe v3)))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1230 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1308
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1276
                        (coe MAlonzo.Code.Ledger.Conway.Certs.d_voteDelegs_1108 (coe v1))
                        (coe MAlonzo.Code.Ledger.Conway.Certs.d_stakeDelegs_1110 (coe v1))
                        (coe MAlonzo.Code.Ledger.Conway.Certs.d_stakeDelegs_1110 (coe v1))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1292
                        (coe MAlonzo.Code.Ledger.Conway.Certs.d_dreps_1190 (coe v3))
                        (coe MAlonzo.Code.Ledger.Conway.Certs.d_ccHotKeys_1192 (coe v3))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Cert.certs-step
certsStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_CertEnv_7045 ->
  T_CertState_661 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_15307 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_661
certsStep = coe d_certs'45'step_400
d_certs'45'step_400 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_CertEnv_7045 ->
  T_CertState_661 ->
  [MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_15307] ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_661
d_certs'45'step_400 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'CertState_384)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_86))
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'CertState_384))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2322
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                  (coe
                     MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'CertEnv_78
            v0))
-- Ledger.Conway.Foreign.HSLedger.Cert.cert-step
certStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_CertEnv_7045 ->
  T_CertState_661 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_15307 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_661
certStep = coe d_cert'45'step_402
d_cert'45'step_402 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_CertEnv_7045 ->
  T_CertState_661 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_15307 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_661
d_cert'45'step_402 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'CertState_384)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_86)
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'CertState_384))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1834
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                  (coe
                     MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'CertEnv_78
            v0))
-- Ledger.Conway.Foreign.HSLedger.Cert.CertState
d_CertState_661 = ()
type T_CertState_661 = CertState
pattern C_MkCertState_663 a0 a1 a2 = MkCertState a0 a1 a2
check_MkCertState_663 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DState_11011 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_PState_5741 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_GState_22061 ->
  T_CertState_661
check_MkCertState_663 = MkCertState
cover_CertState_661 :: CertState -> ()
cover_CertState_661 x
  = case x of
      MkCertState _ _ _ -> ()
