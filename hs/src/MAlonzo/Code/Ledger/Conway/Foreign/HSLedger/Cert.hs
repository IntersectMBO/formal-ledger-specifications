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
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_2020
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Cert._.Computational-CERTS
d_Computational'45'CERTS_14 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_14
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2508
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__18 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__19 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__20 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1282 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1480 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1246] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1480 -> ()
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
-- Ledger.Conway.Foreign.HSLedger.Cert._.CCHotKeys
d_CCHotKeys_30 :: ()
d_CCHotKeys_30 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState
d_GState_31 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.CCHotKeysOf
d_CCHotKeysOf_32 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1110 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_32 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1118
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv
d_CertEnv_50 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertState
d_CertState_54 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertStateOf
d_CertStateOf_58 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1442 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1346
d_CertStateOf_58 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1450
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DCert
d_DCert_62 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.DReps
d_DReps_78 :: ()
d_DReps_78 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.DRepsOf
d_DRepsOf_80 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1126 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_80 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1134
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState
d_DState_82 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.DStateOf
d_DStateOf_86 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1382 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1306
d_DStateOf_86 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1390
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_88 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_88
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe
                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1088
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Cert._.DelegEnv
d_DelegEnv_90 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.DepositPurpose
d_DepositPurpose_94 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.Deposits
d_Deposits_96 :: ()
d_Deposits_96 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.DepositsOf
d_DepositsOf_98 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1072 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_98 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1080
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState
d_GState_112 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.GStateOf
d_GStateOf_116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1334
d_GStateOf_116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1430
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCCHotKeys
d_HasCCHotKeys_120 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1110
d_HasCCHotKeys'45'GState_124
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1474
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-CertEnv
d_HasCast'45'CertEnv_126 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_126
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1498
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-CertState
d_HasCast'45'CertState_128 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_128
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1500
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-DState
d_HasCast'45'DState_130 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_130
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1496
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_132 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_132
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1508
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-GState
d_HasCast'45'GState_134 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_134
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1498
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-PState
d_HasCast'45'PState_136 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_136
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1502
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCertState
d_HasCertState_138 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCoin-CertState
d_HasCoin'45'CertState_142 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_142
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe
                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1496
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDReps
d_HasDReps_144 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDReps-CertState
d_HasDReps'45'CertState_148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1126
d_HasDReps'45'CertState_148
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1484
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDReps-GState
d_HasDReps'45'GState_150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1126
d_HasDReps'45'GState_150
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1472
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDState
d_HasDState_152 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDState-CertState
d_HasDState'45'CertState_156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1382
d_HasDState'45'CertState_156
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1476
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDeposits
d_HasDeposits_158 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasGState
d_HasGState_162 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasGState-CertState
d_HasGState'45'CertState_166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1422
d_HasGState'45'CertState_166
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1480
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_168 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
d_HasPParams'45'CertEnv_168
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1458
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPState
d_HasPState_170 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPState-CertState
d_HasPState'45'CertState_174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1402
d_HasPState'45'CertState_174
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1478
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPools
d_HasPools_176 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPools-CertState
d_HasPools'45'CertState_180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1142
d_HasPools'45'CertState_180
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1486
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPools-PState
d_HasPools'45'PState_182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1142
d_HasPools'45'PState_182
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1468
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRetiring
d_HasRetiring_184 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRetiring-PState
d_HasRetiring'45'PState_188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1158
d_HasRetiring'45'PState_188
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1470
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRewards
d_HasRewards_190 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRewards-CertState
d_HasRewards'45'CertState_194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1174
d_HasRewards'45'CertState_194
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1482
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRewards-DState
d_HasRewards'45'DState_196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1174
d_HasRewards'45'DState_196
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1466
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasStake
d_HasStake_198 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasStakeDelegs
d_HasStakeDelegs_202 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1206
d_HasStakeDelegs'45'DState_206
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1464
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_840
d_HasVoteDelegs'45'CertState_208
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1488
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_840
d_HasVoteDelegs'45'DState_210
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1462
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_212 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'CertEnv_212
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1460
-- Ledger.Conway.Foreign.HSLedger.Cert._.PState
d_PState_222 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.PStateOf
d_PStateOf_226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1402 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1322
d_PStateOf_226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1410
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PoolEnv
d_PoolEnv_230 :: ()
d_PoolEnv_230 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.Pools
d_Pools_232 :: ()
d_Pools_232 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.PoolsOf
d_PoolsOf_234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1150
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.Retiring
d_Retiring_236 :: ()
d_Retiring_236 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.RetiringOf
d_RetiringOf_238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1158 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1166
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.Rewards
d_Rewards_240 :: ()
d_Rewards_240 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.RewardsOf
d_RewardsOf_242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1174 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1182
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.Stake
d_Stake_244 :: ()
d_Stake_244 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakeDelegs
d_StakeDelegs_246 :: ()
d_StakeDelegs_246 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakeDelegsOf
d_StakeDelegsOf_248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1206 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakeOf
d_StakeOf_250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1190 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1198
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams
d_StakePoolParams_252 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.certDeposit
d_certDeposit_258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1246 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_258
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1502
-- Ledger.Conway.Foreign.HSLedger.Cert._.certRefund
d_certRefund_260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1246 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1056]
d_certRefund_260
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1518
-- Ledger.Conway.Foreign.HSLedger.Cert._.cwitness
d_cwitness_262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1246 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_262
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1264
-- Ledger.Conway.Foreign.HSLedger.Cert._.rewardsBalance
d_rewardsBalance_278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1306 ->
  Integer
d_rewardsBalance_278
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe
                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Cert._.updateCertDeposit
d_updateCertDeposit_280 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1246 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_280
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1524
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.coldCreds
d_coldCreds_328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1282 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1302
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.epoch
d_epoch_330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1282 ->
  Integer
d_epoch_330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1294
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.pp
d_pp_332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1282 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pp_332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1296 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.votes
d_votes_334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1282 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930]
d_votes_334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1298
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.wdrls
d_wdrls_336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1300
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertState.dState
d_dState_340 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1480 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1444
d_dState_340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1488 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertState.gState
d_gState_342 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1480 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1464
d_gState_342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1492 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertState.pState
d_pState_344 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1480 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1322
d_pState_344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1490 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState.deposits
d_deposits_366 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1460
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState.rewards
d_rewards_368 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1458
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState.stakeDelegs
d_stakeDelegs_370 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1456
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState.voteDelegs
d_voteDelegs_372 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1454
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DelegEnv.delegatees
d_delegatees_376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1362 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DelegEnv.pools
d_pools_378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1362 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1372
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DelegEnv.pparams
d_pparams_380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1362 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState.ccHotKeys
d_ccHotKeys_394 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1464 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1474
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState.deposits
d_deposits_396 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1464 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1476
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState.dreps
d_dreps_398 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1464 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1472 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1110 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1118
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCertState.CertStateOf
d_CertStateOf_406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1442 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1346
d_CertStateOf_406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1450
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDReps.DRepsOf
d_DRepsOf_410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1126 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1134
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDState.DStateOf
d_DStateOf_414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1382 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1306
d_DStateOf_414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1390
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDeposits.DepositsOf
d_DepositsOf_418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1072 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1080
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasGState.GStateOf
d_GStateOf_422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1334
d_GStateOf_422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1430
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPState.PStateOf
d_PStateOf_426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1402 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1322
d_PStateOf_426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1410
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPools.PoolsOf
d_PoolsOf_430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1150
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRetiring.RetiringOf
d_RetiringOf_434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1158 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1166
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRewards.RewardsOf
d_RewardsOf_438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1174 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1182
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasStake.StakeOf
d_StakeOf_442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1190 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1198
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1206 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PState.pools
d_pools_450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1328
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PState.retiring
d_retiring_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1330
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams.cost
d_cost_456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1032 ->
  Integer
d_cost_456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1046 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams.margin
d_margin_458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1032 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1048
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams.owners
d_owners_460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1032 ->
  [Integer]
d_owners_460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1044
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams.pledge
d_pledge_462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1032 ->
  Integer
d_pledge_462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1050
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams.rewardAccount
d_rewardAccount_464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1032 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1052
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert.HsTy-CertState
d_HsTy'45'CertState_466 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'CertState_466 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert.Conv-CertState
d_Conv'45'CertState_468 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'CertState_468
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1494 v1 v2 v3
                -> coe
                     C_MkCertState_699
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11917
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
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1454
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
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1456
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
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1458
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
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1460
                                    (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6127
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1328
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1330
                                    (coe v2))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23597
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
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1472
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
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1474
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
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1476
                                    (coe v3))))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkCertState_699 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1494
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1462 v5 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11917
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
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11917 v5 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1462
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
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
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
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
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1088
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1332 v5 v6
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6127
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
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6127 v5 v6
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1332
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
                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1478 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23597
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
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23597 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1478
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v9
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
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
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1088
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
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
d_Conv'45'CertState'45'CertState''_470 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'CertState'45'CertState''_470
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1494 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1360
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1320
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1454
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1456
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1456
                           (coe v1)))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'10215''7515'_1344
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1472 (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1474
                           (coe v3)))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1360 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1494
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1462
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1314
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1316
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1316
                           (coe v1))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1480
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1478
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1340
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1342
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
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_CertEnv_7763 ->
  T_CertState_697 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_16463 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_697
certsStep = coe d_certs'45'step_484
d_certs'45'step_484 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_CertEnv_7763 ->
  T_CertState_697 ->
  [MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_16463] ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_697
d_certs'45'step_484 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'CertState_468)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_152))
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'CertState_468))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2508
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                  (coe
                     MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'CertEnv_144
            v0))
-- Ledger.Conway.Foreign.HSLedger.Cert.cert-step
certStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_CertEnv_7763 ->
  T_CertState_697 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_16463 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_697
certStep = coe d_cert'45'step_486
d_cert'45'step_486 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_CertEnv_7763 ->
  T_CertState_697 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_16463 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_697
d_cert'45'step_486 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'CertState_468)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_152)
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'CertState_468))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_2020
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                  (coe
                     MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'CertEnv_144
            v0))
-- Ledger.Conway.Foreign.HSLedger.Cert.CertState
d_CertState_697 = ()
type T_CertState_697 = CertState
pattern C_MkCertState_699 a0 a1 a2 = MkCertState a0 a1 a2
check_MkCertState_699 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DState_11915 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_PState_6125 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_GState_23595 ->
  T_CertState_697
check_MkCertState_699 = MkCertState
cover_CertState_697 :: CertState -> ()
cover_CertState_697 x
  = case x of
      MkCertState _ _ _ -> ()
