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
d_HasCast'45'HashProtected_292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_292 ~v0
  = du_HasCast'45'HashProtected_292
du_HasCast'45'HashProtected_292 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1140
-- _.HasPParams
d_HasPParams_370 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_518 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx
d_Tx_658 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1352 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_1352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx.body
d_body_1988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526
d_body_1988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3738
      (coe v0)
-- _.Tx.isValid
d_isValid_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Bool
d_isValid_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3744
      (coe v0)
-- _.Tx.txAD
d_txAD_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Maybe AgdaAny
d_txAD_1992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3746
      (coe v0)
-- _.Tx.txsize
d_txsize_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Integer
d_txsize_1994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3742
      (coe v0)
-- _.Tx.wits
d_wits_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704
d_wits_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3740
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2082 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.BBodyEnv
d_BBodyEnv_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  ()
d_BBodyEnv_2086 = erased
-- Ledger.Conway.Specification.Chain._.BBodyState
d_BBodyState_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  ()
d_BBodyState_2088 = erased
-- Ledger.Conway.Specification.Chain._.BHBody
d_BHBody_2090 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.BHeader
d_BHeader_2094 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.Block
d_Block_2098 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.incrBlocks
d_incrBlocks_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2102 v0 ~v1 = du_incrBlocks_2102 v0
du_incrBlocks_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2438
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bhash
d_bhash_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2370 ->
  AgdaAny
d_bhash_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhash_2388
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bsize
d_bsize_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2370 ->
  Integer
d_bsize_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bsize_2384
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2370 ->
  AgdaAny
d_bvkcold_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2382
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2370 ->
  Integer
d_hBbsize_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_hBbsize_2390
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.slot
d_slot_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2370 ->
  AgdaAny
d_slot_2118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2386
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhbody
d_bhbody_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2394 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2370
d_bhbody_2122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2400
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhsig
d_bhsig_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2394 ->
  AgdaAny
d_bhsig_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhsig_2402
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  AgdaAny
d_bBodyHash_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2426
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodySize
d_bBodySize_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  Integer
d_bBodySize_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2424
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bheader
d_bheader_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2394
d_bheader_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2420
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.ts
d_ts_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726]
d_ts_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2422
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2136 = erased
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2138 = erased
-- Ledger.Conway.Specification.Chain._.CertStateOf
d_CertStateOf_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1602 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506
d_CertStateOf_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1610
      (coe v0)
-- Ledger.Conway.Specification.Chain._.DepositsOf
d_DepositsOf_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1254
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState
d_HasCertState_2244 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits
d_HasDeposits_2260 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards
d_HasRewards_2292 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330
d_HasRewards'45'CertState_2296 ~v0 ~v1
  = du_HasRewards'45'CertState_2296
du_HasRewards'45'CertState_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330
du_HasRewards'45'CertState_2296
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1642
-- Ledger.Conway.Specification.Chain._.RewardsOf
d_RewardsOf_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1338
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1602 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506
d_CertStateOf_2494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1610
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasDeposits.DepositsOf
d_DepositsOf_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1254
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1338
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EnactStateOf
d_EnactStateOf_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1254 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1226
d_EnactStateOf_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1262
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState
d_HasEnactState_2582 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'EnactState_2586 ~v0 ~v1
  = du_HasPParams'45'EnactState_2586
du_HasPParams'45'EnactState_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'EnactState_2586
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1270
-- Ledger.Conway.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1254 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1226
d_EnactStateOf_2636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1262
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EpochStateOf
d_EpochStateOf_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3360 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3332
d_EpochStateOf_2650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3368
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1254
d_HasEnactState'45'EpochState_2670 ~v0 ~v1
  = du_HasEnactState'45'EpochState_2670
du_HasEnactState'45'EpochState_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1254
du_HasEnactState'45'EpochState_2670
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3382
-- Ledger.Conway.Specification.Chain._.HasEpochState
d_HasEpochState_2674 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3360
d_HasEpochState'45'NewEpochState_2678 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_2678
du_HasEpochState'45'NewEpochState_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3360
du_HasEpochState'45'NewEpochState_2678
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3474
-- Ledger.Conway.Specification.Chain._.HasLState-EpochState
d_HasLState'45'EpochState_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3030
d_HasLState'45'EpochState_2684 ~v0 ~v1
  = du_HasLState'45'EpochState_2684
du_HasLState'45'EpochState_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3030
du_HasLState'45'EpochState_2684
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3378
-- Ledger.Conway.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_2688 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3456
d_HasLastEpoch'45'NewEpochState_2692 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_2692
du_HasLastEpoch'45'NewEpochState_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3456
du_HasLastEpoch'45'NewEpochState_2692
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3472
-- Ledger.Conway.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_2694 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.LastEpochOf
d_LastEpochOf_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3456 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3464
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState
d_NewEpochState_2728 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404
d_NewEpochStateOf_2732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3444
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_2816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3360 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3332
d_EpochStateOf_2816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3368
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_2820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3456 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3464
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404
d_NewEpochStateOf_2824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3444
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bcur
d_bcur_2828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3422 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bprev
d_bprev_2830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3420
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.epochState
d_epochState_2832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3332
d_epochState_2832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  AgdaAny
d_lastEpoch_2834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3418
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.pd
d_pd_2836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3428 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.ru
d_ru_2838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3056
d_ru_2838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3426 (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState-LState
d_HasCertState'45'LState_3046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1602
d_HasCertState'45'LState_3046 ~v0 ~v1
  = du_HasCertState'45'LState_3046
du_HasCertState'45'LState_3046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1602
du_HasCertState'45'LState_3046
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3052
-- Ledger.Conway.Specification.Chain._.HasLState
d_HasLState_3062 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasUTxOState-LState
d_HasUTxOState'45'LState_3074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2574
d_HasUTxOState'45'LState_3074 ~v0 ~v1
  = du_HasUTxOState'45'LState_3074
du_HasUTxOState'45'LState_3074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2574
du_HasUTxOState'45'LState_3074
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3046
-- Ledger.Conway.Specification.Chain._.LState
d_LState_3086 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.LStateOf
d_LStateOf_3090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3030 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_3010
d_LStateOf_3090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3038
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLState.LStateOf
d_LStateOf_3108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3030 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_3010
d_LStateOf_3108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3038
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.certState
d_certState_3124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_3010 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506
d_certState_3124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_3022
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.govSt
d_govSt_3126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_3010 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_3020
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.utxoSt
d_utxoSt_3128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_3010 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
d_utxoSt_3128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_3018
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3316 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_3358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1246
d_HasDeposits'45'UTxOState_3358 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_3358
du_HasDeposits'45'UTxOState_3358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1246
du_HasDeposits'45'UTxOState_3358
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2596
-- Ledger.Conway.Specification.Chain._.HasUTxOState
d_HasUTxOState_3368 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_3392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2574 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
d_UTxOStateOf_3392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2582
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2574 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
d_UTxOStateOf_3482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2582
      (coe v0)
-- Ledger.Conway.Specification.Chain.ChainState
d_ChainState_3532 a0 a1 = ()
newtype T_ChainState_3532
  = C_constructor_3538 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404
-- Ledger.Conway.Specification.Chain.ChainState.newEpochState
d_newEpochState_3536 ::
  T_ChainState_3532 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404
d_newEpochState_3536 v0
  = case coe v0 of
      C_constructor_3538 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_3540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3436
d_HasNewEpochState'45'ChainState_3540 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_3540
du_HasNewEpochState'45'ChainState_3540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3436
du_HasNewEpochState'45'ChainState_3540
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3446
      (coe (\ v0 -> d_newEpochState_3536 (coe v0)))
-- Ledger.Conway.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_3542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3456
d_HasLastEpoch'45'ChainState_3542 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_3542
du_HasLastEpoch'45'ChainState_3542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3456
du_HasLastEpoch'45'ChainState_3542
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3466
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3464
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3472)
              (d_newEpochState_3536 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_3544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3360
d_HasEpochState'45'ChainState_3544 ~v0 ~v1
  = du_HasEpochState'45'ChainState_3544
du_HasEpochState'45'ChainState_3544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3360
du_HasEpochState'45'ChainState_3544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3370
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3368
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3474)
              (d_newEpochState_3536 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_3546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1254
d_HasEnactState'45'ChainState_3546 ~v0 ~v1
  = du_HasEnactState'45'ChainState_3546
du_HasEnactState'45'ChainState_3546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1254
du_HasEnactState'45'ChainState_3546
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1264
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1262
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3382)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3368
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3474)
                 (d_newEpochState_3536 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasLState-ChainState
d_HasLState'45'ChainState_3548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3030
d_HasLState'45'ChainState_3548 ~v0 ~v1
  = du_HasLState'45'ChainState_3548
du_HasLState'45'ChainState_3548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3030
du_HasLState'45'ChainState_3548
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_3040
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3038
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3378)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3368
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3474)
                 (d_newEpochState_3536 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_3550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2574
d_HasUTxOState'45'ChainState_3550 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_3550
du_HasUTxOState'45'ChainState_3550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2574
du_HasUTxOState'45'ChainState_3550
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2584
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2582
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3046)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3038
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3378)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3368
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3474)
                    (d_newEpochState_3536 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_3552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1602
d_HasCertState'45'ChainState_3552 ~v0 ~v1
  = du_HasCertState'45'ChainState_3552
du_HasCertState'45'ChainState_3552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1602
du_HasCertState'45'ChainState_3552
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1612
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1610
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3052)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3038
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3378)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3368
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3474)
                    (d_newEpochState_3536 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasDeposits-ChainState
d_HasDeposits'45'ChainState_3554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1246
d_HasDeposits'45'ChainState_3554 ~v0 ~v1
  = du_HasDeposits'45'ChainState_3554
du_HasDeposits'45'ChainState_3554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1246
du_HasDeposits'45'ChainState_3554
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1256
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1254
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2596)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2582
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3046)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3038
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3378)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3368
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3474)
                       (d_newEpochState_3536 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_3556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330
d_HasRewards'45'ChainState_3556 ~v0 ~v1
  = du_HasRewards'45'ChainState_3556
du_HasRewards'45'ChainState_3556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330
du_HasRewards'45'ChainState_3556
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1340
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1338
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1642)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1610
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3052)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3038
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3378)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3368
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3474)
                       (d_newEpochState_3536 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_3558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'ChainState_3558 ~v0 ~v1
  = du_HasPParams'45'ChainState_3558
du_HasPParams'45'ChainState_3558 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'ChainState_3558
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_446
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1270)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1262
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3382)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3368
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3474)
                    (d_newEpochState_3536 (coe v0))))))
-- Ledger.Conway.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_3560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_3010 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726] ->
  Integer
d_totalRefScriptsSize_3560 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2630
            (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2560
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_3018
                  (coe v2))))
         v3)
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__3582 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__3582
  = C_CHAIN_3672 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Chain._.newEpochState
d_newEpochState_3594 ::
  T_ChainState_3532 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404
d_newEpochState_3594 v0 = coe d_newEpochState_3536 (coe v0)
-- Ledger.Conway.Specification.Chain._.bheader
d_bheader_3602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_19843 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  T_ChainState_3532 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2394
d_bheader_3602 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_3602 v3
du_bheader_3602 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2394
du_bheader_3602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2420
      (coe v0)
-- Ledger.Conway.Specification.Chain._.ts
d_ts_3604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_19843 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  T_ChainState_3532 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726]
d_ts_3604 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_3604 v3
du_ts_3604 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726]
du_ts_3604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2422
      (coe v0)
-- Ledger.Conway.Specification.Chain._.bhbody
d_bhbody_3612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_19843 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  T_ChainState_3532 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2370
d_bhbody_3612 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_3612 v3
du_bhbody_3612 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2370
du_bhbody_3612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2400
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2420
         (coe v0))
-- Ledger.Conway.Specification.Chain._.slot
d_slot_3626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_19843 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  T_ChainState_3532 -> AgdaAny
d_slot_3626 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_3626 v3
du_slot_3626 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  AgdaAny
du_slot_3626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2386
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2400
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2420
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.bcur
d_bcur_3630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_19843 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  T_ChainState_3532 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3630 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_3630 v4
du_bcur_3630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_3630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3422 (coe v0)
-- Ledger.Conway.Specification.Chain._.epochState
d_epochState_3634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_19843 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  T_ChainState_3532 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3332
d_epochState_3634 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_3634 v4
du_epochState_3634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3332
du_epochState_3634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
      (coe v0)
-- Ledger.Conway.Specification.Chain._.acnt
d_acnt_3644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_19843 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  T_ChainState_3532 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_3644 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_3644 v4
du_acnt_3644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
du_acnt_3644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3344
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
         (coe v0))
-- Ledger.Conway.Specification.Chain._.es
d_es_3646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_19843 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  T_ChainState_3532 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1226
d_es_3646 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_3646 v4
du_es_3646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1226
du_es_3646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3350
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
         (coe v0))
-- Ledger.Conway.Specification.Chain._.ls
d_ls_3650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_19843 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  T_ChainState_3532 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_3010
d_ls_3650 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_3650 v4
du_ls_3650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_3010
du_ls_3650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3348
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
         (coe v0))
-- Ledger.Conway.Specification.Chain._.pparams
d_pparams_3660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_19843 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  T_ChainState_3532 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3660 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3660 v4
du_pparams_3660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3350
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_19843 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  T_ChainState_3532 -> Integer
d_maxRefScriptSizePerBlock_3668 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_3668 v5
du_maxRefScriptSizePerBlock_3668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3404 ->
  Integer
du_maxRefScriptSizePerBlock_3668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1140)
         (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1244
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3350
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3424
                  (coe v0)))))
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAINS⦈_
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_3532 ->
  [MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2406] ->
  T_ChainState_3532 -> ()
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3674 = erased
-- Ledger.Conway.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_19841 ::
  T_GeneralizeTel_19843 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_3010
d_'46'generalizedField'45'ls''_19841 v0
  = case coe v0 of
      C_mkGeneralizeTel_19845 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.GeneralizeTel
d_GeneralizeTel_19843 a0 a1 = ()
newtype T_GeneralizeTel_19843
  = C_mkGeneralizeTel_19845 MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_3010
