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
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
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
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1344
-- _.Slot
d_Slot_884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_884 = erased
-- _.TopLevelTx
d_TopLevelTx_922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_922 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Computational-BBODY
d_Computational'45'BBODY_2680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'BBODY_2680 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_3310
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,CERTIFY⦈_
d__'8866'_'8640''10631'_'44'CERTIFY'10632'__2688 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2690 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block
d_Block_2708 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.CertifyEnv
d_CertifyEnv_2718 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.LastAppliedBlock
d_LastAppliedBlock_2752 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ResolvedEB
d_ResolvedEB_2756 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.pendingEB
d_pendingEB_2774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  Maybe AgdaAny
d_pendingEB_2774 ~v0 ~v1 = du_pendingEB_2774
du_pendingEB_2774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  Maybe AgdaAny
du_pendingEB_2774
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_pendingEB_4524
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.totalRefScriptsSize
d_totalRefScriptsSize_2776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842] ->
  Integer
d_totalRefScriptsSize_2776 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_totalRefScriptsSize_4474
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.bBodyHash
d_bBodyHash_2816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  AgdaAny
d_bBodyHash_2816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_3106
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.bBodySize
d_bBodySize_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Integer
d_bBodySize_2818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_3104
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.bHeaderHash
d_bHeaderHash_2820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  AgdaAny
d_bHeaderHash_2820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3098
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.bheader
d_bheader_2822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3066
d_bheader_2822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.ebCert
d_ebCert_2824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644
d_ebCert_2824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3102
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.ts
d_ts_2826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842]
d_ts_2826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3100
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2828 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.≡-bBodySize
d_'8801''45'bBodySize_2830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2830 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.CertifyEnv.committee
d_committee_2834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1458]
d_committee_2834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4496
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.CertifyEnv.enactState
d_enactState_2836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324
d_enactState_2836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4498
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.CertifyEnv.lastApplied
d_lastApplied_2838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426
d_lastApplied_2838 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_lastApplied_4494
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.CertifyEnv.treasury
d_treasury_2840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  Integer
d_treasury_2840 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_treasury_4500
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.LastAppliedBlock.announcedEB
d_announcedEB_2850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_2850 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_announcedEB_4438
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.LastAppliedBlock.headerHash
d_headerHash_2852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  AgdaAny
d_headerHash_2852 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_headerHash_4436
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.LastAppliedBlock.slot
d_slot_2854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  AgdaAny
d_slot_2854 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4434
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ResolvedEB.closure
d_closure_2858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4528 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842]
d_closure_2858 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_closure_4536
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ResolvedEB.eb
d_eb_2860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
d_eb_2860 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_eb_4534 (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.HasPParams-EnactState
d_HasPParams'45'EnactState_2896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
d_HasPParams'45'EnactState_2896 ~v0 ~v1
  = du_HasPParams'45'EnactState_2896
du_HasPParams'45'EnactState_2896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
du_HasPParams'45'EnactState_2896
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1368
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.HasLedgerState-NewEpochState
d_HasLedgerState'45'NewEpochState_3000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3944
d_HasLedgerState'45'NewEpochState_3000 ~v0 ~v1
  = du_HasLedgerState'45'NewEpochState_3000
du_HasLedgerState'45'NewEpochState_3000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3944
du_HasLedgerState'45'NewEpochState_3000
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'NewEpochState_4344
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState
d_NewEpochState_3034 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.bcur
d_bcur_3132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3132 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4284
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.bprev
d_bprev_3134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_3134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4282
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.epochState
d_epochState_3136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4198
d_epochState_3136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.lastEpoch
d_lastEpoch_3138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  AgdaAny
d_lastEpoch_3138 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4280
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.leiosCommittee
d_leiosCommittee_3140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1458]
d_leiosCommittee_3140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4292
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.pd
d_pd_3142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_3142 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4290 (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.NewEpochState.ru
d_ru_3144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3866
d_ru_3144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4288 (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Computational-LEDGER
d_Computational'45'LEDGER_3350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_3350 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_Computational'45'LEDGER_4318
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.EBCert
d_EBCert_3362 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert
d_ValidEBCert_3366 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.EBCert.sig
d_sig_3372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  AgdaAny
d_sig_3372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1652
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.EBCert.signers
d_signers_3374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  [Integer]
d_signers_3374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1650
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert.quorum
d_quorum_3378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1676 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_quorum_3378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_quorum_1712
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert.signersKeyed
d_signersKeyed_3382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1676 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_signersKeyed_3382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signersKeyed_1706
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert.signersSeated
d_signersSeated_3384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1676 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_signersSeated_3384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signersSeated_1702
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert.validSignature
d_validSignature_3386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1676 ->
  AgdaAny
d_validSignature_3386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_validSignature_1708
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.hashEB
d_hashEB_3390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  AgdaAny
d_hashEB_3390 v0 ~v1 v2 = du_hashEB_3390 v0 v2
du_hashEB_3390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  AgdaAny
du_hashEB_3390 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_hashEBRefs_170
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1414
         (coe v0))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
         (coe v1))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3400 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Computational-TICK
d_Computational'45'TICK_3428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'TICK_3428 v0 ~v1
  = du_Computational'45'TICK_3428 v0
du_Computational'45'TICK_3428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'TICK_3428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational.du_Computational'45'TICK_3072
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.rbHeaderHashBytes
d_rbHeaderHashBytes_3432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  AgdaAny -> AgdaAny
d_rbHeaderHashBytes_3432 v0 ~v1 = du_rbHeaderHashBytes_3432 v0
du_rbHeaderHashBytes_3432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
du_rbHeaderHashBytes_3432 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_172
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1414
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.completeness
d_completeness_3436 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3436 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.computeProof
d_computeProof_3442 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3442 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._.ls
d_ls_3468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924
d_ls_3468 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._._._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  Integer
d_maxRefScriptSizePerBlock_3484 ~v0 ~v1 v2
  = du_maxRefScriptSizePerBlock_3484 v2
du_maxRefScriptSizePerBlock_3484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  Integer
du_maxRefScriptSizePerBlock_3484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_462
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1344)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                  (coe v0)))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._._._.refScriptSize≤?Bound
d_refScriptSize'8804''63'Bound_3488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4264 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_refScriptSize'8804''63'Bound_3488 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__70
      (\ v4 v5 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
           (coe
              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2920 (coe v4)
              (coe v5)))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_totalRefScriptsSize_4474
         (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4214
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
               (coe v2)))
         (coe v3))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_462
         (coe
            MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1344)
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                     (coe v2))))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational.pending?
d_pending'63'_3494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pending'63'_3494 ~v0 ~v1 v2 = du_pending'63'_3494 v2
du_pending'63'_3494 ::
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pending'63'_3494 v0
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
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational.blockSlot
d_blockSlot_3500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  AgdaAny
d_blockSlot_3500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3054
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational.pendingFailure
d_pendingFailure_3504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_pendingFailure_3504 ~v0 ~v1 v2 = du_pendingFailure_3504 v2
du_pendingFailure_3504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_pendingFailure_3504 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_announcedEB_4438
              (coe v0) in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
           -> coe
                ("the certified EB is not the one the last applied block announced"
                 ::
                 Data.Text.Text)
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe ("the last applied block announced no EB" :: Data.Text.Text)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._.committee
d_committee_3530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4528 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1458]
d_committee_3530 v0 ~v1 ~v2 ~v3 = du_committee_3530 v0
du_committee_3530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1458]
du_committee_3530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4496
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._.headerHash
d_headerHash_3546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4528 ->
  AgdaAny
d_headerHash_3546 ~v0 v1 ~v2 ~v3 = du_headerHash_3546 v1
du_headerHash_3546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  AgdaAny
du_headerHash_3546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_headerHash_4436
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4528 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_3550 ~v0 ~v1 v2 ~v3 ~v4 ~v5
  = du_leiosQuorumStakeThreshold_3550 v2
du_leiosQuorumStakeThreshold_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
du_leiosQuorumStakeThreshold_3550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_434
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1368)
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4498
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.pendingEB?
d_pendingEB'63'_3552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4528 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pendingEB'63'_3552 v0 ~v1 ~v2 v3 ~v4 v5
  = du_pendingEB'63'_3552 v0 v3 v5
du_pendingEB'63'_3552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4528 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pendingEB'63'_3552 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
      (coe
         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'EBHash_184
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1414
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_pendingEB_4524
         (coe v1))
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_hashEBRefs_170
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1414
               (coe v0))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_eb_4534
                  (coe v2)))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.validCert?
d_validCert'63'_3554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4528 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validCert'63'_3554 v0 ~v1 v2 v3 v4 ~v5
  = du_validCert'63'_3554 v0 v2 v3 v4
du_validCert'63'_3554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_CertifyEnv_4484 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_validCert'63'_3554 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_fromConjuncts_1746)
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_toConjuncts_1756)
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
                          MAlonzo.Code.Axiom.Set.du_fromList_456
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Data.List.Base.d_upTo_402
                             (coe
                                MAlonzo.Code.Data.List.Base.du_length_268
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4496
                                   (coe v1)))))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1650
                  (coe v3))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
            (coe
               MAlonzo.Code.Class.Decidable.Core.d_dec_16
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'All_20
                  (coe
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                          (coe
                             (\ v5 ->
                                MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_key_1470
                             (coe v4))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1738
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4496
                        (coe v1))
                     (coe v3))))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
               (coe
                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_Dec'45'isSignedByAggregate_182
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1414
                        (coe v0))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Data.List.Base.du_mapMaybe_258
                           (coe
                              (\ v4 ->
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_key_1470
                                   (coe v4)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1738
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4496
                                 (coe v1))
                              (coe v3))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_172
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1414
                           (coe v0))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_headerHash_4436
                           (coe v2)))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1652
                        (coe v3))))
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
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1368)
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4498
                                 (coe v1)))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                        (coe
                           MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                           (coe
                              MAlonzo.Code.Data.Rational.Properties.d_'43''45'0'45'commutativeMonoid_4354))
                        (\ v4 ->
                           MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_weight_1468
                                (coe v4)))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1738
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4496
                              (coe v1))
                           (coe v3))))))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational.Computational-CERTIFY
d_Computational'45'CERTIFY_3556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTIFY_3556 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v2 v3 v4 ->
         case coe v4 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
             -> case coe v5 of
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                    -> case coe v6 of
                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                           -> let v9
                                    = coe
                                        du_pending'63'_3494
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_lastApplied_4494
                                           (coe v2)) in
                              coe
                                (case coe v9 of
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                     -> if coe v10
                                          then case coe v11 of
                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                                   -> case coe v12 of
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                                          -> let v15
                                                                   = coe
                                                                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                       (coe
                                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'EBHash_184
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1414
                                                                                (coe v0))))
                                                                       (coe
                                                                          MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                                                          (coe
                                                                             (\ v15 ->
                                                                                coe
                                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v15))))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_announcedEB_4438
                                                                             (coe v13)))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_hashEBRefs_170
                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1414
                                                                                (coe v0))
                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_eb_4534
                                                                                   (coe v8))))) in
                                                             coe
                                                               (case coe v15 of
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                    -> if coe v16
                                                                         then case coe v17 of
                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v18
                                                                                  -> let v19
                                                                                           = coe
                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_fromConjuncts_1746)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_toConjuncts_1756)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                        (coe
                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                        (coe
                                                                                                           (\ v19 ->
                                                                                                              coe
                                                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                (coe
                                                                                                                   v19)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.List.Base.d_upTo_402
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Data.List.Base.du_length_268
                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4496
                                                                                                                            (coe
                                                                                                                               v2)))))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1650
                                                                                                           (coe
                                                                                                              v7))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'All_20
                                                                                                           (coe
                                                                                                              (\ v19 ->
                                                                                                                 coe
                                                                                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                                                                                                                   (coe
                                                                                                                      (\ v20 ->
                                                                                                                         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_key_1470
                                                                                                                      (coe
                                                                                                                         v19))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1738
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4496
                                                                                                                 (coe
                                                                                                                    v2))
                                                                                                              (coe
                                                                                                                 v7))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_Dec'45'isSignedByAggregate_182
                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1414
                                                                                                                 (coe
                                                                                                                    v0))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.du_fromList_456
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Data.List.Base.du_mapMaybe_258
                                                                                                                    (coe
                                                                                                                       (\ v19 ->
                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_key_1470
                                                                                                                            (coe
                                                                                                                               v19)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1738
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4496
                                                                                                                          (coe
                                                                                                                             v2))
                                                                                                                       (coe
                                                                                                                          v7))))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_172
                                                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1414
                                                                                                                    (coe
                                                                                                                       v0))
                                                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_headerHash_4436
                                                                                                                    (coe
                                                                                                                       v13)))
                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1652
                                                                                                                 (coe
                                                                                                                    v7))))
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
                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1368)
                                                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4498
                                                                                                                          (coe
                                                                                                                             v2)))))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d_'43''45'0'45'commutativeMonoid_4354))
                                                                                                                 (\ v19 ->
                                                                                                                    MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_weight_1468
                                                                                                                         (coe
                                                                                                                            v19)))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1738
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_committee_4496
                                                                                                                       (coe
                                                                                                                          v2))
                                                                                                                    (coe
                                                                                                                       v7)))))))) in
                                                                                     coe
                                                                                       (case coe
                                                                                               v19 of
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v20 v21
                                                                                            -> if coe
                                                                                                    v20
                                                                                                 then case coe
                                                                                                             v21 of
                                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v22
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
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_Computational'45'LEDGER_4318
                                                                                                                        (coe
                                                                                                                           v0)
                                                                                                                        (coe
                                                                                                                           v1))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3906
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4434
                                                                                                                        (coe
                                                                                                                           v13))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1346)
                                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1338
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4498
                                                                                                                              (coe
                                                                                                                                 v2))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4498
                                                                                                                              (coe
                                                                                                                                 v2))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4498
                                                                                                                        (coe
                                                                                                                           v2))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_treasury_4500
                                                                                                                        (coe
                                                                                                                           v2)))
                                                                                                                  v3
                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_closure_4536
                                                                                                                     (coe
                                                                                                                        v8)))
                                                                                                               (\ v23 ->
                                                                                                                  case coe
                                                                                                                         v23 of
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v24 v25
                                                                                                                      -> let v26
                                                                                                                               = MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.d_ValidEB'63'_3182
                                                                                                                                   (coe
                                                                                                                                      v0)
                                                                                                                                   (coe
                                                                                                                                      v1)
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3906
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4434
                                                                                                                                         (coe
                                                                                                                                            v13))
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1346)
                                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1338
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4498
                                                                                                                                               (coe
                                                                                                                                                  v2))))
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4498
                                                                                                                                               (coe
                                                                                                                                                  v2))))
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_enactState_4498
                                                                                                                                         (coe
                                                                                                                                            v2))
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_treasury_4500
                                                                                                                                         (coe
                                                                                                                                            v2)))
                                                                                                                                   (coe
                                                                                                                                      v3)
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_eb_4534
                                                                                                                                      (coe
                                                                                                                                         v8))
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_closure_4536
                                                                                                                                      (coe
                                                                                                                                         v8))
                                                                                                                                   (coe
                                                                                                                                      v23) in
                                                                                                                         coe
                                                                                                                           (case coe
                                                                                                                                   v26 of
                                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v27 v28
                                                                                                                                -> if coe
                                                                                                                                        v27
                                                                                                                                     then case coe
                                                                                                                                                 v28 of
                                                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v29
                                                                                                                                              -> coe
                                                                                                                                                   MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                      (coe
                                                                                                                                                         v24)
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_CERTIFY'45'EB_4596
                                                                                                                                                         v13
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                            (coe
                                                                                                                                                               v14)
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                               (coe
                                                                                                                                                                  v18)
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                  (coe
                                                                                                                                                                     v22)
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                     (coe
                                                                                                                                                                        v29)
                                                                                                                                                                     (coe
                                                                                                                                                                        v25)))))))
                                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                     else coe
                                                                                                                                            seq
                                                                                                                                            (coe
                                                                                                                                               v28)
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
                                                                                                           v21)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                           (coe
                                                                                                              ("the EB certificate is not valid against the announcing epoch's committee"
                                                                                                               ::
                                                                                                               Data.Text.Text)))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                         else coe
                                                                                seq (coe v17)
                                                                                (coe
                                                                                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                   (coe
                                                                                      du_pendingFailure_3504
                                                                                      (coe v13)))
                                                                  _ -> MAlonzo.RTE.mazUnreachableError)
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                          else coe
                                                 seq (coe v11)
                                                 (coe
                                                    MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                    (coe
                                                       ("the chain has no last applied block, so no EB is pending"
                                                        ::
                                                        Data.Text.Text)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)
                         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                           -> coe
                                MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                (coe
                                   ("the block carries an EB certificate but no resolved EB came beside it"
                                    ::
                                    Data.Text.Text))
                         _ -> MAlonzo.RTE.mazUnreachableError
                  MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                    -> case coe v6 of
                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                           -> coe
                                MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                (coe
                                   ("a resolved EB came beside a block that carries no EB certificate"
                                    ::
                                    Data.Text.Text))
                         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                           -> coe
                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_CERTIFY'45'None_4546))
                         _ -> MAlonzo.RTE.mazUnreachableError
                  _ -> MAlonzo.RTE.mazUnreachableError
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational.Computational-CHAIN
d_Computational'45'CHAIN_4004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CHAIN_4004 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v2 v3 v4 ->
         case coe v4 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
             -> coe
                  MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                  (coe
                     MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                  () erased () erased
                  (coe
                     MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                     (d_Computational'45'CERTIFY_3556 (coe v0) (coe v1))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_certifyEnv_4506
                        (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3952
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4244)
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4234
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4338)
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                              (coe v3))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3102
                           (coe v5))
                        (coe v6)))
                  (\ v7 ->
                     case coe v7 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                         -> coe
                              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                              () erased () erased
                              (coe
                                 MAlonzo.Code.Class.Bifunctor.du_map'8321'_112
                                 (coe
                                    MAlonzo.Code.Interface.ComputationalRelation.du_Bifunctor'45'ComputationResult_126)
                                 (\ v10 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
                                 (coe
                                    MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational.du_Computational'45'TICK_3072
                                       (coe v0))
                                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4294
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4280
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                             (coe v3)))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4282
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                             (coe v3)))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4284
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                             (coe v3)))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4220
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4210
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                   (coe v3))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                   (coe v3))))
                                          (coe v8)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                   (coe v3))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4218
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                   (coe v3)))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4288
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                             (coe v3)))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4290
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                             (coe v3)))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4292
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                             (coe v3))))
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3054
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
                                             (coe v5))))))
                              (\ v10 ->
                                 case coe v10 of
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                     -> let v13
                                              = coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_delayChecks'63'_4614
                                                  (coe v0)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1368)
                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                           (coe v11))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_lastApplied_4450
                                                     (coe v3))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3102
                                                     (coe v5))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3054
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
                                                           (coe v5)))) in
                                        coe
                                          (case coe v13 of
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                               -> if coe v14
                                                    then case coe v15 of
                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v16
                                                             -> coe
                                                                  MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                  (coe
                                                                     MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                                  () erased () erased
                                                                  (coe
                                                                     MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_3310
                                                                        (coe v0) (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                                              (coe v11)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4210
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                                              (coe v11))))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3952
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'NewEpochState_4344)
                                                                           v11)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4284
                                                                           (coe v11)))
                                                                     v5)
                                                                  (\ v17 ->
                                                                     case coe v17 of
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                         -> case coe v18 of
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                                -> let v22
                                                                                         = d_refScriptSize'8804''63'Bound_3488
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                v1)
                                                                                             (coe
                                                                                                v11)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3100
                                                                                                (coe
                                                                                                   v5)) in
                                                                                   coe
                                                                                     (case coe
                                                                                             v22 of
                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                                          -> if coe
                                                                                                  v23
                                                                                               then case coe
                                                                                                           v24 of
                                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v25
                                                                                                        -> coe
                                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_constructor_4452
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4294
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4280
                                                                                                                         (coe
                                                                                                                            v11))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4282
                                                                                                                         (coe
                                                                                                                            v11))
                                                                                                                      (coe
                                                                                                                         v21)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4220
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4210
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                                                                                               (coe
                                                                                                                                  v11)))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4212
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                                                                                               (coe
                                                                                                                                  v11)))
                                                                                                                         (coe
                                                                                                                            v20)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4216
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                                                                                               (coe
                                                                                                                                  v11)))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4218
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4286
                                                                                                                               (coe
                                                                                                                                  v11))))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4288
                                                                                                                         (coe
                                                                                                                            v11))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4290
                                                                                                                         (coe
                                                                                                                            v11))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4292
                                                                                                                         (coe
                                                                                                                            v11)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasCast'45'LastAppliedBlock_4454)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3054
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
                                                                                                                                     (coe
                                                                                                                                        v5))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3098
                                                                                                                                  (coe
                                                                                                                                     v5))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3060
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
                                                                                                                                        (coe
                                                                                                                                           v5)))))))))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_CHAIN_4748
                                                                                                                   v11
                                                                                                                   v8
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                      (coe
                                                                                                                         v9)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                         (coe
                                                                                                                            v12)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                            (coe
                                                                                                                               v16)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                               (coe
                                                                                                                                  v25)
                                                                                                                               (coe
                                                                                                                                  v19)))))))
                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                               else coe
                                                                                                      seq
                                                                                                      (coe
                                                                                                         v24)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                         (coe
                                                                                                            ("totalRefScriptsSize > maxRefScriptSizePerBlock"
                                                                                                             ::
                                                                                                             Data.Text.Text)))
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                    else coe
                                                           seq (coe v15)
                                                           (coe
                                                              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                              (coe
                                                                 ("the certificate comes before the certification delay has elapsed"
                                                                  ::
                                                                  Data.Text.Text)))
                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                   _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
