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

module MAlonzo.Code.Ledger.Conway.Foreign.Cert where

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
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Certs
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Foreign.Address
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

import GHC.Generics (Generic)
data CertState = MkCertState {dState :: MAlonzo.Code.Ledger.Conway.Foreign.Certs.DState, pState :: MAlonzo.Code.Ledger.Conway.Foreign.Certs.PState, gState :: MAlonzo.Code.Ledger.Conway.Foreign.Certs.GState}
 deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.Cert._.Computational-CERT
d_Computational'45'CERT_10 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_10
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_2126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Cert._.Computational-CERTS
d_Computational'45'CERTS_12 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_12
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2600
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__16 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__16 = erased
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__18 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__19 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__20 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,POST-CERT⦈_
d__'8866'_'8640''10631'_'44'POST'45'CERT'10632'__21 a0 a1 a2 a3
  = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__22 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__23 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__24 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__25 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,POST-CERT⦈_
d__'8866'_'8640''10631'_'44'POST'45'CERT'10632'__26 a0 a1 a2 a3
  = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__27 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__28 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._.CertState
d_CertState_29 = ()
-- Ledger.Conway.Foreign.Cert._.CCHotKeys
d_CCHotKeys_30 :: ()
d_CCHotKeys_30 = erased
-- Ledger.Conway.Foreign.Cert._.GState
d_GState_31 = ()
-- Ledger.Conway.Foreign.Cert._.CCHotKeysOf
d_CCHotKeysOf_32 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1222 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_32 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1230
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.CertEnv
d_CertEnv_54 = ()
-- Ledger.Conway.Foreign.Cert._.CertState
d_CertState_58 = ()
-- Ledger.Conway.Foreign.Cert._.CertStateOf
d_CertStateOf_62 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446
d_CertStateOf_62 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1550
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.DCert
d_DCert_66 = ()
-- Ledger.Conway.Foreign.Cert._.DState
d_DState_82 = ()
-- Ledger.Conway.Foreign.Cert._.DStateOf
d_DStateOf_86 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1482 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402
d_DStateOf_86 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1490
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.DecEq-DCert
d_DecEq'45'DCert_88 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_88
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DCert_1358
         (coe v0))
-- Ledger.Conway.Foreign.Cert._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_90 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_90
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1202
         (coe v0))
-- Ledger.Conway.Foreign.Cert._.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_92 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_92
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'StakePoolParams_1356
         (coe v0))
-- Ledger.Conway.Foreign.Cert._.DelegEnv
d_DelegEnv_94 = ()
-- Ledger.Conway.Foreign.Cert._.DepositPurpose
d_DepositPurpose_98 = ()
-- Ledger.Conway.Foreign.Cert._.Deposits
d_Deposits_100 :: ()
d_Deposits_100 = erased
-- Ledger.Conway.Foreign.Cert._.DepositsOf
d_DepositsOf_102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1194
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.GState
d_GState_116 = ()
-- Ledger.Conway.Foreign.Cert._.GStateOf
d_GStateOf_120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1522 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1434
d_GStateOf_120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1530
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasCCHotKeys
d_HasCCHotKeys_124 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1222
d_HasCCHotKeys'45'CertState_128
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'CertState_1586
-- Ledger.Conway.Foreign.Cert._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1222
d_HasCCHotKeys'45'GState_130
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1574
-- Ledger.Conway.Foreign.Cert._.HasCast-CertEnv
d_HasCast'45'CertEnv_132 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_132
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1602
-- Ledger.Conway.Foreign.Cert._.HasCast-CertState
d_HasCast'45'CertState_134 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_134
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1626
-- Ledger.Conway.Foreign.Cert._.HasCast-DState
d_HasCast'45'DState_136 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_136
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1622
-- Ledger.Conway.Foreign.Cert._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_138 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_138
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1612
-- Ledger.Conway.Foreign.Cert._.HasCast-GState
d_HasCast'45'GState_140 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_140
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1624
-- Ledger.Conway.Foreign.Cert._.HasCast-PState
d_HasCast'45'PState_142 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_142
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1606
-- Ledger.Conway.Foreign.Cert._.HasCertState
d_HasCertState_144 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasCoin-CertState
d_HasCoin'45'CertState_148 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_148
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1600
         (coe v0))
-- Ledger.Conway.Foreign.Cert._.HasDReps-CertState
d_HasDReps'45'CertState_150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444
d_HasDReps'45'CertState_150
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1584
-- Ledger.Conway.Foreign.Cert._.HasDReps-GState
d_HasDReps'45'GState_152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444
d_HasDReps'45'GState_152
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1572
-- Ledger.Conway.Foreign.Cert._.HasDState
d_HasDState_154 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasDState-CertState
d_HasDState'45'CertState_158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1482
d_HasDState'45'CertState_158
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1576
-- Ledger.Conway.Foreign.Cert._.HasDeposits
d_HasDeposits_160 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasGState
d_HasGState_164 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasGState-CertState
d_HasGState'45'CertState_168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1522
d_HasGState'45'CertState_168
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1580
-- Ledger.Conway.Foreign.Cert._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_170 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'CertEnv_170
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1558
-- Ledger.Conway.Foreign.Cert._.HasPState
d_HasPState_172 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasPState-CertState
d_HasPState'45'CertState_176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1502
d_HasPState'45'CertState_176
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1578
-- Ledger.Conway.Foreign.Cert._.HasPools
d_HasPools_178 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasPools-CertState
d_HasPools'45'CertState_182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1238
d_HasPools'45'CertState_182
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1588
-- Ledger.Conway.Foreign.Cert._.HasPools-PState
d_HasPools'45'PState_184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1238
d_HasPools'45'PState_184
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1568
-- Ledger.Conway.Foreign.Cert._.HasRetiring
d_HasRetiring_186 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasRetiring-PState
d_HasRetiring'45'PState_190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1254
d_HasRetiring'45'PState_190
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1570
-- Ledger.Conway.Foreign.Cert._.HasRewards
d_HasRewards_192 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasRewards-CertState
d_HasRewards'45'CertState_196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270
d_HasRewards'45'CertState_196
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1582
-- Ledger.Conway.Foreign.Cert._.HasRewards-DState
d_HasRewards'45'DState_198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270
d_HasRewards'45'DState_198
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1566
-- Ledger.Conway.Foreign.Cert._.HasStake
d_HasStake_200 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasStakeDelegs
d_HasStakeDelegs_204 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1302
d_HasStakeDelegs'45'CertState_208
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'CertState_1592
-- Ledger.Conway.Foreign.Cert._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1302
d_HasStakeDelegs'45'DState_210
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1564
-- Ledger.Conway.Foreign.Cert._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1056
d_HasVoteDelegs'45'CertState_212
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1590
-- Ledger.Conway.Foreign.Cert._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1056
d_HasVoteDelegs'45'DState_214
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1562
-- Ledger.Conway.Foreign.Cert._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_216 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
d_HasWithdrawals'45'CertEnv_216
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1560
-- Ledger.Conway.Foreign.Cert._.PState
d_PState_222 = ()
-- Ledger.Conway.Foreign.Cert._.PStateOf
d_PStateOf_226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1502 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418
d_PStateOf_226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1510
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.PoolEnv
d_PoolEnv_230 :: ()
d_PoolEnv_230 = erased
-- Ledger.Conway.Foreign.Cert._.Pools
d_Pools_232 :: ()
d_Pools_232 = erased
-- Ledger.Conway.Foreign.Cert._.PoolsOf
d_PoolsOf_234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1238 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1246
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.Retiring
d_Retiring_236 :: ()
d_Retiring_236 = erased
-- Ledger.Conway.Foreign.Cert._.RetiringOf
d_RetiringOf_238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1254 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1262
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.Rewards
d_Rewards_240 :: ()
d_Rewards_240 = erased
-- Ledger.Conway.Foreign.Cert._.RewardsOf
d_RewardsOf_242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1278
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.Stake
d_Stake_244 :: ()
d_Stake_244 = erased
-- Ledger.Conway.Foreign.Cert._.StakeDelegs
d_StakeDelegs_246 :: ()
d_StakeDelegs_246 = erased
-- Ledger.Conway.Foreign.Cert._.StakeDelegsOf
d_StakeDelegsOf_248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1302 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1310
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.StakeOf
d_StakeOf_250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1286 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1294
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.StakePoolParams
d_StakePoolParams_252 = ()
-- Ledger.Conway.Foreign.Cert._.certDeposit
d_certDeposit_258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_258
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1628
-- Ledger.Conway.Foreign.Cert._.certRefund
d_certRefund_260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1170]
d_certRefund_260
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1644
-- Ledger.Conway.Foreign.Cert._.cwitness
d_cwitness_262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_262
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1360
-- Ledger.Conway.Foreign.Cert._.isPoolRegistered
d_isPoolRegistered_270 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146
d_isPoolRegistered_270
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_isPoolRegistered_1692
         (coe v0))
-- Ledger.Conway.Foreign.Cert._.rewardsBalance
d_rewardsBalance_280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402 ->
  Integer
d_rewardsBalance_280
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1594
         (coe v0))
-- Ledger.Conway.Foreign.Cert._.updateCertDeposit
d_updateCertDeposit_282 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_282
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1650
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Cert._.CertEnv.coldCreds
d_coldCreds_334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1398
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.CertEnv.epoch
d_epoch_336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  Integer
d_epoch_336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1390
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.CertEnv.pp
d_pp_338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pp_338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1392 (coe v0)
-- Ledger.Conway.Foreign.Cert._.CertEnv.votes
d_votes_340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006]
d_votes_340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1394
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.CertEnv.wdrls
d_wdrls_342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1396
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.CertState.dState
d_dState_346 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1570
d_dState_346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1614 (coe v0)
-- Ledger.Conway.Foreign.Cert._.CertState.gState
d_gState_348 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1590
d_gState_348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1618 (coe v0)
-- Ledger.Conway.Foreign.Cert._.CertState.pState
d_pState_350 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418
d_pState_350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1616 (coe v0)
-- Ledger.Conway.Foreign.Cert._.DState.deposits
d_deposits_372 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1586
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.DState.rewards
d_rewards_374 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1584
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.DState.stakeDelegs
d_stakeDelegs_376 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1582
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.DState.voteDelegs
d_voteDelegs_378 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1580
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.DelegEnv.delegatees
d_delegatees_382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1462 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1474
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.DelegEnv.pools
d_pools_384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1462 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1472
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.DelegEnv.pparams
d_pparams_386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1462 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1470
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.GState.ccHotKeys
d_ccHotKeys_400 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1600
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.GState.deposits
d_deposits_402 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1602
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.GState.dreps
d_dreps_404 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1598 (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1222 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1230
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasCertState.CertStateOf
d_CertStateOf_412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446
d_CertStateOf_412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1550
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasDState.DStateOf
d_DStateOf_416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1482 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402
d_DStateOf_416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1490
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasDeposits.DepositsOf
d_DepositsOf_420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1194
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasGState.GStateOf
d_GStateOf_424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1522 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1434
d_GStateOf_424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1530
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasPState.PStateOf
d_PStateOf_428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1502 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418
d_PStateOf_428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1510
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasPools.PoolsOf
d_PoolsOf_432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1238 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1246
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasRetiring.RetiringOf
d_RetiringOf_436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1254 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1262
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasRewards.RewardsOf
d_RewardsOf_440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1278
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasStake.StakeOf
d_StakeOf_444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1286 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1294
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1302 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1310
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.PState.fPools
d_fPools_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1428
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.PState.pools
d_pools_454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1426
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.PState.retiring
d_retiring_456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1430
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.StakePoolParams.cost
d_cost_460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  Integer
d_cost_460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1160 (coe v0)
-- Ledger.Conway.Foreign.Cert._.StakePoolParams.margin
d_margin_462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1162
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.StakePoolParams.owners
d_owners_464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  [Integer]
d_owners_464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1158
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.StakePoolParams.pledge
d_pledge_466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  Integer
d_pledge_466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1164
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.StakePoolParams.rewardAccount
d_rewardAccount_468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1166
      (coe v0)
-- Ledger.Conway.Foreign.Cert.HsTy-CertState
d_HsTy'45'CertState_470 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'CertState_470 = erased
-- Ledger.Conway.Foreign.Cert.Conv-CertState
d_Conv'45'CertState_472 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'CertState_472
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1620 v1 v2 v3
                -> coe
                     C_MkCertState_713
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13305
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1580
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1582
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1584
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1586
                                    (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6189
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1426
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1428
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1430
                                    (coe v2))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_25129
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1598
                                    (coe v3)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1600
                                    (coe v3)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1602
                                    (coe v3))))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkCertState_713 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1620
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1588 v5 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13305
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v5))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13305 v5 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1588
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v5)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v7)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1202
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1432 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6189
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v5))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6189 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1432
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v5)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
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
                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1604 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_25129
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v5))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_25129 v5 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1604
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v9
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v5)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v9
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1202
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v7)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Cert.Conv-CertState-CertState'
d_Conv'45'CertState'45'CertState''_474 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'CertState'45'CertState''_474
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1620 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1460
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1416
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1580
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1582
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1582
                           (coe v1)))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'10215''7515'_1444
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1598 (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1600
                           (coe v3)))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1460 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1620
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1588
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1410
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1412
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1412
                           (coe v1))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1604
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1440
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1442
                           (coe v3))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Cert.certs-step
certsStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_CertEnv_9111 ->
  T_CertState_711 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_DCert_17911 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_711
certsStep = coe d_certs'45'step_488
d_certs'45'step_488 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_CertEnv_9111 ->
  T_CertState_711 ->
  [MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_DCert_17911] ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_711
d_certs'45'step_488 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'CertState_472)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
               (coe MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DCert_152))
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSComputationResult_134
               (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvString_12)
               (coe d_Conv'45'CertState_472))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2600
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                  (coe
                     MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'CertEnv_144 v0))
-- Ledger.Conway.Foreign.Cert.cert-step
certStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_CertEnv_9111 ->
  T_CertState_711 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_DCert_17911 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_711
certStep = coe d_cert'45'step_490
d_cert'45'step_490 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_CertEnv_9111 ->
  T_CertState_711 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_DCert_17911 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6 T_CertState_711
d_cert'45'step_490 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'CertState_472)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DCert_152)
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSComputationResult_134
               (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvString_12)
               (coe d_Conv'45'CertState_472))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_2126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                  (coe
                     MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'CertEnv_144 v0))
-- Ledger.Conway.Foreign.Cert.CertState
d_CertState_711 = ()
type T_CertState_711 = CertState
pattern C_MkCertState_713 a0 a1 a2 = MkCertState a0 a1 a2
check_MkCertState_713 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_DState_13303 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_PState_6187 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_GState_25127 ->
  T_CertState_711
check_MkCertState_713 = MkCertState
cover_CertState_711 :: CertState -> ()
cover_CertState_711 x
  = case x of
      MkCertState _ _ _ -> ()
