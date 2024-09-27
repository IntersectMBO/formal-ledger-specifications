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

module MAlonzo.Code.Ledger.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Chain
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Ledger.Utxo.Properties
import qualified MAlonzo.Code.Ledger.Utxow
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.Credential
d_Credential_68 a0 = ()
-- _.DepositPurpose
d_DepositPurpose_184 a0 = ()
-- _.Epoch
d_Epoch_192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_192 = erased
-- _.Slot
d_Slot_408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_408 = erased
-- _.Tx
d_Tx_438 a0 = ()
-- _.coin
d_coin_502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_502 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2276 (coe v0))
-- _.preoEpoch
d_preoEpoch_626 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_626 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0))
-- _.Tx.body
d_body_1632 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796
d_body_1632 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2908 (coe v0)
-- _.Tx.isValid
d_isValid_1634 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> Bool
d_isValid_1634 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2912 (coe v0)
-- _.Tx.txAD
d_txAD_1636 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> Maybe AgdaAny
d_txAD_1636 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2914 (coe v0)
-- _.Tx.wits
d_wits_1638 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2878
d_wits_1638 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2910 (coe v0)
-- Ledger.Properties._._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__1742 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Properties._.Block
d_Block_1744 a0 a1 = ()
-- Ledger.Properties._.ChainState
d_ChainState_1748 a0 a1 = ()
-- Ledger.Properties._.Block.slot
d_slot_1768 :: MAlonzo.Code.Ledger.Chain.T_Block_2256 -> AgdaAny
d_slot_1768 v0 = coe MAlonzo.Code.Ledger.Chain.d_slot_2264 (coe v0)
-- Ledger.Properties._.Block.ts
d_ts_1770 ::
  MAlonzo.Code.Ledger.Chain.T_Block_2256 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2898]
d_ts_1770 v0 = coe MAlonzo.Code.Ledger.Chain.d_ts_2262 (coe v0)
-- Ledger.Properties._.ChainState.newEpochState
d_newEpochState_1774 ::
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326
d_newEpochState_1774 v0
  = coe MAlonzo.Code.Ledger.Chain.d_newEpochState_2254 (coe v0)
-- Ledger.Properties._.consumed
d_consumed_1828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> AgdaAny
d_consumed_1828 v0 ~v1 = du_consumed_1828 v0
du_consumed_1828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2796 -> AgdaAny
du_consumed_1828 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2528 (coe v0)
-- Ledger.Properties._.NewEpochState
d_NewEpochState_1948 a0 a1 = ()
-- Ledger.Properties._.NewEpochState.epochState
d_epochState_2012 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302
d_epochState_2012 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_epochState_2336 (coe v0)
-- Ledger.Properties._.NewEpochState.lastEpoch
d_lastEpoch_2014 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 -> AgdaAny
d_lastEpoch_2014 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_lastEpoch_2334 (coe v0)
-- Ledger.Properties._.NewEpochState.ru
d_ru_2016 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 ->
  Maybe MAlonzo.Code.Ledger.Epoch.T_RewardUpdate_2242
d_ru_2016 v0 = coe MAlonzo.Code.Ledger.Epoch.d_ru_2338 (coe v0)
-- Ledger.Properties._._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2050 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Properties._.LEnv
d_LEnv_2056 a0 a1 = ()
-- Ledger.Properties._.LState
d_LState_2058 a0 a1 = ()
-- Ledger.Properties._.LEnv.enactState
d_enactState_2074 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2128 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2074 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2146 (coe v0)
-- Ledger.Properties._.LEnv.pparams
d_pparams_2076 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2128 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2076 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2144 (coe v0)
-- Ledger.Properties._.LEnv.ppolicy
d_ppolicy_2078 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2128 -> Maybe AgdaAny
d_ppolicy_2078 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2142 (coe v0)
-- Ledger.Properties._.LEnv.slot
d_slot_2080 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2128 -> AgdaAny
d_slot_2080 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2140 (coe v0)
-- Ledger.Properties._.LEnv.treasury
d_treasury_2082 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2128 -> Integer
d_treasury_2082 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2148 (coe v0)
-- Ledger.Properties._.LState.certState
d_certState_2086 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2152 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952
d_certState_2086 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_certState_2164 (coe v0)
-- Ledger.Properties._.LState.govSt
d_govSt_2088 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2088 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_govSt_2162 (coe v0)
-- Ledger.Properties._.LState.utxoSt
d_utxoSt_2090 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2152 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
d_utxoSt_2090 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160 (coe v0)
-- Ledger.Properties._.EnactState
d_EnactState_2112 a0 a1 = ()
-- Ledger.Properties._.EnactState.cc
d_cc_2148 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2148 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v0)
-- Ledger.Properties._.EnactState.constitution
d_constitution_2150 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2150 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_866 (coe v0)
-- Ledger.Properties._.EnactState.pparams
d_pparams_2152 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2152 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_870 (coe v0)
-- Ledger.Properties._.EnactState.pv
d_pv_2154 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2154 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_868 (coe v0)
-- Ledger.Properties._.EnactState.withdrawals
d_withdrawals_2156 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2156 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_872 (coe v0)
-- Ledger.Properties._.GovState
d_GovState_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 -> ()
d_GovState_2182 = erased
-- Ledger.Properties.isCredDeposit
d_isCredDeposit_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 -> ()
d_isCredDeposit_2266 = erased
-- Ledger.Properties.isCredDeposit?
d_isCredDeposit'63'_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isCredDeposit'63'_2270 ~v0 ~v1 v2 = du_isCredDeposit'63'_2270 v2
du_isCredDeposit'63'_2270 ::
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isCredDeposit'63'_2270 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_838 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
      MAlonzo.Code.Ledger.Certs.C_PoolDeposit_840 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Certs.C_DRepDeposit_842 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Properties.isGADeposit
d_isGADeposit_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 -> ()
d_isGADeposit_2280 = erased
-- Ledger.Properties.isGADeposit?
d_isGADeposit'63'_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isGADeposit'63'_2284 ~v0 ~v1 v2 = du_isGADeposit'63'_2284 v2
du_isGADeposit'63'_2284 ::
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isGADeposit'63'_2284 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_838 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Certs.C_PoolDeposit_840 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Certs.C_DRepDeposit_842 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Properties.getLState
d_getLState_2294 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2152
d_getLState_2294 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_ls_2318
      (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2336 (coe v0))
-- Ledger.Properties.getRewards
d_getRewards_2296 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getRewards_2296 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_rewards_924
      (coe
         MAlonzo.Code.Ledger.Certs.d_dState_960
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_2164
            (coe
               MAlonzo.Code.Ledger.Epoch.d_ls_2318
               (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2336 (coe v0)))))
-- Ledger.Properties.allDReps
d_allDReps_2298 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_allDReps_2298 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dreps_946
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_964
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_2164
            (coe
               MAlonzo.Code.Ledger.Epoch.d_ls_2318
               (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2336 (coe v0)))))
-- Ledger.Properties.activeDReps
d_activeDReps_2300 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_activeDReps_2300 v0 ~v1 v2 v3 = du_activeDReps_2300 v0 v2 v3
du_activeDReps_2300 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_activeDReps_2300 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.IsSet.du_dom_540
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1138
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
              (coe
                 MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
                 (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0)))
                    (\ v4 v5 -> v4) v1
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v4 v5 -> v5)
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0)))
                    v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0)))
                 (coe v1) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (MAlonzo.Code.Ledger.Certs.d_dreps_946
            (coe
               MAlonzo.Code.Ledger.Certs.d_gState_964
               (coe
                  MAlonzo.Code.Ledger.Ledger.d_certState_2164
                  (coe
                     MAlonzo.Code.Ledger.Epoch.d_ls_2318
                     (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2336 (coe v2)))))))
-- Ledger.Properties.getGovState
d_getGovState_2310 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getGovState_2310 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_govSt_2162
      (coe
         MAlonzo.Code.Ledger.Epoch.d_ls_2318
         (coe MAlonzo.Code.Ledger.Epoch.d_epochState_2336 (coe v0)))
-- Ledger.Properties._
d___2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_474
d___2312 ~v0 ~v1 = du___2312
du___2312 :: MAlonzo.Code.Interface.IsSet.T_IsSet_474
du___2312
  = coe
      MAlonzo.Code.Interface.IsSet.C_IsSet'46'constructor_2009
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Axiom.Set.du_fromList_416
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1458
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe MAlonzo.Code.Ledger.Chain.d_ts_2262 (coe v0))))
-- Ledger.Properties.validBlockIn
d_validBlockIn_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 ->
  MAlonzo.Code.Ledger.Chain.T_Block_2256 -> ()
d_validBlockIn_2316 = erased
-- Ledger.Properties.validBlock
d_validBlock_2324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Chain.T_Block_2256 -> ()
d_validBlock_2324 = erased
-- Ledger.Properties.validTxIn₁
d_validTxIn'8321'_2330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> ()
d_validTxIn'8321'_2330 = erased
-- Ledger.Properties._.ledgerEnv
d_ledgerEnv_2382 ::
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 ->
  AgdaAny -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2128
d_ledgerEnv_2382 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2150
      (coe v1)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Enact.d_constitution_866
               (coe
                  MAlonzo.Code.Ledger.Epoch.d_es_2320
                  (coe
                     MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                     (coe MAlonzo.Code.Ledger.Chain.d_newEpochState_2254 (coe v0)))))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Ledger.Enact.d_pparams_870
            (coe
               MAlonzo.Code.Ledger.Epoch.d_es_2320
               (coe
                  MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                  (coe MAlonzo.Code.Ledger.Chain.d_newEpochState_2254 (coe v0))))))
      (coe
         MAlonzo.Code.Ledger.Epoch.d_es_2320
         (coe
            MAlonzo.Code.Ledger.Epoch.d_epochState_2336
            (coe MAlonzo.Code.Ledger.Chain.d_newEpochState_2254 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.PParams.d_treasury_152
         (coe
            MAlonzo.Code.Ledger.Epoch.d_acnt_2314
            (coe
               MAlonzo.Code.Ledger.Epoch.d_epochState_2336
               (coe MAlonzo.Code.Ledger.Chain.d_newEpochState_2254 (coe v0)))))
-- Ledger.Properties._.validTxIn₂
d_validTxIn'8322'_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 ->
  AgdaAny -> MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> ()
d_validTxIn'8322'_2384 = erased
-- Ledger.Properties.validTx₁
d_validTx'8321'_2390 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 -> ()
d_validTx'8321'_2390 = erased
-- Ledger.Properties.ChainInvariant
d_ChainInvariant_2398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (MAlonzo.Code.Ledger.Chain.T_ChainState_2250 -> ()) -> ()
d_ChainInvariant_2398 = erased
-- Ledger.Properties._._.utxoSt
d_utxoSt_2444 ::
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
d_utxoSt_2444 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
      (coe
         MAlonzo.Code.Ledger.Epoch.d_ls_2318
         (coe
            MAlonzo.Code.Ledger.Epoch.d_epochState_2336
            (coe MAlonzo.Code.Ledger.Chain.d_newEpochState_2254 (coe v0))))
-- Ledger.Properties._.pparams
d_pparams_2474 ::
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2474 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Ledger.Enact.d_pparams_870
         (coe
            MAlonzo.Code.Ledger.Epoch.d_es_2320
            (coe
               MAlonzo.Code.Ledger.Epoch.d_epochState_2336
               (coe MAlonzo.Code.Ledger.Chain.d_newEpochState_2254 (coe v0)))))
-- Ledger.Properties._._.govActionDeposit
d_govActionDeposit_2502 ::
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 -> Integer
d_govActionDeposit_2502 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Ledger.Enact.d_pparams_870
            (coe
               MAlonzo.Code.Ledger.Epoch.d_es_2320
               (coe
                  MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                  (coe MAlonzo.Code.Ledger.Chain.d_newEpochState_2254 (coe v0))))))
-- Ledger.Properties._._._.noRefundCert
d_noRefundCert_2684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (() ->
   () ->
   MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
   MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
   MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (() ->
   MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] -> ()
d_noRefundCert_2684 = erased
-- Ledger.Properties._._.propose-minSpend
d_propose'45'minSpend_2730 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (() ->
   () ->
   MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
   MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
   MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (() ->
   MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_propose'45'minSpend_2730 v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 v8
  = du_propose'45'minSpend_2730 v0 v2 v3 v4 v5 v8
du_propose'45'minSpend_2730 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_propose'45'minSpend_2730 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> case coe v7 of
             MAlonzo.Code.Ledger.Ledger.C_LEDGER'45'V_2314 v14
               -> case coe v6 of
                    MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2166 v15 v16 v17
                      -> case coe v14 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                             -> case coe v19 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                    -> case coe v20 of
                                         MAlonzo.Code.Ledger.Utxow.C_UTXOW'45'inductive_2378 v26
                                           -> case coe v26 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                  -> case coe v28 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                         -> case coe v30 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                                -> case coe v32 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v33 v34
                                                                       -> case coe v34 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                              -> case coe v36 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v37 v38
                                                                                     -> case coe
                                                                                               v38 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v39 v40
                                                                                            -> case coe
                                                                                                      v40 of
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v41 v42
                                                                                                   -> coe
                                                                                                        seq
                                                                                                        (coe
                                                                                                           v21)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Utxo.Properties.du_gmsc_3494
                                                                                                           (coe
                                                                                                              v0)
                                                                                                           (coe
                                                                                                              v3)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Utxo.C_UTxOEnv'46'constructor_8933
                                                                                                              (let v43
                                                                                                                     = coe
                                                                                                                         MAlonzo.Code.Ledger.Ledger.C_mkGeneralizeTel_6391
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                  (coe
                                                                                                                                     v1))))
                                                                                                                         (coe
                                                                                                                            v3)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2150
                                                                                                                            (coe
                                                                                                                               v2)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                              (coe
                                                                                                                                                 v1)))))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                           (coe
                                                                                                                                              v1))))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                     (coe
                                                                                                                                        v1))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.PParams.d_treasury_152
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_acnt_2314
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                        (coe
                                                                                                                                           v1))))))
                                                                                                                         (coe
                                                                                                                            v15)
                                                                                                                         (coe
                                                                                                                            v17)
                                                                                                                         (coe
                                                                                                                            v16) in
                                                                                                               coe
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Ledger.d_slot_2140
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Ledger.d_'46'generalizedField'45'Γ_6381
                                                                                                                       (coe
                                                                                                                          v43))))
                                                                                                              (let v43
                                                                                                                     = coe
                                                                                                                         MAlonzo.Code.Ledger.Ledger.C_mkGeneralizeTel_6391
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                  (coe
                                                                                                                                     v1))))
                                                                                                                         (coe
                                                                                                                            v3)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2150
                                                                                                                            (coe
                                                                                                                               v2)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                              (coe
                                                                                                                                                 v1)))))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                           (coe
                                                                                                                                              v1))))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                     (coe
                                                                                                                                        v1))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.PParams.d_treasury_152
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_acnt_2314
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                        (coe
                                                                                                                                           v1))))))
                                                                                                                         (coe
                                                                                                                            v15)
                                                                                                                         (coe
                                                                                                                            v17)
                                                                                                                         (coe
                                                                                                                            v16) in
                                                                                                               coe
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Ledger.d_pparams_2144
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Ledger.d_'46'generalizedField'45'Γ_6381
                                                                                                                       (coe
                                                                                                                          v43))))
                                                                                                              (let v43
                                                                                                                     = coe
                                                                                                                         MAlonzo.Code.Ledger.Ledger.C_mkGeneralizeTel_6391
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                  (coe
                                                                                                                                     v1))))
                                                                                                                         (coe
                                                                                                                            v3)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2150
                                                                                                                            (coe
                                                                                                                               v2)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                              (coe
                                                                                                                                                 v1)))))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                           (coe
                                                                                                                                              v1))))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                     (coe
                                                                                                                                        v1))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.PParams.d_treasury_152
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_acnt_2314
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                        (coe
                                                                                                                                           v1))))))
                                                                                                                         (coe
                                                                                                                            v15)
                                                                                                                         (coe
                                                                                                                            v17)
                                                                                                                         (coe
                                                                                                                            v16) in
                                                                                                               coe
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Ledger.d_treasury_2148
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Ledger.d_'46'generalizedField'45'Γ_6381
                                                                                                                       (coe
                                                                                                                          v43)))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                       (coe
                                                                                                                          v1)))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                                                                              (coe
                                                                                                                 v15))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Utxo.d_fees_1982
                                                                                                              (coe
                                                                                                                 v15))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                              (coe
                                                                                                                 v15))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Utxo.d_donations_1986
                                                                                                              (coe
                                                                                                                 v15))
                                                                                                           (coe
                                                                                                              v42)
                                                                                                           (coe
                                                                                                              v5))
                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.Ledger.C_LEDGER'45'I_2394 v12
               -> case coe v6 of
                    MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2166 v13 v14 v15
                      -> case coe v12 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                             -> case coe v17 of
                                  MAlonzo.Code.Ledger.Utxow.C_UTXOW'45'inductive_2378 v22
                                    -> case coe v22 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                           -> case coe v24 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                  -> case coe v26 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                         -> case coe v28 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                -> case coe v30 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                                       -> case coe v32 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v33 v34
                                                                              -> case coe v34 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                                     -> case coe
                                                                                               v36 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v37 v38
                                                                                            -> coe
                                                                                                 MAlonzo.Code.Ledger.Utxo.Properties.du_gmsc_3494
                                                                                                 (coe
                                                                                                    v0)
                                                                                                 (coe
                                                                                                    v3)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Utxo.C_UTxOEnv'46'constructor_8933
                                                                                                    (let v39
                                                                                                           = coe
                                                                                                               MAlonzo.Code.Ledger.Ledger.C_mkGeneralizeTel_6811
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                        (coe
                                                                                                                           v1))))
                                                                                                               (coe
                                                                                                                  v3)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2150
                                                                                                                  (coe
                                                                                                                     v2)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                    (coe
                                                                                                                                       v1)))))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                 (coe
                                                                                                                                    v1))))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                           (coe
                                                                                                                              v1))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.PParams.d_treasury_152
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_acnt_2314
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                              (coe
                                                                                                                                 v1))))))
                                                                                                               (coe
                                                                                                                  v13) in
                                                                                                     coe
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Ledger.d_slot_2140
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Ledger.d_'46'generalizedField'45'Γ_6805
                                                                                                             (coe
                                                                                                                v39))))
                                                                                                    (let v39
                                                                                                           = coe
                                                                                                               MAlonzo.Code.Ledger.Ledger.C_mkGeneralizeTel_6811
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                        (coe
                                                                                                                           v1))))
                                                                                                               (coe
                                                                                                                  v3)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2150
                                                                                                                  (coe
                                                                                                                     v2)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                    (coe
                                                                                                                                       v1)))))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                 (coe
                                                                                                                                    v1))))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                           (coe
                                                                                                                              v1))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.PParams.d_treasury_152
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_acnt_2314
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                              (coe
                                                                                                                                 v1))))))
                                                                                                               (coe
                                                                                                                  v13) in
                                                                                                     coe
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Ledger.d_pparams_2144
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Ledger.d_'46'generalizedField'45'Γ_6805
                                                                                                             (coe
                                                                                                                v39))))
                                                                                                    (let v39
                                                                                                           = coe
                                                                                                               MAlonzo.Code.Ledger.Ledger.C_mkGeneralizeTel_6811
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                        (coe
                                                                                                                           v1))))
                                                                                                               (coe
                                                                                                                  v3)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_2150
                                                                                                                  (coe
                                                                                                                     v2)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                    (coe
                                                                                                                                       v1)))))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                                 (coe
                                                                                                                                    v1))))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_es_2320
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                           (coe
                                                                                                                              v1))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.PParams.d_treasury_152
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_acnt_2314
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                                              (coe
                                                                                                                                 v1))))))
                                                                                                               (coe
                                                                                                                  v13) in
                                                                                                     coe
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Ledger.d_treasury_2148
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Ledger.d_'46'generalizedField'45'Γ_6805
                                                                                                             (coe
                                                                                                                v39)))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Epoch.d_epochState_2336
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Chain.d_newEpochState_2254
                                                                                                             (coe
                                                                                                                v1)))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                                                                    (coe
                                                                                                       v13))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Utxo.d_fees_1982
                                                                                                    (coe
                                                                                                       v13))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                    (coe
                                                                                                       v13))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Utxo.d_donations_1986
                                                                                                    (coe
                                                                                                       v13))
                                                                                                 (coe
                                                                                                    v38)
                                                                                                 (coe
                                                                                                    v5)
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Properties._._._.isNewEpochBlock
d_isNewEpochBlock_2758 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 ->
  MAlonzo.Code.Ledger.Chain.T_Block_2256 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_isNewEpochBlock_2758 = erased
-- Ledger.Properties._._._.newChainState
d_newChainState_2760 ::
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 ->
  MAlonzo.Code.Ledger.Chain.T_Block_2256 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250
d_newChainState_2760 ~v0 ~v1 v2 = du_newChainState_2760 v2
du_newChainState_2760 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250
du_newChainState_2760 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)
-- Ledger.Properties._._._.getEnactState
d_getEnactState_2762 ::
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 ->
  MAlonzo.Code.Ledger.Chain.T_Block_2256 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_getEnactState_2762 ~v0 ~v1 ~v2 v3 = du_getEnactState_2762 v3
du_getEnactState_2762 ::
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_getEnactState_2762 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_es_2320
      (coe
         MAlonzo.Code.Ledger.Epoch.d_epochState_2336
         (coe MAlonzo.Code.Ledger.Chain.d_newEpochState_2254 (coe v0)))
-- Ledger.Properties._.action-deposits≡actions-prop
d_action'45'deposits'8801'actions'45'prop_2764 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 -> ()
d_action'45'deposits'8801'actions'45'prop_2764 = erased
-- Ledger.Properties._.dom-rwds≡credDeposits
d_dom'45'rwds'8801'credDeposits_2770 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 -> ()
d_dom'45'rwds'8801'credDeposits_2770 = erased
-- Ledger.Properties._.pp-wellFormed
d_pp'45'wellFormed_2772 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Chain.T_ChainState_2250 -> ()
d_pp'45'wellFormed_2772 = erased
