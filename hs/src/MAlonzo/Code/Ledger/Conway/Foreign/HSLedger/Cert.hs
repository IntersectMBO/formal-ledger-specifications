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
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_2076
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Cert._.Computational-CERTS
d_Computational'45'CERTS_14 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_14
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2550
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__18 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1328 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__18 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__19 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__20 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,POST-CERT⦈_
d__'8866'_'8640''10631'_'44'POST'45'CERT'10632'__21 a0 a1 a2 a3
  = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__22 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__23 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__24 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__25 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__26 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__27 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,POST-CERT⦈_
d__'8866'_'8640''10631'_'44'POST'45'CERT'10632'__28 a0 a1 a2 a3
  = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertState
d_CertState_29 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__30 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState
d_GState_31 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.CCHotKeys
d_CCHotKeys_32 :: ()
d_CCHotKeys_32 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.CCHotKeysOf
d_CCHotKeysOf_34 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1176 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_34 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1184
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv
d_CertEnv_56 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertState
d_CertState_60 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertStateOf
d_CertStateOf_64 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1492 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1396
d_CertStateOf_64 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1500
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DCert
d_DCert_68 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState
d_DState_84 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.DStateOf
d_DStateOf_88 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1432 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352
d_DStateOf_88 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1440
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_90 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_90
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe
                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1156
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Cert._.DelegEnv
d_DelegEnv_92 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.DepositPurpose
d_DepositPurpose_96 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.Deposits
d_Deposits_98 :: ()
d_Deposits_98 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.DepositsOf
d_DepositsOf_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1140 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1148
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState
d_GState_114 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.GStateOf
d_GStateOf_118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1472 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1384
d_GStateOf_118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1480
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCCHotKeys
d_HasCCHotKeys_122 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1176
d_HasCCHotKeys'45'CertState_126
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'CertState_1536
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1176
d_HasCCHotKeys'45'GState_128
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1524
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-CertEnv
d_HasCast'45'CertEnv_130 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_130
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1552
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-CertState
d_HasCast'45'CertState_132 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_132
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1576
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-DState
d_HasCast'45'DState_134 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_134
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1572
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_136 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_136
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1562
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-GState
d_HasCast'45'GState_138 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_138
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1574
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCast-PState
d_HasCast'45'PState_140 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_140
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1556
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCertState
d_HasCertState_142 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCoin-CertState
d_HasCoin'45'CertState_146 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_146
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe
                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1550
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDReps-CertState
d_HasDReps'45'CertState_148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1244
d_HasDReps'45'CertState_148
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1534
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDReps-GState
d_HasDReps'45'GState_150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1244
d_HasDReps'45'GState_150
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1522
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDState
d_HasDState_152 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDState-CertState
d_HasDState'45'CertState_156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1432
d_HasDState'45'CertState_156
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1526
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDeposits
d_HasDeposits_158 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasGState
d_HasGState_162 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasGState-CertState
d_HasGState'45'CertState_166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1472
d_HasGState'45'CertState_166
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1530
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_168 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430
d_HasPParams'45'CertEnv_168
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1508
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPState
d_HasPState_170 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPState-CertState
d_HasPState'45'CertState_174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1452
d_HasPState'45'CertState_174
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1528
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPools
d_HasPools_176 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPools-CertState
d_HasPools'45'CertState_180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1192
d_HasPools'45'CertState_180
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1538
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPools-PState
d_HasPools'45'PState_182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1192
d_HasPools'45'PState_182
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1518
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRetiring
d_HasRetiring_184 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRetiring-PState
d_HasRetiring'45'PState_188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1208
d_HasRetiring'45'PState_188
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1520
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRewards
d_HasRewards_190 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRewards-CertState
d_HasRewards'45'CertState_194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1224
d_HasRewards'45'CertState_194
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1532
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRewards-DState
d_HasRewards'45'DState_196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1224
d_HasRewards'45'DState_196
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1516
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasStake
d_HasStake_198 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasStakeDelegs
d_HasStakeDelegs_202 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1256
d_HasStakeDelegs'45'CertState_206
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'CertState_1542
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1256
d_HasStakeDelegs'45'DState_208
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1514
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_956
d_HasVoteDelegs'45'CertState_210
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1540
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_956
d_HasVoteDelegs'45'DState_212
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1512
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_214 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'CertEnv_214
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1510
-- Ledger.Conway.Foreign.HSLedger.Cert._.PState
d_PState_220 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.PStateOf
d_PStateOf_224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1452 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368
d_PStateOf_224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1460
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PoolEnv
d_PoolEnv_228 :: ()
d_PoolEnv_228 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.Pools
d_Pools_230 :: ()
d_Pools_230 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.PoolsOf
d_PoolsOf_232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1192 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1200
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.Retiring
d_Retiring_234 :: ()
d_Retiring_234 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.RetiringOf
d_RetiringOf_236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1208 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.Rewards
d_Rewards_238 :: ()
d_Rewards_238 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.RewardsOf
d_RewardsOf_240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1224 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1232
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.Stake
d_Stake_242 :: ()
d_Stake_242 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakeDelegs
d_StakeDelegs_244 :: ()
d_StakeDelegs_244 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakeDelegsOf
d_StakeDelegsOf_246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1256 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1264
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakeOf
d_StakeOf_248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1248
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams
d_StakePoolParams_250 = ()
-- Ledger.Conway.Foreign.HSLedger.Cert._.certDeposit
d_certDeposit_256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_256
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1578
-- Ledger.Conway.Foreign.HSLedger.Cert._.certRefund
d_certRefund_258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1124]
d_certRefund_258
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1594
-- Ledger.Conway.Foreign.HSLedger.Cert._.cwitness
d_cwitness_260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_260
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1310
-- Ledger.Conway.Foreign.HSLedger.Cert._.isPoolRegistered
d_isPoolRegistered_268 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100
d_isPoolRegistered_268
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe
                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_isPoolRegistered_1642
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Cert._.rewardsBalance
d_rewardsBalance_278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  Integer
d_rewardsBalance_278
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe
                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1544
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Cert._.updateCertDeposit
d_updateCertDeposit_280 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_280
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1600
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.coldCreds
d_coldCreds_332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1328 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.epoch
d_epoch_334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1328 ->
  Integer
d_epoch_334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1340
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.pp
d_pp_336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1328 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pp_336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1342 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.votes
d_votes_338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1328 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_906]
d_votes_338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1344
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertEnv.wdrls
d_wdrls_340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertState.dState
d_dState_344 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1520
d_dState_344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertState.gState
d_gState_346 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1540
d_gState_346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1568 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.CertState.pState
d_pState_348 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368
d_pState_348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1566 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState.deposits
d_deposits_370 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1536
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState.rewards
d_rewards_372 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1534
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState.stakeDelegs
d_stakeDelegs_374 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1532
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DState.voteDelegs
d_voteDelegs_376 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1530
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DelegEnv.delegatees
d_delegatees_380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1412 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1424
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DelegEnv.pools
d_pools_382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1412 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1422
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.DelegEnv.pparams
d_pparams_384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1412 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1420
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState.ccHotKeys
d_ccHotKeys_398 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1540 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1550
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState.deposits
d_deposits_400 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1540 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1552
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.GState.dreps
d_dreps_402 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1540 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1548 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1176 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1184
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasCertState.CertStateOf
d_CertStateOf_410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1492 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1396
d_CertStateOf_410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1500
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDState.DStateOf
d_DStateOf_414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1432 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352
d_DStateOf_414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1440
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasDeposits.DepositsOf
d_DepositsOf_418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1140 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1148
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasGState.GStateOf
d_GStateOf_422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1472 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1384
d_GStateOf_422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1480
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPState.PStateOf
d_PStateOf_426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1452 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368
d_PStateOf_426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1460
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasPools.PoolsOf
d_PoolsOf_430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1192 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1200
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRetiring.RetiringOf
d_RetiringOf_434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1208 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasRewards.RewardsOf
d_RewardsOf_438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1224 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1232
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasStake.StakeOf
d_StakeOf_442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1248
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1256 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1264
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PState.fPools
d_fPools_450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1378
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PState.pools
d_pools_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.PState.retiring
d_retiring_454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams.cost
d_cost_458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  Integer
d_cost_458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1114 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams.margin
d_margin_460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1116
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams.owners
d_owners_462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  [Integer]
d_owners_462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1112
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams.pledge
d_pledge_464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  Integer
d_pledge_464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1118
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert._.StakePoolParams.rewardAccount
d_rewardAccount_466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1120
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Cert.HsTy-CertState
d_HsTy'45'CertState_468 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'CertState_468 = erased
-- Ledger.Conway.Foreign.HSLedger.Cert.Conv-CertState
d_Conv'45'CertState_470 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'CertState_470
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1570 v1 v2 v3
                -> coe
                     C_MkCertState_701
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_13209
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
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1530
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
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1532
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
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1534
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
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1536
                                    (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6133
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
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1376
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
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1378
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1380
                                    (coe v2))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_24889
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
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1548
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
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1550
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
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1552
                                    (coe v3))))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkCertState_701 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1570
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1538 v5 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_13209
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
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_13209 v5 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1538
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
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
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
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
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1156
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1382 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6133
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
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70)))
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
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70)))
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
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6133 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1382
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70))
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
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v6)))
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
                                                (coe v7)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1554 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_24889
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
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_24889 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1554
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v9
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
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
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1156
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v7)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Cert.Conv-CertState-CertState'
d_Conv'45'CertState'45'CertState''_472 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'CertState'45'CertState''_472
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1570 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1410
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1366
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1530
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1532
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1532
                           (coe v1)))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'10215''7515'_1394
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1548 (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1550
                           (coe v3)))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1410 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1570
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1538
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1360
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1362
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1362
                           (coe v1))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1554
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1390
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1392
                           (coe v3))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Cert.certs-step
certsStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_CertEnv_9055 ->
  T_CertState_699 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_17755 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_699
certsStep = coe d_certs'45'step_486
d_certs'45'step_486 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_CertEnv_9055 ->
  T_CertState_699 ->
  [MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_17755] ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_699
d_certs'45'step_486 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'CertState_470)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_154))
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'CertState_470))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2550
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                  (coe
                     MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'CertEnv_146
            v0))
-- Ledger.Conway.Foreign.HSLedger.Cert.cert-step
certStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_CertEnv_9055 ->
  T_CertState_699 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_17755 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_699
certStep = coe d_cert'45'step_488
d_cert'45'step_488 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_CertEnv_9055 ->
  T_CertState_699 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DCert_17755 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_699
d_cert'45'step_488 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'CertState_470)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DCert_154)
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14)
               (coe d_Conv'45'CertState_470))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_2076
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                  (coe
                     MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'CertEnv_146
            v0))
-- Ledger.Conway.Foreign.HSLedger.Cert.CertState
d_CertState_699 = ()
type T_CertState_699 = CertState
pattern C_MkCertState_701 a0 a1 a2 = MkCertState a0 a1 a2
check_MkCertState_701 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_DState_13207 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_PState_6131 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_GState_24887 ->
  T_CertState_699
check_MkCertState_701 = MkCertState
cover_CertState_699 :: CertState -> ()
cover_CertState_699 x
  = case x of
      MkCertState _ _ _ -> ()
