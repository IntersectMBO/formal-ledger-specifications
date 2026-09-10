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
d_HasCast'45'HashProtected_260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_260 ~v0
  = du_HasCast'45'HashProtected_260
du_HasCast'45'HashProtected_260 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1096
-- _.HasPParams
d_HasPParams_338 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_486 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx
d_Tx_624 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1308 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_1308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx.body
d_body_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438
d_body_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
      (coe v0)
-- _.Tx.isValid
d_isValid_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  Bool
d_isValid_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3656
      (coe v0)
-- _.Tx.txAD
d_txAD_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  Maybe AgdaAny
d_txAD_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3658
      (coe v0)
-- _.Tx.txsize
d_txsize_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  Integer
d_txsize_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3654
      (coe v0)
-- _.Tx.wits
d_wits_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3616
d_wits_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2038 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.BBodyEnv
d_BBodyEnv_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  ()
d_BBodyEnv_2042 = erased
-- Ledger.Conway.Specification.Chain._.BBodyState
d_BBodyState_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  ()
d_BBodyState_2044 = erased
-- Ledger.Conway.Specification.Chain._.BHBody
d_BHBody_2046 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.BHeader
d_BHeader_2050 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.Block
d_Block_2054 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.incrBlocks
d_incrBlocks_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2058 v0 ~v1 = du_incrBlocks_2058 v0
du_incrBlocks_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2394
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bhash
d_bhash_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2326 ->
  AgdaAny
d_bhash_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhash_2344
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bsize
d_bsize_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2326 ->
  Integer
d_bsize_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bsize_2340
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2070 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2326 ->
  AgdaAny
d_bvkcold_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2338
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2326 ->
  Integer
d_hBbsize_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_hBbsize_2346
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.slot
d_slot_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2326 ->
  AgdaAny
d_slot_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2342
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhbody
d_bhbody_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2350 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2326
d_bhbody_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2356
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhsig
d_bhsig_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2350 ->
  AgdaAny
d_bhsig_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhsig_2358
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  AgdaAny
d_bBodyHash_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2382
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodySize
d_bBodySize_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  Integer
d_bBodySize_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2380
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bheader
d_bheader_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2350
d_bheader_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2376
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.ts
d_ts_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638]
d_ts_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2378
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2092 = erased
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2094 = erased
-- Ledger.Conway.Specification.Chain._.CertStateOf
d_CertStateOf_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1558 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1462
d_CertStateOf_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1566
      (coe v0)
-- Ledger.Conway.Specification.Chain._.DepositsOf
d_DepositsOf_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1202 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1210
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState
d_HasCertState_2200 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits
d_HasDeposits_2216 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards
d_HasRewards_2248 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1286
d_HasRewards'45'CertState_2252 ~v0 ~v1
  = du_HasRewards'45'CertState_2252
du_HasRewards'45'CertState_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1286
du_HasRewards'45'CertState_2252
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1598
-- Ledger.Conway.Specification.Chain._.RewardsOf
d_RewardsOf_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1286 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1294
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1558 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1462
d_CertStateOf_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1566
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasDeposits.DepositsOf
d_DepositsOf_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1202 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1210
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1286 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1294
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EnactStateOf
d_EnactStateOf_2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1182
d_EnactStateOf_2534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1218
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState
d_HasEnactState_2538 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'EnactState_2542 ~v0 ~v1
  = du_HasPParams'45'EnactState_2542
du_HasPParams'45'EnactState_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'EnactState_2542
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1226
-- Ledger.Conway.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1182
d_EnactStateOf_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1218
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EpochStateOf
d_EpochStateOf_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3316 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3288
d_EpochStateOf_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3324
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1210
d_HasEnactState'45'EpochState_2626 ~v0 ~v1
  = du_HasEnactState'45'EpochState_2626
du_HasEnactState'45'EpochState_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1210
du_HasEnactState'45'EpochState_2626
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3338
-- Ledger.Conway.Specification.Chain._.HasEpochState
d_HasEpochState_2630 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3316
d_HasEpochState'45'NewEpochState_2634 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_2634
du_HasEpochState'45'NewEpochState_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3316
du_HasEpochState'45'NewEpochState_2634
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3430
-- Ledger.Conway.Specification.Chain._.HasLState-EpochState
d_HasLState'45'EpochState_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2986
d_HasLState'45'EpochState_2640 ~v0 ~v1
  = du_HasLState'45'EpochState_2640
du_HasLState'45'EpochState_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2986
du_HasLState'45'EpochState_2640
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3334
-- Ledger.Conway.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_2644 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3412
d_HasLastEpoch'45'NewEpochState_2648 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_2648
du_HasLastEpoch'45'NewEpochState_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3412
du_HasLastEpoch'45'NewEpochState_2648
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3428
-- Ledger.Conway.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_2650 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.LastEpochOf
d_LastEpochOf_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3412 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3420
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState
d_NewEpochState_2684 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3392 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360
d_NewEpochStateOf_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3400
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3316 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3288
d_EpochStateOf_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3324
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3412 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3420
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3392 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360
d_NewEpochStateOf_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3400
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bcur
d_bcur_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3378 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bprev
d_bprev_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3376
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.epochState
d_epochState_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3288
d_epochState_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3380
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  AgdaAny
d_lastEpoch_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3374
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.pd
d_pd_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3384 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.ru
d_ru_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3012
d_ru_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3382 (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState-LState
d_HasCertState'45'LState_3002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1558
d_HasCertState'45'LState_3002 ~v0 ~v1
  = du_HasCertState'45'LState_3002
du_HasCertState'45'LState_3002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1558
du_HasCertState'45'LState_3002
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3008
-- Ledger.Conway.Specification.Chain._.HasLState
d_HasLState_3018 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasUTxOState-LState
d_HasUTxOState'45'LState_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2530
d_HasUTxOState'45'LState_3030 ~v0 ~v1
  = du_HasUTxOState'45'LState_3030
du_HasUTxOState'45'LState_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2530
du_HasUTxOState'45'LState_3030
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3002
-- Ledger.Conway.Specification.Chain._.LState
d_LState_3042 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.LStateOf
d_LStateOf_3046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2986 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2966
d_LStateOf_3046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2994
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLState.LStateOf
d_LStateOf_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2986 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2966
d_LStateOf_3064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2994
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.certState
d_certState_3080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2966 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1462
d_certState_3080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2978
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.govSt
d_govSt_3082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2966 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2976
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.utxoSt
d_utxoSt_3084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2966 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
d_utxoSt_3084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2974
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3272 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_3314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1202
d_HasDeposits'45'UTxOState_3314 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_3314
du_HasDeposits'45'UTxOState_3314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1202
du_HasDeposits'45'UTxOState_3314
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2552
-- Ledger.Conway.Specification.Chain._.HasUTxOState
d_HasUTxOState_3324 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_3348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2530 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
d_UTxOStateOf_3348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2538
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2530 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
d_UTxOStateOf_3438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2538
      (coe v0)
-- Ledger.Conway.Specification.Chain.ChainState
d_ChainState_3488 a0 a1 = ()
newtype T_ChainState_3488
  = C_constructor_3494 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360
-- Ledger.Conway.Specification.Chain.ChainState.newEpochState
d_newEpochState_3492 ::
  T_ChainState_3488 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360
d_newEpochState_3492 v0
  = case coe v0 of
      C_constructor_3494 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_3496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3392
d_HasNewEpochState'45'ChainState_3496 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_3496
du_HasNewEpochState'45'ChainState_3496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3392
du_HasNewEpochState'45'ChainState_3496
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3402
      (coe (\ v0 -> d_newEpochState_3492 (coe v0)))
-- Ledger.Conway.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_3498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3412
d_HasLastEpoch'45'ChainState_3498 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_3498
du_HasLastEpoch'45'ChainState_3498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3412
du_HasLastEpoch'45'ChainState_3498
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3422
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3420
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3428)
              (d_newEpochState_3492 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_3500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3316
d_HasEpochState'45'ChainState_3500 ~v0 ~v1
  = du_HasEpochState'45'ChainState_3500
du_HasEpochState'45'ChainState_3500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3316
du_HasEpochState'45'ChainState_3500
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3326
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3324
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3430)
              (d_newEpochState_3492 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_3502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1210
d_HasEnactState'45'ChainState_3502 ~v0 ~v1
  = du_HasEnactState'45'ChainState_3502
du_HasEnactState'45'ChainState_3502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1210
du_HasEnactState'45'ChainState_3502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1220
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1218
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3338)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3324
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3430)
                 (d_newEpochState_3492 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasLState-ChainState
d_HasLState'45'ChainState_3504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2986
d_HasLState'45'ChainState_3504 ~v0 ~v1
  = du_HasLState'45'ChainState_3504
du_HasLState'45'ChainState_3504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2986
du_HasLState'45'ChainState_3504
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_2996
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2994
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3334)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3324
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3430)
                 (d_newEpochState_3492 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2530
d_HasUTxOState'45'ChainState_3506 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_3506
du_HasUTxOState'45'ChainState_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2530
du_HasUTxOState'45'ChainState_3506
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2540
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2538
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3002)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2994
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3334)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3324
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3430)
                    (d_newEpochState_3492 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1558
d_HasCertState'45'ChainState_3508 ~v0 ~v1
  = du_HasCertState'45'ChainState_3508
du_HasCertState'45'ChainState_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1558
du_HasCertState'45'ChainState_3508
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1568
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1566
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3008)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2994
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3334)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3324
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3430)
                    (d_newEpochState_3492 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasDeposits-ChainState
d_HasDeposits'45'ChainState_3510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1202
d_HasDeposits'45'ChainState_3510 ~v0 ~v1
  = du_HasDeposits'45'ChainState_3510
du_HasDeposits'45'ChainState_3510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1202
du_HasDeposits'45'ChainState_3510
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1212
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1210
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2552)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2538
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3002)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2994
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3334)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3324
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3430)
                       (d_newEpochState_3492 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_3512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1286
d_HasRewards'45'ChainState_3512 ~v0 ~v1
  = du_HasRewards'45'ChainState_3512
du_HasRewards'45'ChainState_3512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1286
du_HasRewards'45'ChainState_3512
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1296
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1294
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1598)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1566
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3008)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_2994
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3334)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3324
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3430)
                       (d_newEpochState_3492 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_3514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
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
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1226)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1218
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3338)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3324
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3430)
                    (d_newEpochState_3492 (coe v0))))))
-- Ledger.Conway.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_3516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2966 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638] ->
  Integer
d_totalRefScriptsSize_3516 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2586
            (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2974
                  (coe v2))))
         v3)
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__3538 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__3538
  = C_CHAIN_3628 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Chain._.newEpochState
d_newEpochState_3550 ::
  T_ChainState_3488 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360
d_newEpochState_3550 v0 = coe d_newEpochState_3492 (coe v0)
-- Ledger.Conway.Specification.Chain._.bheader
d_bheader_3558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  T_ChainState_3488 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2350
d_bheader_3558 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_3558 v3
du_bheader_3558 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2350
du_bheader_3558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2376
      (coe v0)
-- Ledger.Conway.Specification.Chain._.ts
d_ts_3560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  T_ChainState_3488 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638]
d_ts_3560 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_3560 v3
du_ts_3560 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638]
du_ts_3560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2378
      (coe v0)
-- Ledger.Conway.Specification.Chain._.bhbody
d_bhbody_3568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  T_ChainState_3488 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2326
d_bhbody_3568 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_3568 v3
du_bhbody_3568 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2326
du_bhbody_3568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2356
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2376
         (coe v0))
-- Ledger.Conway.Specification.Chain._.slot
d_slot_3582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  T_ChainState_3488 -> AgdaAny
d_slot_3582 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_3582 v3
du_slot_3582 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  AgdaAny
du_slot_3582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2342
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2356
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2376
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.bcur
d_bcur_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  T_ChainState_3488 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3586 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_3586 v4
du_bcur_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_3586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3378 (coe v0)
-- Ledger.Conway.Specification.Chain._.epochState
d_epochState_3590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  T_ChainState_3488 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3288
d_epochState_3590 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_3590 v4
du_epochState_3590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3288
du_epochState_3590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3380
      (coe v0)
-- Ledger.Conway.Specification.Chain._.acnt
d_acnt_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  T_ChainState_3488 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_3600 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_3600 v4
du_acnt_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
du_acnt_3600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3300
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3380
         (coe v0))
-- Ledger.Conway.Specification.Chain._.es
d_es_3602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  T_ChainState_3488 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1182
d_es_3602 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_3602 v4
du_es_3602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1182
du_es_3602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3306
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3380
         (coe v0))
-- Ledger.Conway.Specification.Chain._.ls
d_ls_3606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  T_ChainState_3488 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2966
d_ls_3606 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_3606 v4
du_ls_3606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2966
du_ls_3606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3304
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3380
         (coe v0))
-- Ledger.Conway.Specification.Chain._.pparams
d_pparams_3616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  T_ChainState_3488 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3616 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3616 v4
du_pparams_3616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1200
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3306
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3380
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  T_ChainState_3488 -> Integer
d_maxRefScriptSizePerBlock_3624 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_3624 v5
du_maxRefScriptSizePerBlock_3624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3360 ->
  Integer
du_maxRefScriptSizePerBlock_3624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1096)
         (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1200
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3306
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3380
                  (coe v0)))))
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAINS⦈_
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_3488 ->
  [MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2362] ->
  T_ChainState_3488 -> ()
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3630 = erased
-- Ledger.Conway.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_19423 ::
  T_GeneralizeTel_19425 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2966
d_'46'generalizedField'45'ls''_19423 v0
  = case coe v0 of
      C_mkGeneralizeTel_19427 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.GeneralizeTel
d_GeneralizeTel_19425 a0 a1 = ()
newtype T_GeneralizeTel_19425
  = C_mkGeneralizeTel_19427 MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2966
