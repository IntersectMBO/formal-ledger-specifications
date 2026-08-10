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
import qualified MAlonzo.Code.Class.Convertible.Core
import qualified MAlonzo.Code.Class.Convertible.Instances
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Certs
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- Ledger.Conway.Foreign.Cert._.Computational-CERT
d_Computational'45'CERT_10 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_10
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_2110
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2654
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Cert._.Computational-CERTS
d_Computational'45'CERTS_12 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_12
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2562
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2654
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__16 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1388 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1348] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__16 = erased
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__18 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__19 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__20 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__21 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__22 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__23 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__24 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__25 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__26 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Cert._.CertState
d_CertState_27 = ()
-- Ledger.Conway.Foreign.Cert._.CCHotKeys
d_CCHotKeys_28 :: ()
d_CCHotKeys_28 = erased
-- Ledger.Conway.Foreign.Cert._.GState
d_GState_29 = ()
-- Ledger.Conway.Foreign.Cert._.CCHotKeysOf
d_CCHotKeysOf_30 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1232 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_30 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1240
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.CertEnv
d_CertEnv_48 = ()
-- Ledger.Conway.Foreign.Cert._.CertState
d_CertState_52 = ()
-- Ledger.Conway.Foreign.Cert._.CertStateOf
d_CertStateOf_56 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1456
d_CertStateOf_56 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1560
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.DCert
d_DCert_60 = ()
-- Ledger.Conway.Foreign.Cert._.DState
d_DState_76 = ()
-- Ledger.Conway.Foreign.Cert._.DStateOf
d_DStateOf_80 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1492 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412
d_DStateOf_80 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1500
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.DecEq-DCert
d_DecEq'45'DCert_82 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_82
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2654
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DCert_1368
         (coe v0))
-- Ledger.Conway.Foreign.Cert._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_84 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_84
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2654
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1212
         (coe v0))
-- Ledger.Conway.Foreign.Cert._.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_86 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_86
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2654
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'StakePoolParams_1366
         (coe v0))
-- Ledger.Conway.Foreign.Cert._.DelegEnv
d_DelegEnv_88 = ()
-- Ledger.Conway.Foreign.Cert._.DepositPurpose
d_DepositPurpose_92 = ()
-- Ledger.Conway.Foreign.Cert._.Deposits
d_Deposits_94 :: ()
d_Deposits_94 = erased
-- Ledger.Conway.Foreign.Cert._.DepositsOf
d_DepositsOf_96 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_96 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1204
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.GState
d_GState_110 = ()
-- Ledger.Conway.Foreign.Cert._.GStateOf
d_GStateOf_114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1532 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1444
d_GStateOf_114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1540
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasCCHotKeys
d_HasCCHotKeys_118 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1232
d_HasCCHotKeys'45'CertState_122
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'CertState_1596
-- Ledger.Conway.Foreign.Cert._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1232
d_HasCCHotKeys'45'GState_124
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1584
-- Ledger.Conway.Foreign.Cert._.HasCast-CertEnv
d_HasCast'45'CertEnv_126 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_126
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1612
-- Ledger.Conway.Foreign.Cert._.HasCast-CertState
d_HasCast'45'CertState_128 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_128
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1628
-- Ledger.Conway.Foreign.Cert._.HasCast-DState
d_HasCast'45'DState_130 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_130
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1624
-- Ledger.Conway.Foreign.Cert._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_132 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_132
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1622
-- Ledger.Conway.Foreign.Cert._.HasCast-GState
d_HasCast'45'GState_134 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_134
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1626
-- Ledger.Conway.Foreign.Cert._.HasCast-PState
d_HasCast'45'PState_136 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_136
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1616
-- Ledger.Conway.Foreign.Cert._.HasCertState
d_HasCertState_138 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasCoin-CertState
d_HasCoin'45'CertState_142 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_142
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2654
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1610
         (coe v0))
-- Ledger.Conway.Foreign.Cert._.HasDReps-CertState
d_HasDReps'45'CertState_144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1454
d_HasDReps'45'CertState_144
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1594
-- Ledger.Conway.Foreign.Cert._.HasDReps-GState
d_HasDReps'45'GState_146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1454
d_HasDReps'45'GState_146
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1582
-- Ledger.Conway.Foreign.Cert._.HasDState
d_HasDState_148 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasDState-CertState
d_HasDState'45'CertState_152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1492
d_HasDState'45'CertState_152
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1586
-- Ledger.Conway.Foreign.Cert._.HasDeposits
d_HasDeposits_154 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasGState
d_HasGState_158 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasGState-CertState
d_HasGState'45'CertState_162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1532
d_HasGState'45'CertState_162
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1590
-- Ledger.Conway.Foreign.Cert._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_164 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'CertEnv_164
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1568
-- Ledger.Conway.Foreign.Cert._.HasPState
d_HasPState_166 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasPState-CertState
d_HasPState'45'CertState_170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1512
d_HasPState'45'CertState_170
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1588
-- Ledger.Conway.Foreign.Cert._.HasPools
d_HasPools_172 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasPools-CertState
d_HasPools'45'CertState_176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1248
d_HasPools'45'CertState_176
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1598
-- Ledger.Conway.Foreign.Cert._.HasPools-PState
d_HasPools'45'PState_178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1248
d_HasPools'45'PState_178
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1578
-- Ledger.Conway.Foreign.Cert._.HasRetiring
d_HasRetiring_180 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasRetiring-PState
d_HasRetiring'45'PState_184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1264
d_HasRetiring'45'PState_184
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1580
-- Ledger.Conway.Foreign.Cert._.HasRewards
d_HasRewards_186 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasRewards-CertState
d_HasRewards'45'CertState_190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280
d_HasRewards'45'CertState_190
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1592
-- Ledger.Conway.Foreign.Cert._.HasRewards-DState
d_HasRewards'45'DState_192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280
d_HasRewards'45'DState_192
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1576
-- Ledger.Conway.Foreign.Cert._.HasStake
d_HasStake_194 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasStakeDelegs
d_HasStakeDelegs_198 a0 a1 = ()
-- Ledger.Conway.Foreign.Cert._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1312
d_HasStakeDelegs'45'CertState_202
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'CertState_1602
-- Ledger.Conway.Foreign.Cert._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1312
d_HasStakeDelegs'45'DState_204
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1574
-- Ledger.Conway.Foreign.Cert._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1066
d_HasVoteDelegs'45'CertState_206
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1600
-- Ledger.Conway.Foreign.Cert._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1066
d_HasVoteDelegs'45'DState_208
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1572
-- Ledger.Conway.Foreign.Cert._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_210 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'CertEnv_210
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1570
-- Ledger.Conway.Foreign.Cert._.PState
d_PState_216 = ()
-- Ledger.Conway.Foreign.Cert._.PStateOf
d_PStateOf_220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1512 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428
d_PStateOf_220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1520
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.PoolEnv
d_PoolEnv_224 :: ()
d_PoolEnv_224 = erased
-- Ledger.Conway.Foreign.Cert._.Pools
d_Pools_226 :: ()
d_Pools_226 = erased
-- Ledger.Conway.Foreign.Cert._.PoolsOf
d_PoolsOf_228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1248 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1256
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.Retiring
d_Retiring_230 :: ()
d_Retiring_230 = erased
-- Ledger.Conway.Foreign.Cert._.RetiringOf
d_RetiringOf_232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1264 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1272
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.Rewards
d_Rewards_234 :: ()
d_Rewards_234 = erased
-- Ledger.Conway.Foreign.Cert._.RewardsOf
d_RewardsOf_236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1288
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.Stake
d_Stake_238 :: ()
d_Stake_238 = erased
-- Ledger.Conway.Foreign.Cert._.StakeDelegs
d_StakeDelegs_240 :: ()
d_StakeDelegs_240 = erased
-- Ledger.Conway.Foreign.Cert._.StakeDelegsOf
d_StakeDelegsOf_242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1312 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1320
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.StakeOf
d_StakeOf_244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1296 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1304
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.StakePoolParams
d_StakePoolParams_246 = ()
-- Ledger.Conway.Foreign.Cert._.certDeposit
d_certDeposit_252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1348 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_252
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1630
-- Ledger.Conway.Foreign.Cert._.certRefund
d_certRefund_254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1348 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1180]
d_certRefund_254
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1646
-- Ledger.Conway.Foreign.Cert._.cwitness
d_cwitness_256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1348 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_256
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1370
-- Ledger.Conway.Foreign.Cert._.isPoolRegistered
d_isPoolRegistered_264 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1156
d_isPoolRegistered_264
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2654
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_isPoolRegistered_1706
         (coe v0))
-- Ledger.Conway.Foreign.Cert._.rewardsBalance
d_rewardsBalance_274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  Integer
d_rewardsBalance_274
  = let v0
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2654
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1604
         (coe v0))
-- Ledger.Conway.Foreign.Cert._.updateCertDeposit
d_updateCertDeposit_276 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1348 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_276
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1652
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2654
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Cert._.CertEnv.coldCreds
d_coldCreds_324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1388 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1408
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.CertEnv.epoch
d_epoch_326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1388 ->
  Integer
d_epoch_326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1400
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.CertEnv.pp
d_pp_328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pp_328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1402 (coe v0)
-- Ledger.Conway.Foreign.Cert._.CertEnv.votes
d_votes_330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1388 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1016]
d_votes_330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1404
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.CertEnv.wdrls
d_wdrls_332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1406
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.CertState.dState
d_dState_336 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1572
d_dState_336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1616 (coe v0)
-- Ledger.Conway.Foreign.Cert._.CertState.gState
d_gState_338 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1592
d_gState_338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1620 (coe v0)
-- Ledger.Conway.Foreign.Cert._.CertState.pState
d_pState_340 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428
d_pState_340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1618 (coe v0)
-- Ledger.Conway.Foreign.Cert._.DState.deposits
d_deposits_362 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1572 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1588
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.DState.rewards
d_rewards_364 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1572 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1586
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.DState.stakeDelegs
d_stakeDelegs_366 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1572 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1584
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.DState.voteDelegs
d_voteDelegs_368 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1572 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1582
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.DelegEnv.delegatees
d_delegatees_372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1472 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1484
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.DelegEnv.pools
d_pools_374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1472 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1482
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.DelegEnv.pparams
d_pparams_376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1480
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.GState.ccHotKeys
d_ccHotKeys_390 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1602
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.GState.deposits
d_deposits_392 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1604
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.GState.dreps
d_dreps_394 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1600 (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1232 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1240
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasCertState.CertStateOf
d_CertStateOf_402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1456
d_CertStateOf_402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1560
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasDState.DStateOf
d_DStateOf_406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1492 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412
d_DStateOf_406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1500
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasDeposits.DepositsOf
d_DepositsOf_410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1204
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasGState.GStateOf
d_GStateOf_414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1532 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1444
d_GStateOf_414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1540
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasPState.PStateOf
d_PStateOf_418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1512 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428
d_PStateOf_418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1520
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasPools.PoolsOf
d_PoolsOf_422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1248 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1256
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasRetiring.RetiringOf
d_RetiringOf_426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1264 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1272
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasRewards.RewardsOf
d_RewardsOf_430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1288
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasStake.StakeOf
d_StakeOf_434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1296 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1304
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1312 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1320
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.PState.fPools
d_fPools_442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1438
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.PState.pools
d_pools_444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1436
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.PState.retiring
d_retiring_446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1440
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.StakePoolParams.cost
d_cost_450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1156 ->
  Integer
d_cost_450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1170 (coe v0)
-- Ledger.Conway.Foreign.Cert._.StakePoolParams.margin
d_margin_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1156 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1172
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.StakePoolParams.owners
d_owners_454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1156 ->
  [Integer]
d_owners_454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1168
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.StakePoolParams.pledge
d_pledge_456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1156 ->
  Integer
d_pledge_456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1174
      (coe v0)
-- Ledger.Conway.Foreign.Cert._.StakePoolParams.rewardAccount
d_rewardAccount_458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1156 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1176
      (coe v0)
-- Ledger.Conway.Foreign.Cert.Conv-CertState-CertState'
d_Conv'45'CertState'45'CertState''_460 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'CertState'45'CertState''_460
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1622 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1470
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1426
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1582
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1584
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1584
                           (coe v1)))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'10215''7515'_1454
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1600 (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1602
                           (coe v3)))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1470 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1622
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1590
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1420
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1422
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1422
                           (coe v1))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1606
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1450
                           (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1452
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
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_CertEnv_8953 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_CertState_28129 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    () MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_DCert_17611 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_CertState_28129
certsStep = coe d_certs'45'step_474
d_certs'45'step_474 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_CertEnv_8953 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_CertState_28129 ->
  [MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_DCert_17611] ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_CertState_28129
d_certs'45'step_474 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'CertState_172)
         (coe
            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
            (coe
               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
               (coe MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DCert_164))
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSComputationResult_134
               (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvString_12)
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'CertState_172))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2562
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2654
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                  (coe
                     MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))))
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'CertEnv_156 v0))
-- Ledger.Conway.Foreign.Cert.cert-step
certStep ::
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_CertEnv_8953 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_CertState_28129 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_DCert_17611 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_CertState_28129
certStep = coe d_cert'45'step_476
d_cert'45'step_476 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_CertEnv_8953 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_CertState_28129 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_DCert_17611 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Agda.Builtin.String.T_String_6
    MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_CertState_28129
d_cert'45'step_476 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'CertState_172)
         (coe
            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
            (coe MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DCert_164)
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSComputationResult_134
               (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvString_12)
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'CertState_172))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_2110
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2654
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                  (coe
                     MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))))
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'CertEnv_156 v0))
