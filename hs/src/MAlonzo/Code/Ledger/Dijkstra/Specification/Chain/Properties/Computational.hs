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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Chain
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_320 ~v0
  = du_HasCast'45'HashProtected_320
du_HasCast'45'HashProtected_320 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1348
-- _.TopLevelTx
d_TopLevelTx_924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_924 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Computational-BBODY
d_Computational'45'BBODY_2684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'BBODY_2684 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_3306
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,CERTIFY⦈_
d__'8866'_'8640''10631'_'44'CERTIFY'10632'__2692 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2694 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.CertifiedEB
d_CertifiedEB_2720 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.CertifyEnv
d_CertifyEnv_2724 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.LastAppliedBlock
d_LastAppliedBlock_2756 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.pendingEB
d_pendingEB_2768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  Maybe AgdaAny
d_pendingEB_2768 ~v0 ~v1 = du_pendingEB_2768
du_pendingEB_2768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  Maybe AgdaAny
du_pendingEB_2768
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_pendingEB_4526
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.totalRefScriptsSize
d_totalRefScriptsSize_2770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  Integer
d_totalRefScriptsSize_2770 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_totalRefScriptsSize_4466
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.CertifiedEB.cert
d_cert_2828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1580
d_cert_2828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_cert_3098
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.CertifiedEB.closure
d_closure_2830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850]
d_closure_2830 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_closure_3102
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.CertifiedEB.eb
d_eb_2832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
d_eb_2832 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_eb_3100
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.CertifyEnv.committee
d_committee_2836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1466]
d_committee_2836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4490
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.CertifyEnv.enactState
d_enactState_2838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_enactState_2838 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4492
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.CertifyEnv.lastApplied
d_lastApplied_2840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418
d_lastApplied_2840 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_lastApplied_4488
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.CertifyEnv.slot
d_slot_2842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  AgdaAny
d_slot_2842 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4496
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.CertifyEnv.treasury
d_treasury_2844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  Integer
d_treasury_2844 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_treasury_4494
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.LastAppliedBlock.announcedEB
d_announcedEB_2854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_2854 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_announcedEB_4430
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.LastAppliedBlock.headerHash
d_headerHash_2856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  AgdaAny
d_headerHash_2856 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_headerHash_4428
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.LastAppliedBlock.slot
d_slot_2858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  AgdaAny
d_slot_2858 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4426
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.HasPParams-EnactState
d_HasPParams'45'EnactState_2894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
d_HasPParams'45'EnactState_2894 ~v0 ~v1
  = du_HasPParams'45'EnactState_2894
du_HasPParams'45'EnactState_2894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
du_HasPParams'45'EnactState_2894
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1372
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.HasLedgerState-NewEpochState
d_HasLedgerState'45'NewEpochState_2998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3948
d_HasLedgerState'45'NewEpochState_2998 ~v0 ~v1
  = du_HasLedgerState'45'NewEpochState_2998
du_HasLedgerState'45'NewEpochState_2998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3948
du_HasLedgerState'45'NewEpochState_2998
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'NewEpochState_4348
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState
d_NewEpochState_3032 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.bcur
d_bcur_3130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3130 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4288
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.bprev
d_bprev_3132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_3132 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4286
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.epochState
d_epochState_3134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4202
d_epochState_3134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.lastEpoch
d_lastEpoch_3136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  AgdaAny
d_lastEpoch_3136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4284
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.leiosCommittee
d_leiosCommittee_3138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1466]
d_leiosCommittee_3138 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4296
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.pd
d_pd_3140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_3140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4294 (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.ru
d_ru_3142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3870
d_ru_3142 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4292 (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Computational-LEDGER
d_Computational'45'LEDGER_3348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_3348 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_Computational'45'LEDGER_4322
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert
d_ValidEBCert_3360 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.certificationDelay
d_certificationDelay_3364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
d_certificationDelay_3364 v0 ~v1 = du_certificationDelay_3364 v0
du_certificationDelay_3364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  AgdaAny
du_certificationDelay_3364 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_certificationDelay_1578
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2880
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert.quorum
d_quorum_3368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1642 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_quorum_3368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_quorum_1662
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert.signersKeyed
d_signersKeyed_3370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1642 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_signersKeyed_3370 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signersKeyed_1658
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert.validSignature
d_validSignature_3372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1642 ->
  AgdaAny
d_validSignature_3372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_validSignature_1660
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.hashEB
d_hashEB_3376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  AgdaAny
d_hashEB_3376 v0 ~v1 v2 = du_hashEB_3376 v0 v2
du_hashEB_3376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  AgdaAny
du_hashEB_3376 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_hashEBRefs_170
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1418
         (coe v0))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
         (coe v1))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3386 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Computational-TICK
d_Computational'45'TICK_3414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'TICK_3414 v0 ~v1
  = du_Computational'45'TICK_3414 v0
du_Computational'45'TICK_3414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'TICK_3414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational.du_Computational'45'TICK_3076
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.rbHeaderHashBytes
d_rbHeaderHashBytes_3418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  AgdaAny -> AgdaAny
d_rbHeaderHashBytes_3418 v0 ~v1 = du_rbHeaderHashBytes_3418 v0
du_rbHeaderHashBytes_3418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
du_rbHeaderHashBytes_3418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_172
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1418
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.completeness
d_completeness_3422 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3422 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.computeProof
d_computeProof_3428 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3428 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._.ls
d_ls_3454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928
d_ls_3454 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4218
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  Integer
d_maxRefScriptSizePerBlock_3470 ~v0 ~v1 v2
  = du_maxRefScriptSizePerBlock_3470 v2
du_maxRefScriptSizePerBlock_3470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  Integer
du_maxRefScriptSizePerBlock_3470 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_462
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1348)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4220
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
                  (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._._._.refScriptSize≤?Bound
d_refScriptSize'8804''63'Bound_3474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4268 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_refScriptSize'8804''63'Bound_3474 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
      (\ v4 v5 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
           (coe
              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920 (coe v4)
              (coe v5)))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_totalRefScriptsSize_4466
         (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4218
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
               (coe v2)))
         (coe v3))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_462
         (coe
            MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1348)
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4220
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
                     (coe v2))))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational.pending?
d_pending'63'_3480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pending'63'_3480 ~v0 ~v1 v2 = du_pending'63'_3480 v2
du_pending'63'_3480 ::
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pending'63'_3480 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) erased))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._.committee
d_committee_3498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1466]
d_committee_3498 v0 ~v1 ~v2 = du_committee_3498 v0
du_committee_3498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1466]
du_committee_3498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4490
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._.enactState
d_enactState_3500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_enactState_3500 v0 ~v1 ~v2 = du_enactState_3500 v0
du_enactState_3500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
du_enactState_3500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4492
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._.slot
d_slot_3504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  AgdaAny
d_slot_3504 v0 ~v1 ~v2 = du_slot_3504 v0
du_slot_3504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  AgdaAny
du_slot_3504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4496
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._.slot
d_slot_3520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  AgdaAny
d_slot_3520 ~v0 v1 ~v2 = du_slot_3520 v1
du_slot_3520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  AgdaAny
du_slot_3520 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4426
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._.headerHash
d_headerHash_3522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  AgdaAny
d_headerHash_3522 ~v0 v1 ~v2 = du_headerHash_3522 v1
du_headerHash_3522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  AgdaAny
du_headerHash_3522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_headerHash_4428
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_3526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_3526 ~v0 ~v1 v2 ~v3 ~v4
  = du_leiosQuorumStakeThreshold_3526 v2
du_leiosQuorumStakeThreshold_3526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_leiosQuorumStakeThreshold_3526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_434
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1372)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4492
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.pendingEB?
d_pendingEB'63'_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pendingEB'63'_3528 v0 ~v1 ~v2 v3 v4
  = du_pendingEB'63'_3528 v0 v3 v4
du_pendingEB'63'_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pendingEB'63'_3528 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
      (coe
         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'EBHash_184
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1418
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_pendingEB_4526
         (coe v1))
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_hashEBRefs_170
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1418
               (coe v0))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_eb_3100
                  (coe v2)))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.delay?
d_delay'63'_3530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delay'63'_3530 v0 ~v1 v2 v3 ~v4 = du_delay'63'_3530 v0 v2 v3
du_delay'63'_3530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_delay'63'_3530 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.d_dec_16
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_272
         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1420
               (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'43'__2380
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1420
                  (coe v0)))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4426
               (coe v2))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_certificationDelay_1578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2880
                  (coe v0))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4492
                        (coe v1))))))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4496
            (coe v1)))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.validCert?
d_validCert'63'_3532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validCert'63'_3532 v0 ~v1 v2 v3 v4
  = du_validCert'63'_3532 v0 v2 v3 v4
du_validCert'63'_3532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_CertifiedEB_3090 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_validCert'63'_3532 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_fromConjuncts_1690)
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_toConjuncts_1698)
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe
            MAlonzo.Code.Class.Decidable.Core.d_dec_16
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22) (coe v4)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_586
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_keyedSeats_1608
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4490
                                (coe v1))))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1586
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_cert_3098
                     (coe v3)))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
            (coe
               MAlonzo.Code.Class.Decidable.Core.d_dec_16
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_Dec'45'isSignedByAggregate_182
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1418
                     (coe v0))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_range_588
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           erased
                           (coe
                              MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                              (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_keyedSeats_1608
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4490
                              (coe v1)))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1586
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_cert_3098
                              (coe v3)))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_172
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1418
                        (coe v0))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_headerHash_4428
                        (coe v2)))
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1588
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_cert_3098
                        (coe v3)))))
            (coe
               MAlonzo.Code.Class.Decidable.Core.d_dec_16
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.d_ℚ'45'Dec'45''8804'_42
                  (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_434
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1372)
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4492
                              (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_signedWeight_1616
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4490
                        (coe v1))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1586
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_cert_3098
                           (coe v3))))))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational.Computational-CERTIFY
d_Computational'45'CERTIFY_3534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTIFY_3534 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v2 v3 v4 ->
         case coe v4 of
           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
             -> let v6
                      = coe
                          du_pending'63'_3480
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_lastApplied_4488
                             (coe v2)) in
                coe
                  (case coe v6 of
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                       -> if coe v7
                            then case coe v8 of
                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                     -> case coe v9 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                            -> let v12
                                                     = coe
                                                         MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'EBHash_184
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1418
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                                            (coe
                                                               (\ v12 ->
                                                                  coe
                                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v12))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_announcedEB_4430
                                                               (coe v10)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_hashEBRefs_170
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1418
                                                                  (coe v0))
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_eb_3100
                                                                     (coe v5))))) in
                                               coe
                                                 (case coe v12 of
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                      -> if coe v13
                                                           then case coe v14 of
                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v15
                                                                    -> let v16
                                                                             = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_272
                                                                                    (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1420
                                                                                          (coe v0)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Algebra.Bundles.d__'43'__2380
                                                                                       (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1420
                                                                                             (coe
                                                                                                v0)))
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4426
                                                                                          (coe v10))
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_certificationDelay_1578
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2880
                                                                                             (coe
                                                                                                v0))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4492
                                                                                                   (coe
                                                                                                      v2))))))
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4496
                                                                                       (coe v2))) in
                                                                       coe
                                                                         (case coe v16 of
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                                              -> if coe v17
                                                                                   then case coe
                                                                                               v18 of
                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v19
                                                                                            -> let v20
                                                                                                     = coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_fromConjuncts_1690)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_toConjuncts_1698)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                  (coe
                                                                                                                     (\ v20 ->
                                                                                                                        coe
                                                                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                          (coe
                                                                                                                             v20)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_keyedSeats_1608
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4490
                                                                                                                                   (coe
                                                                                                                                      v2))))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1586
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_cert_3098
                                                                                                                        (coe
                                                                                                                           v5)))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_Dec'45'isSignedByAggregate_182
                                                                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1418
                                                                                                                        (coe
                                                                                                                           v0))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.IsSet.du_range_588
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                              erased
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796)))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_keyedSeats_1608
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4490
                                                                                                                                 (coe
                                                                                                                                    v2)))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1586
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_cert_3098
                                                                                                                                 (coe
                                                                                                                                    v5)))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_172
                                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1418
                                                                                                                           (coe
                                                                                                                              v0))
                                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_headerHash_4428
                                                                                                                           (coe
                                                                                                                              v10)))
                                                                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1588
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_cert_3098
                                                                                                                           (coe
                                                                                                                              v5)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Decidable.Instances.d_ℚ'45'Dec'45''8804'_42
                                                                                                                     (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_434
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1372)
                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4492
                                                                                                                                 (coe
                                                                                                                                    v2)))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_signedWeight_1616
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4490
                                                                                                                           (coe
                                                                                                                              v2))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1586
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_cert_3098
                                                                                                                              (coe
                                                                                                                                 v5)))))))) in
                                                                                               coe
                                                                                                 (case coe
                                                                                                         v20 of
                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v21 v22
                                                                                                      -> if coe
                                                                                                              v21
                                                                                                           then case coe
                                                                                                                       v22 of
                                                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v23
                                                                                                                    -> coe
                                                                                                                         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                                                                                         ()
                                                                                                                         erased
                                                                                                                         ()
                                                                                                                         erased
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_776
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_740)
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_Computational'45'LEDGER_4322
                                                                                                                                  (coe
                                                                                                                                     v0)
                                                                                                                                  (coe
                                                                                                                                     v1))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3910
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4426
                                                                                                                                  (coe
                                                                                                                                     v10))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1350)
                                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4492
                                                                                                                                        (coe
                                                                                                                                           v2))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4492
                                                                                                                                        (coe
                                                                                                                                           v2))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4492
                                                                                                                                  (coe
                                                                                                                                     v2))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_treasury_4494
                                                                                                                                  (coe
                                                                                                                                     v2)))
                                                                                                                            v3
                                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_closure_3102
                                                                                                                               (coe
                                                                                                                                  v5)))
                                                                                                                         (\ v24 ->
                                                                                                                            case coe
                                                                                                                                   v24 of
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                                                                -> let v27
                                                                                                                                         = MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.d_ValidEB'63'_3204
                                                                                                                                             (coe
                                                                                                                                                v0)
                                                                                                                                             (coe
                                                                                                                                                v1)
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3910
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4426
                                                                                                                                                   (coe
                                                                                                                                                      v10))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1350)
                                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4492
                                                                                                                                                         (coe
                                                                                                                                                            v2))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4492
                                                                                                                                                         (coe
                                                                                                                                                            v2))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4492
                                                                                                                                                   (coe
                                                                                                                                                      v2))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_treasury_4494
                                                                                                                                                   (coe
                                                                                                                                                      v2)))
                                                                                                                                             (coe
                                                                                                                                                v3)
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_eb_3100
                                                                                                                                                (coe
                                                                                                                                                   v5))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_closure_3102
                                                                                                                                                (coe
                                                                                                                                                   v5))
                                                                                                                                             (coe
                                                                                                                                                v24) in
                                                                                                                                   coe
                                                                                                                                     (case coe
                                                                                                                                             v27 of
                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v28 v29
                                                                                                                                          -> if coe
                                                                                                                                                  v28
                                                                                                                                               then case coe
                                                                                                                                                           v29 of
                                                                                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v30
                                                                                                                                                        -> coe
                                                                                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                (coe
                                                                                                                                                                   v25)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_CERTIFY'45'EB_4588
                                                                                                                                                                   v10
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                      (coe
                                                                                                                                                                         v11)
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                         (coe
                                                                                                                                                                            v15)
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                            (coe
                                                                                                                                                                               v19)
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                               (coe
                                                                                                                                                                                  v23)
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v30)
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v26))))))))
                                                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                               else coe
                                                                                                                                                      seq
                                                                                                                                                      (coe
                                                                                                                                                         v29)
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                                         (coe
                                                                                                                                                            ("the certified EB is not valid in the announcing block's environment"
                                                                                                                                                             ::
                                                                                                                                                             Data.Text.Text)))
                                                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                              _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                           else coe
                                                                                                                  seq
                                                                                                                  (coe
                                                                                                                     v22)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                     (coe
                                                                                                                        ("the EB certificate is not valid against the announcing epoch's committee"
                                                                                                                         ::
                                                                                                                         Data.Text.Text)))
                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   else coe
                                                                                          seq
                                                                                          (coe v18)
                                                                                          (coe
                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                             (coe
                                                                                                ("the certificate comes before the certification delay has elapsed"
                                                                                                 ::
                                                                                                 Data.Text.Text)))
                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                           else coe
                                                                  seq (coe v14)
                                                                  (coe
                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                     (coe
                                                                        ("the certified EB is not the one the last applied block announced"
                                                                         ::
                                                                         Data.Text.Text)))
                                                    _ -> MAlonzo.RTE.mazUnreachableError)
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            else coe
                                   seq (coe v8)
                                   (coe
                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                      (coe
                                         ("the chain has no last applied block, so no EB is pending"
                                          ::
                                          Data.Text.Text)))
                     _ -> MAlonzo.RTE.mazUnreachableError)
           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             -> coe
                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_CERTIFY'45'None_4536))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational.Computational-CHAIN
d_Computational'45'CHAIN_4044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CHAIN_4044 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
           (coe
              MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
           () erased () erased
           (coe
              MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
              (d_Computational'45'CERTIFY_3534 (coe v0) (coe v1))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_certifyEnv_4502
                 (coe v3) (coe v4))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3956
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4248)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4238
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4342)
                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                       (coe v3))))
              (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3130
                 (coe v4)))
           (\ v5 ->
              case coe v5 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                  -> coe
                       MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                       (coe
                          MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                       () erased () erased
                       (coe
                          MAlonzo.Code.Class.Bifunctor.du_map'8321'_112
                          (coe
                             MAlonzo.Code.Interface.ComputationalRelation.du_Bifunctor'45'ComputationResult_126)
                          (\ v8 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
                          (coe
                             MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational.du_Computational'45'TICK_3076
                                (coe v0))
                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4298
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4284
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                      (coe v3)))
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4286
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                      (coe v3)))
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4288
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                      (coe v3)))
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4224
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4214
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                            (coe v3))))
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4216
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                            (coe v3))))
                                   (coe v6)
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4220
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                            (coe v3))))
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4222
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                            (coe v3)))))
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4292
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                      (coe v3)))
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4294
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                      (coe v3)))
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4296
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                      (coe v3))))
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3066
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3084
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3124
                                      (coe v4))))))
                       (\ v8 ->
                          case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                              -> coe
                                   MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                   (coe
                                      MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                   () erased () erased
                                   (coe
                                      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_3306
                                         (coe v0) (coe v1))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4220
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
                                               (coe v9)))
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4214
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
                                               (coe v9))))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3956
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'NewEpochState_4348)
                                            v9)
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4288
                                            (coe v9)))
                                      v4)
                                   (\ v11 ->
                                      case coe v11 of
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                          -> case coe v12 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                 -> let v16
                                                          = d_refScriptSize'8804''63'Bound_3474
                                                              (coe v0) (coe v1) (coe v9)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3128
                                                                 (coe v4)) in
                                                    coe
                                                      (case coe v16 of
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                           -> if coe v17
                                                                then case coe v18 of
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v19
                                                                         -> coe
                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_constructor_4444
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4298
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4284
                                                                                          (coe v9))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4286
                                                                                          (coe v9))
                                                                                       (coe v15)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4224
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4214
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
                                                                                                (coe
                                                                                                   v9)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4216
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
                                                                                                (coe
                                                                                                   v9)))
                                                                                          (coe v14)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4220
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
                                                                                                (coe
                                                                                                   v9)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4222
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4290
                                                                                                (coe
                                                                                                   v9))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4292
                                                                                          (coe v9))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4294
                                                                                          (coe v9))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4296
                                                                                          (coe v9)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasCast'45'LastAppliedBlock_4446)
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3066
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3084
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3124
                                                                                                      (coe
                                                                                                         v4))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3126
                                                                                                   (coe
                                                                                                      v4))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3072
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3084
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3124
                                                                                                         (coe
                                                                                                            v4)))))))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_CHAIN_4696
                                                                                    v9 v6
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe v7)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe v10)
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                             (coe
                                                                                                v19)
                                                                                             (coe
                                                                                                v13))))))
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                else coe
                                                                       seq (coe v18)
                                                                       (coe
                                                                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                          (coe
                                                                             ("totalRefScriptsSize > maxRefScriptSizePerBlock"
                                                                              ::
                                                                              Data.Text.Text)))
                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                            _ -> MAlonzo.RTE.mazUnreachableError)
                _ -> MAlonzo.RTE.mazUnreachableError))
