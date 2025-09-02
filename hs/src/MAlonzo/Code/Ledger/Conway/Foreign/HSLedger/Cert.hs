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
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
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
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1914
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Cert._.Computational-CERTS
d_Computational'45'CERTS_14 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_14
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2402
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__18 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__19 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__20 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1116 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1080] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374 -> ()
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
d_CertState_50 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertStateOf
d_CertStateOf_54 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1308 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1288
d_CertStateOf_54 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1316
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DCert
d_DCert_58 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.DReps
d_DReps_74 :: ()
d_DReps_74 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.DRepsOf
d_DRepsOf_76 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1038 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1046
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState
d_DState_78 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.DStateOf
d_DStateOf_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1182 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162
d_DStateOf_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_84 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_84
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                 (coe
                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1054
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Cert._.DelegEnv
d_DelegEnv_86 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.DepositPurpose
d_DepositPurpose_90 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.Deposits
d_Deposits_92 :: ()
d_Deposits_92 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.DepositsOf
d_DepositsOf_94 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_998 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_94 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1006
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState
d_GState_108 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.GStateOf
d_GStateOf_112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1270 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1254
d_GStateOf_112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1278
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GovCertEnv
d_GovCertEnv_116 :: ()
d_GovCertEnv_116 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-CertEnv
d_HasCast'45'CertEnv_118 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_118
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1362
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-CertState
d_HasCast'45'CertState_120 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_120
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1394
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-DState
d_HasCast'45'DState_122 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_122
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1390
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_124 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_124
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1372
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-GState
d_HasCast'45'GState_126 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_126
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1392
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-PState
d_HasCast'45'PState_128 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_128
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1366
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCertState
d_HasCertState_130 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCoin-CertState
d_HasCoin'45'CertState_134 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_134
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                 (coe
                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1360
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDReps
d_HasDReps_136 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDReps-CertState
d_HasDReps'45'CertState_140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1038
d_HasDReps'45'CertState_140
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1332
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDReps-GState
d_HasDReps'45'GState_142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1038
d_HasDReps'45'GState_142
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1286
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDState
d_HasDState_144 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDState-CertState
d_HasDState'45'CertState_148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1182
d_HasDState'45'CertState_148
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1324
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDeposits
d_HasDeposits_150 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasGState
d_HasGState_154 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasGState-CertState
d_HasGState'45'CertState_158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1270
d_HasGState'45'CertState_158
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1328
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPState
d_HasPState_160 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPState-CertState
d_HasPState'45'CertState_164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1238
d_HasPState'45'CertState_164
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1326
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRewards
d_HasRewards_166 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRewards-CertState
d_HasRewards'45'CertState_170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1018
d_HasRewards'45'CertState_170
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1330
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRewards-DState
d_HasRewards'45'DState_172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1018
d_HasRewards'45'DState_172
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1220
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasVDelegs
d_HasVDelegs_174 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasVDelegs-DState
d_HasVDelegs'45'DState_178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasVDelegs_1202
d_HasVDelegs'45'DState_178
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVDelegs'45'DState_1218
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasWdrls
d_HasWdrls_180 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasWdrls-CertEnv
d_HasWdrls'45'CertEnv_184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasWdrls_1144
d_HasWdrls'45'CertEnv_184
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWdrls'45'CertEnv_1160
-- Ledger.Conway.Foreign.HSLedger.Cert._.PState
d_PState_194 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.PStateOf
d_PStateOf_198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1238 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1222
d_PStateOf_198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1246
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PoolEnv
d_PoolEnv_202 :: ()
d_PoolEnv_202 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.Rewards
d_Rewards_204 :: ()
d_Rewards_204 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.RewardsOf
d_RewardsOf_206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1018 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1026
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams
d_StakePoolParams_208 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.certDeposit
d_certDeposit_214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1080 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_214
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1396
-- Ledger.Conway.Foreign.HSLedger.Cert._.certRefund
d_certRefund_216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1080 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_978]
d_certRefund_216
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1412
-- Ledger.Conway.Foreign.HSLedger.Cert._.cwitness
d_cwitness_218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1080 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_218
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1098
-- Ledger.Conway.Foreign.HSLedger.Cert._.rewardsBalance
d_rewardsBalance_234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162 ->
  Integer
d_rewardsBalance_234
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                 (coe
                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1354
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Cert._.updateCertDeposit
d_updateCertDeposit_236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1080 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_236
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1418
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Cert._.voteDelegsOf
d_voteDelegsOf_238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasVDelegs_1202 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegsOf_238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegsOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.wdrlsOf
d_wdrlsOf_240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasWdrls_1144 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrlsOf_1152
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.coldCreds
d_coldCreds_288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1116 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1136
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.epoch
d_epoch_290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1116 ->
  Integer
d_epoch_290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1128
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.pp
d_pp_292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1116 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_pp_292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1130 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.votes
d_votes_294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1116 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_880]
d_votes_294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1132
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.wdrls
d_wdrls_296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1134
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertState.dState
d_dState_300 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1338
d_dState_300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertState.gState
d_gState_302 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1358
d_gState_302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1386 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertState.pState
d_pState_304 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1222
d_pState_304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1384 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState.deposits
d_deposits_326 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1354
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState.rewards
d_rewards_328 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1352
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState.stakeDelegs
d_stakeDelegs_330 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1350
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState.voteDelegs
d_voteDelegs_332 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DelegEnv.delegatees
d_delegatees_336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1334 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DelegEnv.pools
d_pools_338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1344
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DelegEnv.pparams
d_pparams_340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1334 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_pparams_340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1342
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState.ccHotKeys
d_ccHotKeys_354 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1368
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState.deposits
d_deposits_356 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState.dreps
d_dreps_358 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1366 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCertState.CertStateOf
d_CertStateOf_362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1308 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1288
d_CertStateOf_362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1316
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDReps.DRepsOf
d_DRepsOf_366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1038 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1046
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDState.DStateOf
d_DStateOf_370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1182 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1162
d_DStateOf_370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDeposits.DepositsOf
d_DepositsOf_374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_998 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1006
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasGState.GStateOf
d_GStateOf_378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1270 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1254
d_GStateOf_378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1278
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPState.PStateOf
d_PStateOf_382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1238 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1222
d_PStateOf_382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1246
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRewards.RewardsOf
d_RewardsOf_386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1018 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1026
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasVDelegs.voteDelegsOf
d_voteDelegsOf_390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasVDelegs_1202 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegsOf_390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegsOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasWdrls.wdrlsOf
d_wdrlsOf_394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasWdrls_1144 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrlsOf_1152
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PState.pools
d_pools_398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1222 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PState.retiring
d_retiring_400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1222 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams.cost
d_cost_404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1056 ->
  Integer
d_cost_404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1070 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams.margin
d_margin_406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1056 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1072
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams.owners
d_owners_408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1056 ->
  [Integer]
d_owners_408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1068
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams.pledge
d_pledge_410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1056 ->
  Integer
d_pledge_410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1074
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams.rewardAccount
d_rewardAccount_412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1056 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1076
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert.HsTy-CertState
d_HsTy'45'CertState_414 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'CertState_414 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert.Conv-CertState
d_Conv'45'CertState_416 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'CertState_416
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1388 v1 v2 v3
                -> coe
                     C_MkCertState_563
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11863
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1348
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1350
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1352
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1354
                                    (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6153
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1228
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1230
                                    (coe v2))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23749
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1366
                                    (coe v3)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1368
                                    (coe v3)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1370
                                    (coe v3))))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkCertState_563 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1388
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1356 v5 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11863
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v5))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11863 v5 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1356
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v5)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v7)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1054
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v8)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1232 v5 v6
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6153
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v5))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6153 v5 v6
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1232
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v5)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v6)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1372 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23749
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v5))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23749 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1372
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v9
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v5)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v9
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1054
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v7)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Cert.Conv-CertState-CertState'
d_Conv'45'CertState'45'CertState''_418 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'CertState'45'CertState''_418
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1388 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1302
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1176
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1348
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1350
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1350
                           (coe v1)))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'10215''7515'_1264
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1366 (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1368
                           (coe v3)))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1302 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1388
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1356
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1170
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1172
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1172
                           (coe v1))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1480
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1372
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1260
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1262
                           (coe v3))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1480
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Cert.certs-step
certsStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_CertEnv_7677 ->
  T_CertState_561 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_16615 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_561
certsStep = coe d_certs'45'step_432
d_certs'45'step_432 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_CertEnv_7677 ->
  T_CertState_561 ->
  [MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_16615] ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_561
d_certs'45'step_432 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'CertState_416)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_92))
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'CertState_416))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2402
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                  (coe
                     MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'CertEnv_84
            v0))
-- Ledger.Conway.Foreign.HSLedger.Cert.cert-step
certStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_CertEnv_7677 ->
  T_CertState_561 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_16615 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_561
certStep = coe d_cert'45'step_434
d_cert'45'step_434 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_CertEnv_7677 ->
  T_CertState_561 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_16615 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_561
d_cert'45'step_434 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'CertState_416)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_92)
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'CertState_416))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1914
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                  (coe
                     MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'CertEnv_84
            v0))
-- Ledger.Conway.Foreign.HSLedger.Cert.CertState
d_CertState_561 = ()
type T_CertState_561 = CertState
pattern C_MkCertState_563 a0 a1 a2 = MkCertState a0 a1 a2
check_MkCertState_563 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DState_11861 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_PState_6151 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_GState_23747 ->
  T_CertState_561
check_MkCertState_563 = MkCertState
cover_CertState_561 :: CertState -> ()
cover_CertState_561 x
  = case x of
      MkCertState _ _ _ -> ()
