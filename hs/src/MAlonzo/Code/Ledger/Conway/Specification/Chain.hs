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

module MAlonzo.Code.Ledger.Conway.Specification.Chain where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Nat.ListAction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.BlockBody
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.RewardUpdate
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_256 ~v0
  = du_HasCast'45'HashProtected_256
du_HasCast'45'HashProtected_256 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1090
-- _.HasPParams
d_HasPParams_334 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_482 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx
d_Tx_620 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1302 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_1302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx.body
d_body_1938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_body_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
      (coe v0)
-- _.Tx.isValid
d_isValid_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Bool
d_isValid_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3652
      (coe v0)
-- _.Tx.txAD
d_txAD_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Maybe AgdaAny
d_txAD_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3654
      (coe v0)
-- _.Tx.txsize
d_txsize_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Integer
d_txsize_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3650
      (coe v0)
-- _.Tx.wits
d_wits_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612
d_wits_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2032 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.BBodyEnv
d_BBodyEnv_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  ()
d_BBodyEnv_2036 = erased
-- Ledger.Conway.Specification.Chain._.BBodyState
d_BBodyState_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  ()
d_BBodyState_2038 = erased
-- Ledger.Conway.Specification.Chain._.BHBody
d_BHBody_2040 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.BHeader
d_BHeader_2044 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.Block
d_Block_2048 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.incrBlocks
d_incrBlocks_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2052 v0 ~v1 = du_incrBlocks_2052 v0
du_incrBlocks_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2388
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bhash
d_bhash_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2320 ->
  AgdaAny
d_bhash_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhash_2338
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bsize
d_bsize_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2320 ->
  Integer
d_bsize_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bsize_2334
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2320 ->
  AgdaAny
d_bvkcold_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2332
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2320 ->
  Integer
d_hBbsize_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_hBbsize_2340
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.slot
d_slot_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2320 ->
  AgdaAny
d_slot_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2336
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhbody
d_bhbody_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2344 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2320
d_bhbody_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2350
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhsig
d_bhsig_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2344 ->
  AgdaAny
d_bhsig_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhsig_2352
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  AgdaAny
d_bBodyHash_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2376
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodySize
d_bBodySize_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  Integer
d_bBodySize_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2374
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bheader
d_bheader_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2344
d_bheader_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2370
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.ts
d_ts_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634]
d_ts_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2372
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2086 = erased
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2088 = erased
-- Ledger.Conway.Specification.Chain._.CertStateOf
d_CertStateOf_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1456
d_CertStateOf_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1560
      (coe v0)
-- Ledger.Conway.Specification.Chain._.DepositsOf
d_DepositsOf_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1204
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState
d_HasCertState_2198 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits
d_HasDeposits_2214 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards
d_HasRewards_2246 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280
d_HasRewards'45'CertState_2250 ~v0 ~v1
  = du_HasRewards'45'CertState_2250
du_HasRewards'45'CertState_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280
du_HasRewards'45'CertState_2250
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1592
-- Ledger.Conway.Specification.Chain._.RewardsOf
d_RewardsOf_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1288
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1456
d_CertStateOf_2452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1560
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasDeposits.DepositsOf
d_DepositsOf_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1204
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1288
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EnactStateOf
d_EnactStateOf_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
d_EnactStateOf_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1212
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState
d_HasEnactState_2540 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'EnactState_2544 ~v0 ~v1
  = du_HasPParams'45'EnactState_2544
du_HasPParams'45'EnactState_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'EnactState_2544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1220
-- Ledger.Conway.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
d_EnactStateOf_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1212
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EpochStateOf
d_EpochStateOf_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286
d_EpochStateOf_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204
d_HasEnactState'45'EpochState_2628 ~v0 ~v1
  = du_HasEnactState'45'EpochState_2628
du_HasEnactState'45'EpochState_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204
du_HasEnactState'45'EpochState_2628
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3336
-- Ledger.Conway.Specification.Chain._.HasEpochState
d_HasEpochState_2632 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3314
d_HasEpochState'45'NewEpochState_2636 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_2636
du_HasEpochState'45'NewEpochState_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3314
du_HasEpochState'45'NewEpochState_2636
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3426
-- Ledger.Conway.Specification.Chain._.HasLState-EpochState
d_HasLState'45'EpochState_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2988
d_HasLState'45'EpochState_2642 ~v0 ~v1
  = du_HasLState'45'EpochState_2642
du_HasLState'45'EpochState_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2988
du_HasLState'45'EpochState_2642
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3332
-- Ledger.Conway.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_2646 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3408
d_HasLastEpoch'45'NewEpochState_2650 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_2650
du_HasLastEpoch'45'NewEpochState_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3408
du_HasLastEpoch'45'NewEpochState_2650
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3424
-- Ledger.Conway.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_2652 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.LastEpochOf
d_LastEpochOf_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3408 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3416
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState
d_NewEpochState_2684 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3388 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356
d_NewEpochStateOf_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3396
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286
d_EpochStateOf_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3408 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3416
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3388 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356
d_NewEpochStateOf_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3396
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bcur
d_bcur_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3374 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bprev
d_bprev_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3372
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.epochState
d_epochState_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286
d_epochState_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3376
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  AgdaAny
d_lastEpoch_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3370
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.pd
d_pd_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3380 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.ru
d_ru_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014
d_ru_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3378 (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState-LState
d_HasCertState'45'LState_3002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552
d_HasCertState'45'LState_3002 ~v0 ~v1
  = du_HasCertState'45'LState_3002
du_HasCertState'45'LState_3002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552
du_HasCertState'45'LState_3002
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3010
-- Ledger.Conway.Specification.Chain._.HasLState
d_HasLState_3018 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasUTxOState-LState
d_HasUTxOState'45'LState_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2532
d_HasUTxOState'45'LState_3030 ~v0 ~v1
  = du_HasUTxOState'45'LState_3030
du_HasUTxOState'45'LState_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2532
du_HasUTxOState'45'LState_3030
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3004
-- Ledger.Conway.Specification.Chain._.LState
d_LState_3042 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.LStateOf
d_LStateOf_3046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2988 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968
d_LStateOf_3046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2996
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLState.LStateOf
d_LStateOf_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2988 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968
d_LStateOf_3064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2996
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.certState
d_certState_3080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1456
d_certState_3080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2980
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.govSt
d_govSt_3082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2978
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.utxoSt
d_utxoSt_3084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508
d_utxoSt_3084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2976
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3272 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_3314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196
d_HasDeposits'45'UTxOState_3314 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_3314
du_HasDeposits'45'UTxOState_3314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196
du_HasDeposits'45'UTxOState_3314
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2554
-- Ledger.Conway.Specification.Chain._.HasUTxOState
d_HasUTxOState_3324 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_3348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2532 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508
d_UTxOStateOf_3348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2540
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2532 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508
d_UTxOStateOf_3438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2540
      (coe v0)
-- Ledger.Conway.Specification.Chain.ChainState
d_ChainState_3488 a0 a1 = ()
newtype T_ChainState_3488
  = C_constructor_3494 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356
-- Ledger.Conway.Specification.Chain.ChainState.newEpochState
d_newEpochState_3492 ::
  T_ChainState_3488 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356
d_newEpochState_3492 v0
  = case coe v0 of
      C_constructor_3494 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_3496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3388
d_HasNewEpochState'45'ChainState_3496 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_3496
du_HasNewEpochState'45'ChainState_3496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3388
du_HasNewEpochState'45'ChainState_3496
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3398
      (coe (\ v0 -> d_newEpochState_3492 (coe v0)))
-- Ledger.Conway.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_3498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3408
d_HasLastEpoch'45'ChainState_3498 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_3498
du_HasLastEpoch'45'ChainState_3498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3408
du_HasLastEpoch'45'ChainState_3498
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3418
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3416
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3424)
              (d_newEpochState_3492 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_3500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3314
d_HasEpochState'45'ChainState_3500 ~v0 ~v1
  = du_HasEpochState'45'ChainState_3500
du_HasEpochState'45'ChainState_3500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3314
du_HasEpochState'45'ChainState_3500
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3324
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3426)
              (d_newEpochState_3492 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_3502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204
d_HasEnactState'45'ChainState_3502 ~v0 ~v1
  = du_HasEnactState'45'ChainState_3502
du_HasEnactState'45'ChainState_3502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204
du_HasEnactState'45'ChainState_3502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1214
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1212
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3336)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3426)
                 (d_newEpochState_3492 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasLState-ChainState
d_HasLState'45'ChainState_3504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2988
d_HasLState'45'ChainState_3504 ~v0 ~v1
  = du_HasLState'45'ChainState_3504
du_HasLState'45'ChainState_3504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2988
du_HasLState'45'ChainState_3504
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2998
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2996
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3332)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3426)
                 (d_newEpochState_3492 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2532
d_HasUTxOState'45'ChainState_3506 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_3506
du_HasUTxOState'45'ChainState_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2532
du_HasUTxOState'45'ChainState_3506
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2542
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2540
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3004)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2996
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3332)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3426)
                    (d_newEpochState_3492 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552
d_HasCertState'45'ChainState_3508 ~v0 ~v1
  = du_HasCertState'45'ChainState_3508
du_HasCertState'45'ChainState_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552
du_HasCertState'45'ChainState_3508
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1562
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1560
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3010)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2996
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3332)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3426)
                    (d_newEpochState_3492 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasDeposits-ChainState
d_HasDeposits'45'ChainState_3510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196
d_HasDeposits'45'ChainState_3510 ~v0 ~v1
  = du_HasDeposits'45'ChainState_3510
du_HasDeposits'45'ChainState_3510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196
du_HasDeposits'45'ChainState_3510
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1206
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2554)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2540
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3004)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2996
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3332)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3426)
                       (d_newEpochState_3492 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_3512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280
d_HasRewards'45'ChainState_3512 ~v0 ~v1
  = du_HasRewards'45'ChainState_3512
du_HasRewards'45'ChainState_3512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280
du_HasRewards'45'ChainState_3512
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1290
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1288
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1592)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1560
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3010)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2996
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3332)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3426)
                       (d_newEpochState_3492 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_3514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'ChainState_3514 ~v0 ~v1
  = du_HasPParams'45'ChainState_3514
du_HasPParams'45'ChainState_3514 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'ChainState_3514
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_446
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1220)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1212
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3336)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3426)
                    (d_newEpochState_3492 (coe v0))))))
-- Ledger.Conway.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_3516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634] ->
  Integer
d_totalRefScriptsSize_3516 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2588
            (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2976
                  (coe v2))))
         v3)
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__3538 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__3538
  = C_CHAIN_3628 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Chain._.newEpochState
d_newEpochState_3550 ::
  T_ChainState_3488 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356
d_newEpochState_3550 v0 = coe d_newEpochState_3492 (coe v0)
-- Ledger.Conway.Specification.Chain._.bheader
d_bheader_3558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_19423 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  T_ChainState_3488 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2344
d_bheader_3558 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_3558 v3
du_bheader_3558 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2344
du_bheader_3558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2370
      (coe v0)
-- Ledger.Conway.Specification.Chain._.ts
d_ts_3560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_19423 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  T_ChainState_3488 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634]
d_ts_3560 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_3560 v3
du_ts_3560 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634]
du_ts_3560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2372
      (coe v0)
-- Ledger.Conway.Specification.Chain._.bhbody
d_bhbody_3568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_19423 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  T_ChainState_3488 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2320
d_bhbody_3568 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_3568 v3
du_bhbody_3568 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2320
du_bhbody_3568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2350
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2370
         (coe v0))
-- Ledger.Conway.Specification.Chain._.slot
d_slot_3582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_19423 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  T_ChainState_3488 -> AgdaAny
d_slot_3582 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_3582 v3
du_slot_3582 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  AgdaAny
du_slot_3582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2336
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2350
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2370
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.bcur
d_bcur_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_19423 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  T_ChainState_3488 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3586 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_3586 v4
du_bcur_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_3586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3374 (coe v0)
-- Ledger.Conway.Specification.Chain._.epochState
d_epochState_3590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_19423 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  T_ChainState_3488 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286
d_epochState_3590 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_3590 v4
du_epochState_3590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286
du_epochState_3590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3376
      (coe v0)
-- Ledger.Conway.Specification.Chain._.acnt
d_acnt_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_19423 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  T_ChainState_3488 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_3600 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_3600 v4
du_acnt_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
du_acnt_3600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3298
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3376
         (coe v0))
-- Ledger.Conway.Specification.Chain._.es
d_es_3602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_19423 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  T_ChainState_3488 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
d_es_3602 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_3602 v4
du_es_3602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
du_es_3602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3304
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3376
         (coe v0))
-- Ledger.Conway.Specification.Chain._.ls
d_ls_3606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_19423 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  T_ChainState_3488 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968
d_ls_3606 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_3606 v4
du_ls_3606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968
du_ls_3606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3302
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3376
         (coe v0))
-- Ledger.Conway.Specification.Chain._.pparams
d_pparams_3616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_19423 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  T_ChainState_3488 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3616 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3616 v4
du_pparams_3616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1194
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3304
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3376
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  T_GeneralizeTel_19423 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  T_ChainState_3488 -> Integer
d_maxRefScriptSizePerBlock_3624 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_3624 v5
du_maxRefScriptSizePerBlock_3624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  Integer
du_maxRefScriptSizePerBlock_3624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1090)
         (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1194
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3304
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3376
                  (coe v0)))))
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAINS⦈_
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_3488 ->
  [MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2356] ->
  T_ChainState_3488 -> ()
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3630 = erased
-- Ledger.Conway.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_19421 ::
  T_GeneralizeTel_19423 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968
d_'46'generalizedField'45'ls''_19421 v0
  = case coe v0 of
      C_mkGeneralizeTel_19425 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.GeneralizeTel
d_GeneralizeTel_19423 a0 a1 = ()
newtype T_GeneralizeTel_19423
  = C_mkGeneralizeTel_19425 MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968
