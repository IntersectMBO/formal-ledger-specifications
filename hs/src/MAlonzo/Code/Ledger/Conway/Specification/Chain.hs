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
d_HasCast'45'HashProtected_282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_282 ~v0
  = du_HasCast'45'HashProtected_282
du_HasCast'45'HashProtected_282 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1122
-- _.HasPParams
d_HasPParams_360 a0 a1 a2 = ()
-- _.PParamsOf
d_PParamsOf_508 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx
d_Tx_646 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1334 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_1334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- _.Tx.body
d_body_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3490
d_body_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3702
      (coe v0)
-- _.Tx.isValid
d_isValid_1972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690 ->
  Bool
d_isValid_1972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3708
      (coe v0)
-- _.Tx.txAD
d_txAD_1974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690 ->
  Maybe AgdaAny
d_txAD_1974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3710
      (coe v0)
-- _.Tx.txsize
d_txsize_1976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690 ->
  Integer
d_txsize_1976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3706
      (coe v0)
-- _.Tx.wits
d_wits_1978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3668
d_wits_1978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3704
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2064 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.BBodyEnv
d_BBodyEnv_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  ()
d_BBodyEnv_2068 = erased
-- Ledger.Conway.Specification.Chain._.BBodyState
d_BBodyState_2070 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  ()
d_BBodyState_2070 = erased
-- Ledger.Conway.Specification.Chain._.BHBody
d_BHBody_2072 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.BHeader
d_BHeader_2076 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.Block
d_Block_2080 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.incrBlocks
d_incrBlocks_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2084 v0 ~v1 = du_incrBlocks_2084 v0
du_incrBlocks_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2420
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bhash
d_bhash_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2352 ->
  AgdaAny
d_bhash_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhash_2370
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bsize
d_bsize_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2352 ->
  Integer
d_bsize_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bsize_2366
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.bvkcold
d_bvkcold_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2352 ->
  AgdaAny
d_bvkcold_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2364
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.hBbsize
d_hBbsize_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2352 ->
  Integer
d_hBbsize_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_hBbsize_2372
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHBody.slot
d_slot_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2352 ->
  AgdaAny
d_slot_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2368
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhbody
d_bhbody_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2376 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2352
d_bhbody_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2382
      (coe v0)
-- Ledger.Conway.Specification.Chain._.BHeader.bhsig
d_bhsig_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2376 ->
  AgdaAny
d_bhsig_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhsig_2384
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodyHash
d_bBodyHash_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  AgdaAny
d_bBodyHash_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2408
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bBodySize
d_bBodySize_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  Integer
d_bBodySize_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2406
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.bheader
d_bheader_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2376
d_bheader_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2402
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.ts
d_ts_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690]
d_ts_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2404
      (coe v0)
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2118 = erased
-- Ledger.Conway.Specification.Chain._.Block.≡-bBodySize
d_'8801''45'bBodySize_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2120 = erased
-- Ledger.Conway.Specification.Chain._.CertStateOf
d_CertStateOf_2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1584 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1488
d_CertStateOf_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1592
      (coe v0)
-- Ledger.Conway.Specification.Chain._.DepositsOf
d_DepositsOf_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1228 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1236
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState
d_HasCertState_2226 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits
d_HasDeposits_2242 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards
d_HasRewards_2274 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasRewards-CertState
d_HasRewards'45'CertState_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1312
d_HasRewards'45'CertState_2278 ~v0 ~v1
  = du_HasRewards'45'CertState_2278
du_HasRewards'45'CertState_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1312
du_HasRewards'45'CertState_2278
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1624
-- Ledger.Conway.Specification.Chain._.RewardsOf
d_RewardsOf_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1312 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1320
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState.CertStateOf
d_CertStateOf_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1584 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1488
d_CertStateOf_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1592
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasDeposits.DepositsOf
d_DepositsOf_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1228 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1236
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasRewards.RewardsOf
d_RewardsOf_2504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1312 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1320
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EnactStateOf
d_EnactStateOf_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1236 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208
d_EnactStateOf_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1244
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState
d_HasEnactState_2564 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasPParams-EnactState
d_HasPParams'45'EnactState_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'EnactState_2568 ~v0 ~v1
  = du_HasPParams'45'EnactState_2568
du_HasPParams'45'EnactState_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'EnactState_2568
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1252
-- Ledger.Conway.Specification.Chain._.HasEnactState.EnactStateOf
d_EnactStateOf_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1236 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208
d_EnactStateOf_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1244
      (coe v0)
-- Ledger.Conway.Specification.Chain._.EpochStateOf
d_EpochStateOf_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3342 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314
d_EpochStateOf_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3350
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1236
d_HasEnactState'45'EpochState_2652 ~v0 ~v1
  = du_HasEnactState'45'EpochState_2652
du_HasEnactState'45'EpochState_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1236
du_HasEnactState'45'EpochState_2652
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3364
-- Ledger.Conway.Specification.Chain._.HasEpochState
d_HasEpochState_2656 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3342
d_HasEpochState'45'NewEpochState_2660 ~v0 ~v1
  = du_HasEpochState'45'NewEpochState_2660
du_HasEpochState'45'NewEpochState_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3342
du_HasEpochState'45'NewEpochState_2660
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3456
-- Ledger.Conway.Specification.Chain._.HasLState-EpochState
d_HasLState'45'EpochState_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3012
d_HasLState'45'EpochState_2666 ~v0 ~v1
  = du_HasLState'45'EpochState_2666
du_HasLState'45'EpochState_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3012
du_HasLState'45'EpochState_2666
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3360
-- Ledger.Conway.Specification.Chain._.HasLastEpoch
d_HasLastEpoch_2670 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3438
d_HasLastEpoch'45'NewEpochState_2674 ~v0 ~v1
  = du_HasLastEpoch'45'NewEpochState_2674
du_HasLastEpoch'45'NewEpochState_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3438
du_HasLastEpoch'45'NewEpochState_2674
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3454
-- Ledger.Conway.Specification.Chain._.HasNewEpochState
d_HasNewEpochState_2676 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.LastEpochOf
d_LastEpochOf_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3438 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3446
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState
d_NewEpochState_2710 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.NewEpochStateOf
d_NewEpochStateOf_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386
d_NewEpochStateOf_2714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3426
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasEpochState.EpochStateOf
d_EpochStateOf_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3342 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314
d_EpochStateOf_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3350
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLastEpoch.LastEpochOf
d_LastEpochOf_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3438 ->
  AgdaAny -> AgdaAny
d_LastEpochOf_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3446
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386
d_NewEpochStateOf_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3426
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bcur
d_bcur_2810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3404 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.bprev
d_bprev_2812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3402
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.epochState
d_epochState_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314
d_epochState_2814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3406
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  AgdaAny
d_lastEpoch_2816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3400
      (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.pd
d_pd_2818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3410 (coe v0)
-- Ledger.Conway.Specification.Chain._.NewEpochState.ru
d_ru_2820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038
d_ru_2820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3408 (coe v0)
-- Ledger.Conway.Specification.Chain._.HasCertState-LState
d_HasCertState'45'LState_3028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1584
d_HasCertState'45'LState_3028 ~v0 ~v1
  = du_HasCertState'45'LState_3028
du_HasCertState'45'LState_3028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1584
du_HasCertState'45'LState_3028
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3034
-- Ledger.Conway.Specification.Chain._.HasLState
d_HasLState_3044 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.HasUTxOState-LState
d_HasUTxOState'45'LState_3056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2556
d_HasUTxOState'45'LState_3056 ~v0 ~v1
  = du_HasUTxOState'45'LState_3056
du_HasUTxOState'45'LState_3056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2556
du_HasUTxOState'45'LState_3056
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3028
-- Ledger.Conway.Specification.Chain._.LState
d_LState_3068 a0 a1 = ()
-- Ledger.Conway.Specification.Chain._.LStateOf
d_LStateOf_3072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3012 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992
d_LStateOf_3072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3020
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasLState.LStateOf
d_LStateOf_3090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3012 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992
d_LStateOf_3090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3020
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.certState
d_certState_3106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1488
d_certState_3106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_3004
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.govSt
d_govSt_3108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_3002
      (coe v0)
-- Ledger.Conway.Specification.Chain._.LState.utxoSt
d_utxoSt_3110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
d_utxoSt_3110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_3000
      (coe v0)
-- Ledger.Conway.Specification.Chain._._⊢_⇀⦇_,TICK⦈_
d__'8866'_'8640''10631'_'44'TICK'10632'__3298 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Chain._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_3340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1228
d_HasDeposits'45'UTxOState_3340 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_3340
du_HasDeposits'45'UTxOState_3340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1228
du_HasDeposits'45'UTxOState_3340
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2578
-- Ledger.Conway.Specification.Chain._.HasUTxOState
d_HasUTxOState_3350 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Chain._.UTxOStateOf
d_UTxOStateOf_3374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2556 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
d_UTxOStateOf_3374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2564
      (coe v0)
-- Ledger.Conway.Specification.Chain._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2556 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
d_UTxOStateOf_3464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2564
      (coe v0)
-- Ledger.Conway.Specification.Chain.ChainState
d_ChainState_3514 a0 a1 = ()
newtype T_ChainState_3514
  = C_constructor_3520 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386
-- Ledger.Conway.Specification.Chain.ChainState.newEpochState
d_newEpochState_3518 ::
  T_ChainState_3514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386
d_newEpochState_3518 v0
  = case coe v0 of
      C_constructor_3520 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.HasNewEpochState-ChainState
d_HasNewEpochState'45'ChainState_3522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3418
d_HasNewEpochState'45'ChainState_3522 ~v0 ~v1
  = du_HasNewEpochState'45'ChainState_3522
du_HasNewEpochState'45'ChainState_3522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3418
du_HasNewEpochState'45'ChainState_3522
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3428
      (coe (\ v0 -> d_newEpochState_3518 (coe v0)))
-- Ledger.Conway.Specification.Chain.HasLastEpoch-ChainState
d_HasLastEpoch'45'ChainState_3524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3438
d_HasLastEpoch'45'ChainState_3524 ~v0 ~v1
  = du_HasLastEpoch'45'ChainState_3524
du_HasLastEpoch'45'ChainState_3524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3438
du_HasLastEpoch'45'ChainState_3524
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3448
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3446
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3454)
              (d_newEpochState_3518 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEpochState-ChainState
d_HasEpochState'45'ChainState_3526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3342
d_HasEpochState'45'ChainState_3526 ~v0 ~v1
  = du_HasEpochState'45'ChainState_3526
du_HasEpochState'45'ChainState_3526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3342
du_HasEpochState'45'ChainState_3526
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3352
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3350
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3456)
              (d_newEpochState_3518 (coe v0))))
-- Ledger.Conway.Specification.Chain.HasEnactState-ChainState
d_HasEnactState'45'ChainState_3528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1236
d_HasEnactState'45'ChainState_3528 ~v0 ~v1
  = du_HasEnactState'45'ChainState_3528
du_HasEnactState'45'ChainState_3528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1236
du_HasEnactState'45'ChainState_3528
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1246
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1244
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3364)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3350
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3456)
                 (d_newEpochState_3518 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasLState-ChainState
d_HasLState'45'ChainState_3530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3012
d_HasLState'45'ChainState_3530 ~v0 ~v1
  = du_HasLState'45'ChainState_3530
du_HasLState'45'ChainState_3530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3012
du_HasLState'45'ChainState_3530
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_constructor_3022
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3020
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3360)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3350
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3456)
                 (d_newEpochState_3518 (coe v0)))))
-- Ledger.Conway.Specification.Chain.HasUTxOState-ChainState
d_HasUTxOState'45'ChainState_3532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2556
d_HasUTxOState'45'ChainState_3532 ~v0 ~v1
  = du_HasUTxOState'45'ChainState_3532
du_HasUTxOState'45'ChainState_3532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2556
du_HasUTxOState'45'ChainState_3532
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2566
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2564
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3028)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3020
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3360)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3350
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3456)
                    (d_newEpochState_3518 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasCertState-ChainState
d_HasCertState'45'ChainState_3534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1584
d_HasCertState'45'ChainState_3534 ~v0 ~v1
  = du_HasCertState'45'ChainState_3534
du_HasCertState'45'ChainState_3534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1584
du_HasCertState'45'ChainState_3534
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1594
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1592
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3034)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3020
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3360)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3350
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3456)
                    (d_newEpochState_3518 (coe v0))))))
-- Ledger.Conway.Specification.Chain.HasDeposits-ChainState
d_HasDeposits'45'ChainState_3536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1228
d_HasDeposits'45'ChainState_3536 ~v0 ~v1
  = du_HasDeposits'45'ChainState_3536
du_HasDeposits'45'ChainState_3536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1228
du_HasDeposits'45'ChainState_3536
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1238
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1236
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2578)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2564
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxOState'45'LState_3028)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3020
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3360)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3350
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3456)
                       (d_newEpochState_3518 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasRewards-ChainState
d_HasRewards'45'ChainState_3538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1312
d_HasRewards'45'ChainState_3538 ~v0 ~v1
  = du_HasRewards'45'ChainState_3538
du_HasRewards'45'ChainState_3538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1312
du_HasRewards'45'ChainState_3538
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1322
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1320
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1624)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1592
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCertState'45'LState_3034)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_LStateOf_3020
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3360)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3350
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3456)
                       (d_newEpochState_3518 (coe v0)))))))
-- Ledger.Conway.Specification.Chain.HasPParams-ChainState
d_HasPParams'45'ChainState_3540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'ChainState_3540 ~v0 ~v1
  = du_HasPParams'45'ChainState_3540
du_HasPParams'45'ChainState_3540 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'ChainState_3540
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_446
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1252)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1244
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3364)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3350
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3456)
                    (d_newEpochState_3518 (coe v0))))))
-- Ledger.Conway.Specification.Chain.totalRefScriptsSize
d_totalRefScriptsSize_3542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690] ->
  Integer
d_totalRefScriptsSize_3542 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2612
            (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2542
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_3000
                  (coe v2))))
         v3)
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__3564 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__3564
  = C_CHAIN_3654 MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386
                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Chain._.newEpochState
d_newEpochState_3576 ::
  T_ChainState_3514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386
d_newEpochState_3576 v0 = coe d_newEpochState_3518 (coe v0)
-- Ledger.Conway.Specification.Chain._.bheader
d_bheader_3584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_19717 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  T_ChainState_3514 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2376
d_bheader_3584 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bheader_3584 v3
du_bheader_3584 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2376
du_bheader_3584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2402
      (coe v0)
-- Ledger.Conway.Specification.Chain._.ts
d_ts_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_19717 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  T_ChainState_3514 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690]
d_ts_3586 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_ts_3586 v3
du_ts_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690]
du_ts_3586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2404
      (coe v0)
-- Ledger.Conway.Specification.Chain._.bhbody
d_bhbody_3594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_19717 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  T_ChainState_3514 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2352
d_bhbody_3594 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_bhbody_3594 v3
du_bhbody_3594 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHBody_2352
du_bhbody_3594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2382
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2402
         (coe v0))
-- Ledger.Conway.Specification.Chain._.slot
d_slot_3608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_19717 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  T_ChainState_3514 -> AgdaAny
d_slot_3608 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_slot_3608 v3
du_slot_3608 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  AgdaAny
du_slot_3608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2368
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2382
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2402
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.bcur
d_bcur_3612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_19717 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  T_ChainState_3514 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_3612 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_bcur_3612 v4
du_bcur_3612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_bcur_3612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3404 (coe v0)
-- Ledger.Conway.Specification.Chain._.epochState
d_epochState_3616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_19717 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  T_ChainState_3514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314
d_epochState_3616 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_epochState_3616 v4
du_epochState_3616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314
du_epochState_3616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3406
      (coe v0)
-- Ledger.Conway.Specification.Chain._.acnt
d_acnt_3626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_19717 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  T_ChainState_3514 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_3626 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_acnt_3626 v4
du_acnt_3626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
du_acnt_3626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3326
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3406
         (coe v0))
-- Ledger.Conway.Specification.Chain._.es
d_es_3628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_19717 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  T_ChainState_3514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208
d_es_3628 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_es_3628 v4
du_es_3628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208
du_es_3628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3332
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3406
         (coe v0))
-- Ledger.Conway.Specification.Chain._.ls
d_ls_3632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_19717 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  T_ChainState_3514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992
d_ls_3632 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ls_3632 v4
du_ls_3632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992
du_ls_3632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3330
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3406
         (coe v0))
-- Ledger.Conway.Specification.Chain._.pparams
d_pparams_3642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_19717 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  T_ChainState_3514 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3642 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_pparams_3642 v4
du_pparams_3642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3406
            (coe v0)))
-- Ledger.Conway.Specification.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_3650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_19717 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  T_ChainState_3514 -> Integer
d_maxRefScriptSizePerBlock_3650 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_maxRefScriptSizePerBlock_3650 v5
du_maxRefScriptSizePerBlock_3650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  Integer
du_maxRefScriptSizePerBlock_3650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1122)
         (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1226
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3406
                  (coe v0)))))
-- Ledger.Conway.Specification.Chain._⊢_⇀⦇_,CHAINS⦈_
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_ChainState_3514 ->
  [MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2388] ->
  T_ChainState_3514 -> ()
d__'8866'_'8640''10631'_'44'CHAINS'10632'__3656 = erased
-- Ledger.Conway.Specification.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_19715 ::
  T_GeneralizeTel_19717 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992
d_'46'generalizedField'45'ls''_19715 v0
  = case coe v0 of
      C_mkGeneralizeTel_19719 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Chain.GeneralizeTel
d_GeneralizeTel_19717 a0 a1 = ()
newtype T_GeneralizeTel_19717
  = C_mkGeneralizeTel_19719 MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992
