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
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Computational-BBODY
d_Computational'45'BBODY_2676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_264
d_Computational'45'BBODY_2676 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_3244
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2684 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block
d_Block_2702 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ChainState
d_ChainState_2714 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.LastAppliedBlock
d_LastAppliedBlock_2738 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ResolvedEB
d_ResolvedEB_2742 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.pendingEB
d_pendingEB_2752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  Maybe AgdaAny
d_pendingEB_2752 ~v0 ~v1 = du_pendingEB_2752
du_pendingEB_2752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  Maybe AgdaAny
du_pendingEB_2752
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_pendingEB_4496
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.bBodyHash
d_bBodyHash_2788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  AgdaAny
d_bBodyHash_2788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_3158
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.bBodySize
d_bBodySize_2790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  Integer
d_bBodySize_2790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_3156
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.bHeaderHash
d_bHeaderHash_2792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  AgdaAny
d_bHeaderHash_2792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3150
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.bheader
d_bheader_2794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3118
d_bheader_2794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.ebCert
d_ebCert_2796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676
d_ebCert_2796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3154
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.ts
d_ts_2798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878]
d_ts_2798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3152
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2800 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Block.≡-bBodySize
d_'8801''45'bBodySize_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2802 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ChainState.lastApplied
d_lastApplied_2810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4442 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426
d_lastApplied_2810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_lastApplied_4450
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ChainState.newEpochState
d_newEpochState_2812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4288
d_newEpochState_2812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.LastAppliedBlock.announcedEB
d_announcedEB_2816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_2816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_announcedEB_4438
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.LastAppliedBlock.headerHash
d_headerHash_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  AgdaAny
d_headerHash_2818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_headerHash_4436
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.LastAppliedBlock.slot
d_slot_2820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  AgdaAny
d_slot_2820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4434
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ResolvedEB.closure
d_closure_2824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4476 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3878]
d_closure_2824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_closure_4484
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ResolvedEB.eb
d_eb_2826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4476 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
d_eb_2826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_eb_4482 (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.HasLedgerState-NewEpochState
d_HasLedgerState'45'NewEpochState_2880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3962
d_HasLedgerState'45'NewEpochState_2880 ~v0 ~v1
  = du_HasLedgerState'45'NewEpochState_2880
du_HasLedgerState'45'NewEpochState_2880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3962
du_HasLedgerState'45'NewEpochState_2880
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'NewEpochState_4368
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.EBCert
d_EBCert_3242 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert
d_ValidEBCert_3246 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.certificationDelay
d_certificationDelay_3250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
d_certificationDelay_3250 v0 ~v1 = du_certificationDelay_3250 v0
du_certificationDelay_3250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_320 ->
  AgdaAny
du_certificationDelay_3250 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_certificationDelay_1656
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2904
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.EBCert.sig
d_sig_3254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  AgdaAny
d_sig_3254 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1684
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.EBCert.signers
d_signers_3256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  [Integer]
d_signers_3256 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1682
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert.quorum
d_quorum_3260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1708 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_quorum_3260 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_quorum_1744
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert.signersKeyed
d_signersKeyed_3264 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1708 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_signersKeyed_3264 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signersKeyed_1738
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert.signersSeated
d_signersSeated_3266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1708 ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_signersSeated_3266 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signersSeated_1734
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.ValidEBCert.validSignature
d_validSignature_3268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_ValidEBCert_1708 ->
  AgdaAny
d_validSignature_3268 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_validSignature_1740
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.hashEB
d_hashEB_3272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  AgdaAny
d_hashEB_3272 v0 ~v1 v2 = du_hashEB_3272 v0 v2
du_hashEB_3272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  AgdaAny
du_hashEB_3272 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_hashEBRefs_170
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1430
         (coe v0))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
         (coe v1))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3286 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.Computational-TICK
d_Computational'45'TICK_3314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_264
d_Computational'45'TICK_3314 v0 ~v1
  = du_Computational'45'TICK_3314 v0
du_Computational'45'TICK_3314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_264
du_Computational'45'TICK_3314 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational.du_Computational'45'TICK_3066
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.rbHeaderHashBytes
d_rbHeaderHashBytes_3318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  AgdaAny -> AgdaAny
d_rbHeaderHashBytes_3318 v0 ~v1 = du_rbHeaderHashBytes_3318 v0
du_rbHeaderHashBytes_3318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny
du_rbHeaderHashBytes_3318 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_172
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1430
         (coe v0))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.completeness
d_completeness_3322 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3322 = erased
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.computeProof
d_computeProof_3328 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3328 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_304
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational.pending?
d_pending'63'_3344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pending'63'_3344 ~v0 ~v1 v2 = du_pending'63'_3344 v2
du_pending'63'_3344 ::
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pending'63'_3344 v0
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
d_blockSlot_3350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  AgdaAny
d_blockSlot_3350 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3106
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
            (coe v0)))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational.pendingFailure
d_pendingFailure_3354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_pendingFailure_3354 ~v0 ~v1 v2 = du_pendingFailure_3354 v2
du_pendingFailure_3354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_pendingFailure_3354 v0
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
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._.slot
d_slot_3382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4476 ->
  AgdaAny
d_slot_3382 ~v0 ~v1 v2 ~v3 ~v4 = du_slot_3382 v2
du_slot_3382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  AgdaAny
du_slot_3382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4434
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._._.headerHash
d_headerHash_3384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4476 ->
  AgdaAny
d_headerHash_3384 ~v0 ~v1 v2 ~v3 ~v4 = du_headerHash_3384 v2
du_headerHash_3384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  AgdaAny
du_headerHash_3384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_headerHash_4436
      (coe v0)
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.pendingEB?
d_pendingEB'63'_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4476 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pendingEB'63'_3392 v0 ~v1 ~v2 ~v3 v4 ~v5 v6
  = du_pendingEB'63'_3392 v0 v4 v6
du_pendingEB'63'_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4476 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pendingEB'63'_3392 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
      (coe
         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'EBHash_184
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1430
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_pendingEB_4496
         (coe v1))
      (coe
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
         (let v3
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_eb_4482
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_hashEBRefs_170
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1430
                  (coe v0))
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
                  (coe v3)))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.delay?
d_delay'63'_3394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4476 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delay'63'_3394 v0 ~v1 v2 v3 v4 ~v5 ~v6
  = du_delay'63'_3394 v0 v2 v3 v4
du_delay'63'_3394 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_delay'63'_3394 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.d_dec_16
      (coe
         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_272
         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
               (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'43'__2380
            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
                  (coe v0)))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4434
               (coe v3))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_certificationDelay_1656
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2904
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_756
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1376)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1368
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4272)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                           (coe v1)))))))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3106
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
                  (coe v2)))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.sameEpoch?
d_sameEpoch'63'_3396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4476 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_sameEpoch'63'_3396 v0 ~v1 ~v2 v3 v4 ~v5 ~v6
  = du_sameEpoch'63'_3396 v0 v3 v4
du_sameEpoch'63'_3396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_sameEpoch'63'_3396 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
      (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
            (coe v0))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4434
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
            (coe v0))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3106
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
                  (coe v1)))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational._.validCert?
d_validCert'63'_3398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ResolvedEB_4476 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validCert'63'_3398 v0 ~v1 v2 ~v3 v4 v5 ~v6
  = du_validCert'63'_3398 v0 v2 v4 v5
du_validCert'63'_3398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_ChainState_4442 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.T_LastAppliedBlock_4426 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1676 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_validCert'63'_3398 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_fromConjuncts_1778)
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_toConjuncts_1788)
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
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4316
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                      (coe v1))))))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1682
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_key_1482
                             (coe v4))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1770
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4316
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                           (coe v1)))
                     (coe v3))))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
               (coe
                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_Dec'45'isSignedByAggregate_182
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1430
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
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_key_1482
                                   (coe v4)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1770
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4316
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                    (coe v1)))
                              (coe v3))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_172
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1430
                           (coe v0))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_headerHash_4436
                           (coe v2)))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1684
                        (coe v3))))
               (coe
                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.d_ℚ'45'Dec'45''8804'_42
                     (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_442
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_756
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1376)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1368
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4272)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
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
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_weight_1480
                                (coe v4)))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1770
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4316
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                 (coe v1)))
                           (coe v3))))))))
-- Ledger.Dijkstra.Specification.Chain.Properties.Computational.Computational-CHAIN
d_Computational'45'CHAIN_3400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_264
d_Computational'45'CHAIN_3400 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_444
      (\ v2 v3 v4 ->
         let v5
               = MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3154
                   (coe v4) in
         coe
           (case coe v5 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
                -> let v7
                         = MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_resolvedEB_4492
                             (coe v2) in
                   coe
                     (case coe v7 of
                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                          -> let v9
                                   = coe
                                       du_pending'63'_3344
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_lastApplied_4450
                                          (coe v3)) in
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
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1430
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
                                                                         (let v15
                                                                                = MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_eb_4482
                                                                                    (coe v8) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_hashEBRefs_170
                                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1430
                                                                                  (coe v0))
                                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
                                                                                  (coe v15))))) in
                                                            coe
                                                              (case coe v15 of
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                   -> if coe v16
                                                                        then case coe v17 of
                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v18
                                                                                 -> let v19
                                                                                          = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_272
                                                                                                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
                                                                                                       (coe
                                                                                                          v0)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Algebra.Bundles.d__'43'__2380
                                                                                                    (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4434
                                                                                                       (coe
                                                                                                          v13))
                                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_certificationDelay_1656
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2904
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_756
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1376)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1368
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4272)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                                                                                   (coe
                                                                                                                      v3)))))))
                                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3106
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
                                                                                                          (coe
                                                                                                             v4))))) in
                                                                                    coe
                                                                                      (case coe
                                                                                              v19 of
                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v20 v21
                                                                                           -> if coe
                                                                                                   v20
                                                                                                then case coe
                                                                                                            v21 of
                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v22
                                                                                                         -> let v23
                                                                                                                  = coe
                                                                                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                      (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
                                                                                                                            (coe
                                                                                                                               v0)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
                                                                                                                            (coe
                                                                                                                               v0))
                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_slot_4434
                                                                                                                            (coe
                                                                                                                               v13)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
                                                                                                                            (coe
                                                                                                                               v0))
                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3106
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
                                                                                                                                  (coe
                                                                                                                                     v4))))) in
                                                                                                            coe
                                                                                                              (case coe
                                                                                                                      v23 of
                                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v24 v25
                                                                                                                   -> if coe
                                                                                                                           v24
                                                                                                                        then case coe
                                                                                                                                    v25 of
                                                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v26
                                                                                                                                 -> let v27
                                                                                                                                          = coe
                                                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_fromConjuncts_1778)
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_toConjuncts_1788)
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                       (coe
                                                                                                                                                          (\ v27 ->
                                                                                                                                                             coe
                                                                                                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                                                               (coe
                                                                                                                                                                  v27)
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
                                                                                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4316
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                                                                                                                                              (coe
                                                                                                                                                                                 v3))))))))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1682
                                                                                                                                                          (coe
                                                                                                                                                             v6))))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'All_20
                                                                                                                                                          (coe
                                                                                                                                                             (\ v27 ->
                                                                                                                                                                coe
                                                                                                                                                                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                                                                                                                                                                  (coe
                                                                                                                                                                     (\ v28 ->
                                                                                                                                                                        MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_key_1482
                                                                                                                                                                     (coe
                                                                                                                                                                        v27))))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1770
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4316
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                                                                                                                                   (coe
                                                                                                                                                                      v3)))
                                                                                                                                                             (coe
                                                                                                                                                                v6))))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_Dec'45'isSignedByAggregate_182
                                                                                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1430
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
                                                                                                                                                                      (\ v27 ->
                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_key_1482
                                                                                                                                                                           (coe
                                                                                                                                                                              v27)))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1770
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4316
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                                                                                                                                            (coe
                                                                                                                                                                               v3)))
                                                                                                                                                                      (coe
                                                                                                                                                                         v6))))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_rbHeaderHashBytes_172
                                                                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1430
                                                                                                                                                                   (coe
                                                                                                                                                                      v0))
                                                                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_headerHash_4436
                                                                                                                                                                   (coe
                                                                                                                                                                      v13)))
                                                                                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1684
                                                                                                                                                                (coe
                                                                                                                                                                   v6))))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Class.Decidable.Instances.d_ℚ'45'Dec'45''8804'_42
                                                                                                                                                             (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_442
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_756
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.du_HasPParams'45'EnactState_1376)
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1368
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4272)
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                                                                                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                                                                                                                                               (coe
                                                                                                                                                                                  v3)))))))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_938
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Data.Rational.Properties.d_'43''45'0'45'commutativeMonoid_4354))
                                                                                                                                                                (\ v27 ->
                                                                                                                                                                   MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_weight_1480
                                                                                                                                                                        (coe
                                                                                                                                                                           v27)))
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_seats_1770
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4316
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                                                                                                                                         (coe
                                                                                                                                                                            v3)))
                                                                                                                                                                   (coe
                                                                                                                                                                      v6)))))))) in
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
                                                                                                                                                              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_162)
                                                                                                                                                              ()
                                                                                                                                                              erased
                                                                                                                                                              ()
                                                                                                                                                              erased
                                                                                                                                                              (let v31
                                                                                                                                                                     = coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_announcingEnv_4500
                                                                                                                                                                         (coe
                                                                                                                                                                            v3)
                                                                                                                                                                         (coe
                                                                                                                                                                            v13) in
                                                                                                                                                               coe
                                                                                                                                                                 (let v32
                                                                                                                                                                        = MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_closure_4484
                                                                                                                                                                            (coe
                                                                                                                                                                               v8) in
                                                                                                                                                                  coe
                                                                                                                                                                    (let v33
                                                                                                                                                                           = coe
                                                                                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational.du_wellFormed'63'_2900
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v0)
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_eb_4482
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v8)))
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
                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1430
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       v0)))
                                                                                                                                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_eb_4482
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 v8)))
                                                                                                                                                                                        (let v33
                                                                                                                                                                                               = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 in
                                                                                                                                                                                         coe
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                                                                                              v33
                                                                                                                                                                                              ()
                                                                                                                                                                                              erased
                                                                                                                                                                                              ()
                                                                                                                                                                                              erased
                                                                                                                                                                                              (\ v34 ->
                                                                                                                                                                                                 coe
                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_txRefHash_3294
                                                                                                                                                                                                      v1
                                                                                                                                                                                                      v34)
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3902
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v34)))
                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_closure_4484
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v8))))))
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_ebSize_3296
                                                                                                                                                                                              v1
                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_eb_4482
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v8)))
                                                                                                                                                                                           (let v33
                                                                                                                                                                                                  = coe
                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_announcingEnv_4500
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v3)
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v13) in
                                                                                                                                                                                            coe
                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_436
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_756
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3930)
                                                                                                                                                                                                    v33)))))
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
                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4202
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4612))
                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_closure_4484
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v8)))
                                                                                                                                                                                           (let v33
                                                                                                                                                                                                  = coe
                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_announcingEnv_4500
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v3)
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v13) in
                                                                                                                                                                                            coe
                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_438
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_756
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3930)
                                                                                                                                                                                                    v33))))))) in
                                                                                                                                                                     coe
                                                                                                                                                                       (let v34
                                                                                                                                                                              = coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3970
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4268)
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                                                                                                                                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v3))) in
                                                                                                                                                                        coe
                                                                                                                                                                          (case coe
                                                                                                                                                                                  v33 of
                                                                                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v35 v36
                                                                                                                                                                               -> if coe
                                                                                                                                                                                       v35
                                                                                                                                                                                    then case coe
                                                                                                                                                                                                v36 of
                                                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v37
                                                                                                                                                                                             -> case coe
                                                                                                                                                                                                       v37 of
                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v38 v39
                                                                                                                                                                                                    -> case coe
                                                                                                                                                                                                              v39 of
                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v40 v41
                                                                                                                                                                                                           -> case coe
                                                                                                                                                                                                                     v41 of
                                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v42 v43
                                                                                                                                                                                                                  -> coe
                                                                                                                                                                                                                       MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                          MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_162)
                                                                                                                                                                                                                       ()
                                                                                                                                                                                                                       erased
                                                                                                                                                                                                                       ()
                                                                                                                                                                                                                       erased
                                                                                                                                                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.d_LEDGERS'45'computeProof_3526
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             v0)
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             v1)
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.du_HasCast'45'LedgersEnv_3146)
                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                   v31)
                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_446
                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_756
                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3930)
                                                                                                                                                                                                                                         v31))
                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_444
                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_756
                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3930)
                                                                                                                                                                                                                                         v31)))))
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             v34)
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             v32))
                                                                                                                                                                                                                       (\ v44 ->
                                                                                                                                                                                                                          case coe
                                                                                                                                                                                                                                 v44 of
                                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v45 v46
                                                                                                                                                                                                                              -> coe
                                                                                                                                                                                                                                   MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                         v45)
                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.C_EB_2920
                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                               v38)
                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                  v40)
                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                     v42)
                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                        v43)
                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                        v46)))))))
                                                                                                                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                    else coe
                                                                                                                                                                                           seq
                                                                                                                                                                                           (coe
                                                                                                                                                                                              v36)
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 ("EB: the references or size bounds do not hold"
                                                                                                                                                                                                  ::
                                                                                                                                                                                                  Data.Text.Text)))
                                                                                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))))
                                                                                                                                                              (\ v31 ->
                                                                                                                                                                 case coe
                                                                                                                                                                        v31 of
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v32 v33
                                                                                                                                                                     -> coe
                                                                                                                                                                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_162)
                                                                                                                                                                          ()
                                                                                                                                                                          erased
                                                                                                                                                                          ()
                                                                                                                                                                          erased
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Class.Bifunctor.du_map'8321'_112
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Interface.ComputationalRelation.du_Bifunctor'45'ComputationResult_126)
                                                                                                                                                                             (\ v34 ->
                                                                                                                                                                                coe
                                                                                                                                                                                  MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_304
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational.du_Computational'45'TICK_3066
                                                                                                                                                                                   (coe
                                                                                                                                                                                      v0))
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4318
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4304
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v3)))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4306
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v3)))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4308
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v3)))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4244
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4234
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                                                                                                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v3))))
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4236
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                                                                                                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v3))))
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v32)
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4240
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                                                                                                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v3))))
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4242
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                                                                                                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v3)))))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4312
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v3)))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4314
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v3)))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4316
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v3))))
                                                                                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3106
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v4))))))
                                                                                                                                                                          (\ v34 ->
                                                                                                                                                                             case coe
                                                                                                                                                                                    v34 of
                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                                                                                                                                 -> coe
                                                                                                                                                                                      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_162)
                                                                                                                                                                                      ()
                                                                                                                                                                                      erased
                                                                                                                                                                                      ()
                                                                                                                                                                                      erased
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_304
                                                                                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_3244
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v0)
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v1))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4240
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4310
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v35)))
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4234
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4310
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v35))))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3970
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'NewEpochState_4368)
                                                                                                                                                                                               v35)
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4308
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v35)))
                                                                                                                                                                                         v4)
                                                                                                                                                                                      (\ v37 ->
                                                                                                                                                                                         case coe
                                                                                                                                                                                                v37 of
                                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v38 v39
                                                                                                                                                                                             -> case coe
                                                                                                                                                                                                       v38 of
                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v40 v41
                                                                                                                                                                                                    -> coe
                                                                                                                                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_constructor_4452
                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4318
                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4304
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        v35))
                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4306
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        v35))
                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                     v41)
                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4244
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4234
                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                                                                                                                                                                                                                           v35))
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4236
                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                                                                                                                                                                                                                           v35))
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        v40)
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4240
                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                                                                                                                                                                                                                           v35))
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4242
                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                                                                                                                                                                                                                           v35)))
                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4312
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        v35))
                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4314
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        v35))
                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4316
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        v35)))
                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasCast'45'LastAppliedBlock_4454)
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3106
                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    v4))))
                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3150
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 v4))
                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3112
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       v4)))))))))
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_CHAIN'45'EB_4722
                                                                                                                                                                                                               v8
                                                                                                                                                                                                               v6
                                                                                                                                                                                                               v13
                                                                                                                                                                                                               v35
                                                                                                                                                                                                               v32
                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                  erased
                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                     erased
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
                                                                                                                                                                                                                                    v26)
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       v30)
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                          v33)
                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                             v36)
                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                             v39))))))))))))
                                                                                                                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                   _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                else coe
                                                                                                                                                       seq
                                                                                                                                                       (coe
                                                                                                                                                          v29)
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
                                                                                                                                  v25)
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
                                                                                                          v21)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                          (coe
                                                                                                             ("the certificate comes before the certification delay has elapsed"
                                                                                                              ::
                                                                                                              Data.Text.Text)))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        else coe
                                                                               seq (coe v17)
                                                                               (coe
                                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                  (coe
                                                                                     du_pendingFailure_3354
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
                                  ("the block carries an EB certificate but the environment resolves no EB"
                                   ::
                                   Data.Text.Text))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                -> coe
                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                     (coe
                        MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_162)
                     () erased () erased
                     (coe
                        MAlonzo.Code.Class.Bifunctor.du_map'8321'_112
                        (coe
                           MAlonzo.Code.Interface.ComputationalRelation.du_Bifunctor'45'ComputationResult_126)
                        (\ v6 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
                        (let v6
                               = MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                   (coe v3) in
                         coe
                           (let v7
                                  = MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3106
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
                                            (coe v4))) in
                            coe
                              (let v8
                                     = coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational.du_NEWEPOCH'45'total_4234
                                         (coe v0)
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1432
                                               (coe v0))
                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3106
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
                                                     (coe v4)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.d_newEpochState_4448
                                            (coe v3)) in
                               coe
                                 (case coe v8 of
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                      -> coe
                                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                           (coe
                                              MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_162)
                                           () erased () erased
                                           (coe
                                              MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_304
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational.du_Computational'45'RUPD_2986
                                                 (coe v0))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4306
                                                    (coe v6))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4310
                                                    (coe v6)))
                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4312
                                                 (coe v9))
                                              v7)
                                           (\ v11 ->
                                              case coe v11 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                                  -> coe
                                                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4318
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4304
                                                                (coe v9))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4306
                                                                (coe v9))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4308
                                                                (coe v9))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4310
                                                                (coe v9))
                                                             (coe v12)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4314
                                                                (coe v9))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4316
                                                                (coe v9)))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.RewardUpdate.C_TICK_3060
                                                             v9
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe v10) (coe v13))))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                    _ -> MAlonzo.RTE.mazUnreachableError)))))
                     (\ v6 ->
                        case coe v6 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                            -> coe
                                 MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                 (coe
                                    MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_162)
                                 () erased () erased
                                 (coe
                                    MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_304
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.d_Computational'45'BBODY_3244
                                       (coe v0) (coe v1))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4240
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4310
                                             (coe v7)))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4234
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4310
                                             (coe v7))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_LedgerStateOf_3970
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'NewEpochState_4368)
                                          v7)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4308
                                          (coe v7)))
                                    v4)
                                 (\ v9 ->
                                    case coe v9 of
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                        -> case coe v10 of
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                               -> coe
                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_constructor_4452
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4318
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4304
                                                                (coe v7))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4306
                                                                (coe v7))
                                                             (coe v13)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4244
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4234
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                                                                      v7))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4236
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                                                                      v7))
                                                                (coe v12)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4240
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                                                                      v7))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4242
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4258
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4362)
                                                                      v7)))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4312
                                                                (coe v7))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4314
                                                                (coe v7))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4316
                                                                (coe v7)))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.du_HasCast'45'LastAppliedBlock_4454)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3106
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
                                                                            (coe v4))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3150
                                                                         (coe v4))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_announcedEB_3112
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3124
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3148
                                                                               (coe v4)))))))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Chain.C_CHAIN'45'None_4604
                                                          v7
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             erased
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe v8) (coe v11)))))
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
