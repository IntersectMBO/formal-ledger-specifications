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
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
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
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Chain
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Slot
d_Slot_888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_888 = erased
-- _.epoch
d_epoch_1048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
d_epoch_1048 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Computational-BBODY
d_Computational'45'BBODY_2692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'BBODY_2692 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_3252
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2700 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block
d_Block_2718 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ChainState
d_ChainState_2726 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.LastAppliedBlock
d_LastAppliedBlock_2750 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ResolvedEB
d_ResolvedEB_2754 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.pendingEB
d_pendingEB_2764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  Maybe AgdaAny
d_pendingEB_2764 ~v0 ~v1 = du_pendingEB_2764
du_pendingEB_2764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  Maybe AgdaAny
du_pendingEB_2764
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_pendingEB_4480
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.bBodyHash
d_bBodyHash_2800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  AgdaAny
d_bBodyHash_2800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_3160
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.bBodySize
d_bBodySize_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  Integer
d_bBodySize_2802 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_3158
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.bHeaderHash
d_bHeaderHash_2804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  AgdaAny
d_bHeaderHash_2804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3152
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.bheader
d_bheader_2806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3120
d_bheader_2806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.ebCert
d_ebCert_2808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648
d_ebCert_2808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3156
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.ts
d_ts_2810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866]
d_ts_2810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3154
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2812 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.≡-bBodySize
d_'8801''45'bBodySize_2814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2814 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ChainState.lastApplied
d_lastApplied_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4434 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418
d_lastApplied_2818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_lastApplied_4442
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ChainState.newEpochState
d_newEpochState_2820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4274
d_newEpochState_2820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.LastAppliedBlock.announcedEB
d_announcedEB_2824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_2824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_announcedEB_4430
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.LastAppliedBlock.headerHash
d_headerHash_2826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  AgdaAny
d_headerHash_2826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_headerHash_4428
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.LastAppliedBlock.slot
d_slot_2828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  AgdaAny
d_slot_2828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4426
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ResolvedEB.closure
d_closure_2832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4468 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866]
d_closure_2832 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_closure_4476
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ResolvedEB.eb
d_eb_2834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4468 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
d_eb_2834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_eb_4474 (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.HasLedgerState-NewEpochState
d_HasLedgerState'45'NewEpochState_2888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3956
d_HasLedgerState'45'NewEpochState_2888 ~v0 ~v1
  = du_HasLedgerState'45'NewEpochState_2888
du_HasLedgerState'45'NewEpochState_2888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3956
du_HasLedgerState'45'NewEpochState_2888
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'NewEpochState_4354
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.EBCert
d_EBCert_3238 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert
d_ValidEBCert_3242 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.certificationDelay
d_certificationDelay_3246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_certificationDelay_3246 v0 ~v1 = du_certificationDelay_3246 v0
du_certificationDelay_3246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
du_certificationDelay_3246 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_certificationDelay_1646
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.EBCert.sig
d_sig_3250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  AgdaAny
d_sig_3250 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1656
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.EBCert.signers
d_signers_3252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  [Integer]
d_signers_3252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1654
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert.quorum
d_quorum_3256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1680 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_quorum_3256 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_quorum_1716
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert.signersKeyed
d_signersKeyed_3260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1680 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_signersKeyed_3260 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signersKeyed_1710
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert.signersSeated
d_signersSeated_3262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1680 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_signersSeated_3262 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signersSeated_1706
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert.validSignature
d_validSignature_3264 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1680 ->
  AgdaAny
d_validSignature_3264 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_validSignature_1712
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.hashEB
d_hashEB_3268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  AgdaAny
d_hashEB_3268 v0 ~v1 v2 = du_hashEB_3268 v0 v2
du_hashEB_3268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  AgdaAny
du_hashEB_3268 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_hashEBRefs_170
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
         (coe v0))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
         (coe v1))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3282 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Computational-TICK
d_Computational'45'TICK_3310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'TICK_3310 v0 ~v1
  = du_Computational'45'TICK_3310 v0
du_Computational'45'TICK_3310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'TICK_3310 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational.du_Computational'45'TICK_3084
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.rbHeaderHashBytes
d_rbHeaderHashBytes_3314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  AgdaAny -> AgdaAny
d_rbHeaderHashBytes_3314 v0 ~v1 = du_rbHeaderHashBytes_3314 v0
du_rbHeaderHashBytes_3314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
du_rbHeaderHashBytes_3314 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_172
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.completeness
d_completeness_3318 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3318 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.computeProof
d_computeProof_3324 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3324 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational.pending?
d_pending'63'_3340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pending'63'_3340 ~v0 ~v1 v2 = du_pending'63'_3340 v2
du_pending'63'_3340 ::
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pending'63'_3340 v0
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
d_blockSlot_3346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  AgdaAny
d_blockSlot_3346 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3108
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational.pendingFailure
d_pendingFailure_3350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_pendingFailure_3350 ~v0 ~v1 v2 = du_pendingFailure_3350 v2
du_pendingFailure_3350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_pendingFailure_3350 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_announcedEB_4430
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
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._.slot
d_slot_3378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4468 ->
  AgdaAny
d_slot_3378 ~v0 ~v1 v2 ~v3 ~v4 = du_slot_3378 v2
du_slot_3378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  AgdaAny
du_slot_3378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4426
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._.headerHash
d_headerHash_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4468 ->
  AgdaAny
d_headerHash_3380 ~v0 ~v1 v2 ~v3 ~v4 = du_headerHash_3380 v2
du_headerHash_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  AgdaAny
du_headerHash_3380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_headerHash_4428
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.pendingEB?
d_pendingEB'63'_3388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4468 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pendingEB'63'_3388 v0 ~v1 ~v2 ~v3 v4 ~v5 v6
  = du_pendingEB'63'_3388 v0 v4 v6
du_pendingEB'63'_3388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4468 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pendingEB'63'_3388 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
      (coe
         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'EBHash_184
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_pendingEB_4480
         (coe v1))
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (let v3
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_eb_4474
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_hashEBRefs_170
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
                  (coe v0))
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
                  (coe v3)))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.delay?
d_delay'63'_3390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4468 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delay'63'_3390 v0 ~v1 v2 v3 v4 ~v5 ~v6
  = du_delay'63'_3390 v0 v2 v3 v4
du_delay'63'_3390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_delay'63'_3390 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.d_dec_16
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_272
         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'43'__2380
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
                  (coe v0)))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4426
               (coe v3))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_certificationDelay_1646
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1372)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1364
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4258)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                           (coe v1)))))))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3108
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
                  (coe v2)))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.sameEpoch?
d_sameEpoch'63'_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4468 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_sameEpoch'63'_3392 v0 ~v1 ~v2 v3 v4 ~v5 ~v6
  = du_sameEpoch'63'_3392 v0 v3 v4
du_sameEpoch'63'_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_sameEpoch'63'_3392 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
      (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
            (coe v0))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4426
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
            (coe v0))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3108
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
                  (coe v1)))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.validCert?
d_validCert'63'_3394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4468 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validCert'63'_3394 v0 ~v1 v2 ~v3 v4 v5 ~v6
  = du_validCert'63'_3394 v0 v2 v4 v5
du_validCert'63'_3394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4434 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4418 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_validCert'63'_3394 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_fromConjuncts_1750)
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_toConjuncts_1760)
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
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4302
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                      (coe v1))))))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1654
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_key_1474
                             (coe v4))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1742
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4302
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                           (coe v1)))
                     (coe v3))))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
               (coe
                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_Dec'45'isSignedByAggregate_182
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
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
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_key_1474
                                   (coe v4)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1742
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4302
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                    (coe v1)))
                              (coe v3))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_172
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
                           (coe v0))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_headerHash_4428
                           (coe v2)))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1656
                        (coe v3))))
               (coe
                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.d_ℚ'45'Dec'45''8804'_42
                     (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_438
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1372)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1364
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4258)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                       (coe v1)))))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_938
                        (coe
                           MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                           (coe
                              MAlonzo.Code.Data.Rational.Properties.d_'43''45'0'45'commutativeMonoid_4354))
                        (\ v4 ->
                           MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_weight_1472
                                (coe v4)))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1742
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4302
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                 (coe v1)))
                           (coe v3))))))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational.Computational-CHAIN
d_Computational'45'CHAIN_3396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CHAIN_3396 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v2 v3 v4 ->
         case coe v4 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
             -> case coe v6 of
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                    -> let v8
                             = MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3156
                                 (coe v5) in
                       coe
                         (case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                              -> let v10
                                       = coe
                                           du_pending'63'_3340
                                           (coe
                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_lastApplied_4442
                                              (coe v3)) in
                                 coe
                                   (case coe v10 of
                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                        -> if coe v11
                                             then case coe v12 of
                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v13
                                                      -> case coe v13 of
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                             -> let v16
                                                                      = coe
                                                                          MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                          (coe
                                                                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'EBHash_184
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
                                                                                   (coe v0))))
                                                                          (coe
                                                                             MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                                                             (coe
                                                                                (\ v16 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v16))))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_announcedEB_4430
                                                                                (coe v14)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                             (let v16
                                                                                    = MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_eb_4474
                                                                                        (coe v7) in
                                                                              coe
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_hashEBRefs_170
                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
                                                                                      (coe v0))
                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
                                                                                      (coe
                                                                                         v16))))) in
                                                                coe
                                                                  (case coe v16 of
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                                       -> if coe v17
                                                                            then case coe v18 of
                                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v19
                                                                                     -> let v20
                                                                                              = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_272
                                                                                                     (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
                                                                                                           (coe
                                                                                                              v0)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Algebra.Bundles.d__'43'__2380
                                                                                                        (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
                                                                                                              (coe
                                                                                                                 v0)))
                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4426
                                                                                                           (coe
                                                                                                              v14))
                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_certificationDelay_1646
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
                                                                                                              (coe
                                                                                                                 v0))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1372)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1364
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4258)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                                                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                                                                                       (coe
                                                                                                                          v3)))))))
                                                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3108
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
                                                                                                              (coe
                                                                                                                 v5))))) in
                                                                                        coe
                                                                                          (case coe
                                                                                                  v20 of
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v21 v22
                                                                                               -> if coe
                                                                                                       v21
                                                                                                    then case coe
                                                                                                                v22 of
                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v23
                                                                                                             -> let v24
                                                                                                                      = coe
                                                                                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                          (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
                                                                                                                                (coe
                                                                                                                                   v0)))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
                                                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
                                                                                                                                (coe
                                                                                                                                   v0))
                                                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4426
                                                                                                                                (coe
                                                                                                                                   v14)))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
                                                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
                                                                                                                                (coe
                                                                                                                                   v0))
                                                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3108
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
                                                                                                                                      (coe
                                                                                                                                         v5))))) in
                                                                                                                coe
                                                                                                                  (case coe
                                                                                                                          v24 of
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v25 v26
                                                                                                                       -> if coe
                                                                                                                               v25
                                                                                                                            then case coe
                                                                                                                                        v26 of
                                                                                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v27
                                                                                                                                     -> let v28
                                                                                                                                              = coe
                                                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_fromConjuncts_1750)
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_toConjuncts_1760)
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                           (coe
                                                                                                                                                              (\ v28 ->
                                                                                                                                                                 coe
                                                                                                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                                                                   (coe
                                                                                                                                                                      v28)
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
                                                                                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4302
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v3))))))))
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1654
                                                                                                                                                              (coe
                                                                                                                                                                 v9))))
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'All_20
                                                                                                                                                              (coe
                                                                                                                                                                 (\ v28 ->
                                                                                                                                                                    coe
                                                                                                                                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                                                                                                                                                                      (coe
                                                                                                                                                                         (\ v29 ->
                                                                                                                                                                            MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_key_1474
                                                                                                                                                                         (coe
                                                                                                                                                                            v28))))
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1742
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4302
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                                                                                                                                       (coe
                                                                                                                                                                          v3)))
                                                                                                                                                                 (coe
                                                                                                                                                                    v9))))
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_Dec'45'isSignedByAggregate_182
                                                                                                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
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
                                                                                                                                                                          (\ v28 ->
                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_key_1474
                                                                                                                                                                               (coe
                                                                                                                                                                                  v28)))
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1742
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4302
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                                                                                                                                                (coe
                                                                                                                                                                                   v3)))
                                                                                                                                                                          (coe
                                                                                                                                                                             v9))))
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_172
                                                                                                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
                                                                                                                                                                       (coe
                                                                                                                                                                          v0))
                                                                                                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_headerHash_4428
                                                                                                                                                                       (coe
                                                                                                                                                                          v14)))
                                                                                                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1656
                                                                                                                                                                    (coe
                                                                                                                                                                       v9))))
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Class.Decidable.Instances.d_ℚ'45'Dec'45''8804'_42
                                                                                                                                                                 (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_438
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1372)
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1364
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4258)
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                                                                                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                                                                                                                                                   (coe
                                                                                                                                                                                      v3)))))))
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_938
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Data.Rational.Properties.d_'43''45'0'45'commutativeMonoid_4354))
                                                                                                                                                                    (\ v28 ->
                                                                                                                                                                       MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_weight_1472
                                                                                                                                                                            (coe
                                                                                                                                                                               v28)))
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1742
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4302
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                                                                                                                                             (coe
                                                                                                                                                                                v3)))
                                                                                                                                                                       (coe
                                                                                                                                                                          v9)))))))) in
                                                                                                                                        coe
                                                                                                                                          (case coe
                                                                                                                                                  v28 of
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v29 v30
                                                                                                                                               -> if coe
                                                                                                                                                       v29
                                                                                                                                                    then case coe
                                                                                                                                                                v30 of
                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v31
                                                                                                                                                             -> coe
                                                                                                                                                                  MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                                                                                                                                  ()
                                                                                                                                                                  erased
                                                                                                                                                                  ()
                                                                                                                                                                  erased
                                                                                                                                                                  (let v32
                                                                                                                                                                         = coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_announcingEnv_4484
                                                                                                                                                                             (coe
                                                                                                                                                                                v3)
                                                                                                                                                                             (coe
                                                                                                                                                                                v14) in
                                                                                                                                                                   coe
                                                                                                                                                                     (let v33
                                                                                                                                                                            = MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_closure_4476
                                                                                                                                                                                (coe
                                                                                                                                                                                   v7) in
                                                                                                                                                                      coe
                                                                                                                                                                        (let v34
                                                                                                                                                                               = coe
                                                                                                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational.du_wellFormed'63'_2910
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v0)
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_eb_4474
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v7)))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'List_58
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                  ()
                                                                                                                                                                                                  erased
                                                                                                                                                                                                  ()
                                                                                                                                                                                                  erased
                                                                                                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'TxRefHash_186
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
                                                                                                                                                                                                        (coe
                                                                                                                                                                                                           v0)))
                                                                                                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_eb_4474
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v7)))
                                                                                                                                                                                            (let v34
                                                                                                                                                                                                   = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 in
                                                                                                                                                                                             coe
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                                                                                                  v34
                                                                                                                                                                                                  ()
                                                                                                                                                                                                  erased
                                                                                                                                                                                                  ()
                                                                                                                                                                                                  erased
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.du_refOf_2900
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        v1))
                                                                                                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_closure_4476
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        v7))))))
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_ebSize_3308
                                                                                                                                                                                                  v1
                                                                                                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_eb_4474
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        v7)))
                                                                                                                                                                                               (let v34
                                                                                                                                                                                                      = coe
                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_announcingEnv_4484
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             v3)
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             v14) in
                                                                                                                                                                                                coe
                                                                                                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_432
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
                                                                                                                                                                                                        (coe
                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924)
                                                                                                                                                                                                        v34)))))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_938
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                                                                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4190
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4600))
                                                                                                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_closure_4476
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        v7)))
                                                                                                                                                                                               (let v34
                                                                                                                                                                                                      = coe
                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_announcingEnv_4484
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             v3)
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             v14) in
                                                                                                                                                                                                coe
                                                                                                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_434
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
                                                                                                                                                                                                        (coe
                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924)
                                                                                                                                                                                                        v34))))))) in
                                                                                                                                                                         coe
                                                                                                                                                                           (let v35
                                                                                                                                                                                  = coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3964
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4254)
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                                                                                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v3))) in
                                                                                                                                                                            coe
                                                                                                                                                                              (case coe
                                                                                                                                                                                      v34 of
                                                                                                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v36 v37
                                                                                                                                                                                   -> if coe
                                                                                                                                                                                           v36
                                                                                                                                                                                        then case coe
                                                                                                                                                                                                    v37 of
                                                                                                                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v38
                                                                                                                                                                                                 -> case coe
                                                                                                                                                                                                           v38 of
                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v39 v40
                                                                                                                                                                                                        -> case coe
                                                                                                                                                                                                                  v40 of
                                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v41 v42
                                                                                                                                                                                                               -> case coe
                                                                                                                                                                                                                         v42 of
                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v43 v44
                                                                                                                                                                                                                      -> coe
                                                                                                                                                                                                                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                              MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                                                                                                                                                                                           ()
                                                                                                                                                                                                                           erased
                                                                                                                                                                                                                           ()
                                                                                                                                                                                                                           erased
                                                                                                                                                                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.d_LEDGERS'45'computeProof_3520
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 v0)
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 v1)
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.du_HasCast'45'LedgersEnv_3140)
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       v32)
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_442
                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924)
                                                                                                                                                                                                                                             v32))
                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_440
                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924)
                                                                                                                                                                                                                                             v32)))))
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 v35)
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 v33))
                                                                                                                                                                                                                           (\ v45 ->
                                                                                                                                                                                                                              case coe
                                                                                                                                                                                                                                     v45 of
                                                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v46 v47
                                                                                                                                                                                                                                  -> coe
                                                                                                                                                                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                             v46)
                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.C_EB_2924
                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                   v39)
                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                      v41)
                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                         v43)
                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            v44)
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            v47)))))))
                                                                                                                                                                                                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                        else coe
                                                                                                                                                                                               seq
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v37)
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     ("EB: the references or size bounds do not hold"
                                                                                                                                                                                                      ::
                                                                                                                                                                                                      Data.Text.Text)))
                                                                                                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError)))))
                                                                                                                                                                  (\ v32 ->
                                                                                                                                                                     case coe
                                                                                                                                                                            v32 of
                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v33 v34
                                                                                                                                                                         -> coe
                                                                                                                                                                              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                                                                                                                                              ()
                                                                                                                                                                              erased
                                                                                                                                                                              ()
                                                                                                                                                                              erased
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Class.Bifunctor.du_map'8321'_112
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Interface.ComputationalRelation.du_Bifunctor'45'ComputationResult_126)
                                                                                                                                                                                 (\ v35 ->
                                                                                                                                                                                    coe
                                                                                                                                                                                      MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational.du_Computational'45'TICK_3084
                                                                                                                                                                                       (coe
                                                                                                                                                                                          v0))
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4304
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4290
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v3)))
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4292
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v3)))
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4294
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v3)))
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4230
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4220
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                                                                                                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v3))))
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4222
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                                                                                                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v3))))
                                                                                                                                                                                          (coe
                                                                                                                                                                                             v33)
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4226
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                                                                                                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v3))))
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4228
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                                                                                                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v3)))))
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4298
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v3)))
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4300
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v3)))
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4302
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v3))))
                                                                                                                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3108
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v5))))))
                                                                                                                                                                              (\ v35 ->
                                                                                                                                                                                 case coe
                                                                                                                                                                                        v35 of
                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v36 v37
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
                                                                                                                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_3252
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v0)
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v1))
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4226
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4296
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v36)))
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4220
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4296
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v36))))
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3964
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'NewEpochState_4354)
                                                                                                                                                                                                   v36)
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4294
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v36)))
                                                                                                                                                                                             v5)
                                                                                                                                                                                          (\ v38 ->
                                                                                                                                                                                             case coe
                                                                                                                                                                                                    v38 of
                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v39 v40
                                                                                                                                                                                                 -> case coe
                                                                                                                                                                                                           v39 of
                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v41 v42
                                                                                                                                                                                                        -> coe
                                                                                                                                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_constructor_4444
                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4304
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4290
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            v36))
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4292
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            v36))
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         v42)
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4230
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4220
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                                                                                                                                                                                                                               v36))
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4222
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                                                                                                                                                                                                                               v36))
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            v41)
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4226
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                                                                                                                                                                                                                               v36))
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4228
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                                                                                                                                                                                                                               v36)))
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4298
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            v36))
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4300
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            v36))
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4302
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            v36)))
                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasCast'45'LastAppliedBlock_4446)
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3108
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                        v5))))
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3152
                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                     v5))
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3114
                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                           v5)))))))))
                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_CHAIN'45'EB_4698
                                                                                                                                                                                                                   v9
                                                                                                                                                                                                                   v14
                                                                                                                                                                                                                   v36
                                                                                                                                                                                                                   v33
                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                      erased
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
                                                                                                                                                                                                                                     v27)
                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                        v31)
                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                           v34)
                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                              v37)
                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                              v40)))))))))))
                                                                                                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                   _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                    else coe
                                                                                                                                                           seq
                                                                                                                                                           (coe
                                                                                                                                                              v30)
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
                                                                                                                                   (coe
                                                                                                                                      v26)
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                      (coe
                                                                                                                                         ("the certificate crosses an epoch boundary, so the announcement has been retired"
                                                                                                                                          ::
                                                                                                                                          Data.Text.Text)))
                                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                    else coe
                                                                                                           seq
                                                                                                           (coe
                                                                                                              v22)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                              (coe
                                                                                                                 ("the certificate comes before the certification delay has elapsed"
                                                                                                                  ::
                                                                                                                  Data.Text.Text)))
                                                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            else coe
                                                                                   seq (coe v18)
                                                                                   (coe
                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                      (coe
                                                                                         du_pendingFailure_3350
                                                                                         (coe v14)))
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             else coe
                                                    seq (coe v12)
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
                                      ("a resolved EB came beside a block that carries no EB certificate"
                                       ::
                                       Data.Text.Text))
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                    -> let v7
                             = MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3156
                                 (coe v5) in
                       coe
                         (case coe v7 of
                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                              -> coe
                                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                   (coe
                                      ("the block carries an EB certificate but no resolved EB came beside it"
                                       ::
                                       Data.Text.Text))
                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
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
                                      (let v8
                                             = MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                 (coe v3) in
                                       coe
                                         (let v9
                                                = MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3108
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
                                                          (coe v5))) in
                                          coe
                                            (let v10
                                                   = coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational.du_NEWEPOCH'45'total_4240
                                                       (coe v0)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
                                                             (coe v0))
                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3108
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
                                                                   (coe v5)))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4440
                                                          (coe v3)) in
                                             coe
                                               (case coe v10 of
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                                    -> coe
                                                         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                         (coe
                                                            MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                         () erased () erased
                                                         (coe
                                                            MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational.du_Computational'45'RUPD_3004
                                                               (coe v0))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4292
                                                                  (coe v8))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4296
                                                                  (coe v8)))
                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4298
                                                               (coe v11))
                                                            v9)
                                                         (\ v13 ->
                                                            case coe v13 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                                -> coe
                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4304
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4290
                                                                              (coe v11))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4292
                                                                              (coe v11))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4294
                                                                              (coe v11))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4296
                                                                              (coe v11))
                                                                           (coe v14)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4300
                                                                              (coe v11))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4302
                                                                              (coe v11)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.C_TICK_3078
                                                                           v11
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v12) (coe v15))))
                                                              _ -> MAlonzo.RTE.mazUnreachableError)
                                                  _ -> MAlonzo.RTE.mazUnreachableError)))))
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
                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_3252
                                                     (coe v0) (coe v1))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4226
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4296
                                                           (coe v9)))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4220
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4296
                                                           (coe v9))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3964
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'NewEpochState_4354)
                                                        v9)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4294
                                                        (coe v9)))
                                                  v5)
                                               (\ v11 ->
                                                  case coe v11 of
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                                      -> case coe v12 of
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                             -> coe
                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_constructor_4444
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4304
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4290
                                                                              (coe v9))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4292
                                                                              (coe v9))
                                                                           (coe v15)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4230
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4220
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                                                                                    v9))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4222
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                                                                                    v9))
                                                                              (coe v14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4226
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                                                                                    v9))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4228
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4244
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4348)
                                                                                    v9)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4298
                                                                              (coe v9))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4300
                                                                              (coe v9))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4302
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
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3108
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
                                                                                          (coe
                                                                                             v5))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3152
                                                                                       (coe v5))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3114
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3126
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3150
                                                                                             (coe
                                                                                                v5)))))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_CHAIN'45'None_4586
                                                                        v9
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           erased
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v10)
                                                                              (coe v13)))))
                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                    _ -> MAlonzo.RTE.mazUnreachableError)
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                            _ -> MAlonzo.RTE.mazUnreachableError)
                  _ -> MAlonzo.RTE.mazUnreachableError
           _ -> MAlonzo.RTE.mazUnreachableError)
