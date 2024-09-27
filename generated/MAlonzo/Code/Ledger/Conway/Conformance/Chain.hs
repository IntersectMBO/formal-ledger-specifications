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

module MAlonzo.Code.Ledger.Conway.Conformance.Chain where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Interface.HasSingleton
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- _.Credential
d_Credential_72 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_118 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
            (coe v0)))
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_120 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2398
         (coe v0))
-- _.DepositPurpose
d_DepositPurpose_186 a0 = ()
-- _.Slot
d_Slot_408 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_408 = erased
-- _.Tx
d_Tx_438 a0 = ()
-- _.VDeleg
d_VDeleg_458 a0 = ()
-- _.epoch
d_epoch_524 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_epoch_72
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1546
         (coe v0))
-- _.GovernanceActions.VDeleg
d_VDeleg_1002 a0 = ()
-- _.Tx.body
d_body_1620 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2782
d_body_1620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2894
      (coe v0)
-- _.Tx.isValid
d_isValid_1622 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  Bool
d_isValid_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2898
      (coe v0)
-- _.Tx.txAD
d_txAD_1624 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  Maybe AgdaAny
d_txAD_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_2900
      (coe v0)
-- _.Tx.wits
d_wits_1626 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2864
d_wits_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2896
      (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1796 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2114 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2138 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2138 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1796 = erased
-- Ledger.Conway.Conformance.Chain._.LEnv
d_LEnv_1804 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1806 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LEnv.enactState
d_enactState_1822 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2114 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_enactState_2132
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.pparams
d_pparams_1824 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2114 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2130
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.ppolicy
d_ppolicy_1826 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2114 ->
  Maybe AgdaAny
d_ppolicy_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_ppolicy_2128
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.slot
d_slot_1828 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2114 ->
  AgdaAny
d_slot_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2126 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.treasury
d_treasury_1830 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2114 ->
  Integer
d_treasury_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_treasury_2134
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1834 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_certState_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2150
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1836 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2138 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2148 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1838 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1956
d_utxoSt_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2146
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.StakeDistrs
d_StakeDistrs_1870 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1966 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1982 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1986
      (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2124 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_2138 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_2200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2312 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2288
d_epochState_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2322
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2202 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2312 ->
  AgdaAny
d_lastEpoch_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2320
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_2204 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2312 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2228
d_ru_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2324 (coe v0)
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2234 a0 a1 = ()
newtype T_ChainState_2234
  = C_ChainState'46'constructor_3819 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2312
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2238 ::
  T_ChainState_2234 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2312
d_newEpochState_2238 v0
  = case coe v0 of
      C_ChainState'46'constructor_3819 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2240 a0 a1 = ()
data T_Block_2240
  = C_Block'46'constructor_3877 [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884]
                                AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2246 ::
  T_Block_2240 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884]
d_ts_2246 v0
  = case coe v0 of
      C_Block'46'constructor_3877 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2248 :: T_Block_2240 -> AgdaAny
d_slot_2248 v0
  = case coe v0 of
      C_Block'46'constructor_3877 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2260 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2260 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2260 v0 v2 v3 v4
du_maybePurpose_2260 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2260 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2398
                           (coe v0)))
                     v1 v4 in
           coe
             (case coe v6 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                  -> if coe v7
                       then coe
                              seq (coe v8)
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v3))
                       else coe
                              seq (coe v8) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose-prop
d_maybePurpose'45'prop_2292 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2292 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2334 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2334 v0 ~v1 v2 v3 = du_filterPurpose_2334 v0 v2 v3
du_filterPurpose_2334 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2334 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_854
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1168
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe du_maybePurpose_2260 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2348 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2138 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2348 v0 ~v1 v2
  = du_govActionDeposits_2348 v0 v2
du_govActionDeposits_2348 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2138 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2348 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2398
               (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_564
         (MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                -> case coe v4 of
                     MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_GovActionState'46'constructor_6761 v5 v6 v7 v8 v9
                       -> case coe v6 of
                            MAlonzo.Code.Ledger.Conway.Conformance.Address.C_RwdAddr'46'constructor_3193 v10 v11
                              -> coe
                                   MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                         (coe
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2150
                                               (coe v1))))
                                      (coe v11)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                            erased
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1260
                                                     (coe v0)))))
                                         (coe v11)
                                         (let v12
                                                = MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v12
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2150
                                                           (coe v1)))))))))
                                   (coe
                                      (\ v12 ->
                                         coe
                                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 ()
                                           erased () erased
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2150
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2398
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                    (coe v3))
                                                 (let v13
                                                        = MAlonzo.Code.Axiom.Set.d_th_1458
                                                            (coe
                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v13
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2150
                                                                   (coe v1)))))))))
                                           (\ v13 ->
                                              coe
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                (coe
                                                   MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                   (coe
                                                      MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_314
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v12) (coe v13))))))
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError)
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_416
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2148
               (coe v1))))
-- Ledger.Conway.Conformance.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2404 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1982
d_calculateStakeDistrs_2404 v0 ~v1 v2
  = du_calculateStakeDistrs_2404 v0 v2
du_calculateStakeDistrs_2404 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2138 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1982
du_calculateStakeDistrs_2404 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11405
      (coe du_govActionDeposits_2348 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2454 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2454
  = C_CHAIN_2498 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2312
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2598
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2458 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_40859 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2312
d_newEpochState_2458 ~v0 ~v1 v2 = du_newEpochState_2458 v2
du_newEpochState_2458 ::
  T_GeneralizeTel_40859 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2312
du_newEpochState_2458 v0
  = coe
      d_newEpochState_2238
      (coe d_'46'generalizedField'45's_40851 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2462 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_40859 -> AgdaAny
d_slot_2462 ~v0 ~v1 v2 = du_slot_2462 v2
du_slot_2462 :: T_GeneralizeTel_40859 -> AgdaAny
du_slot_2462 v0
  = coe d_slot_2248 (coe d_'46'generalizedField'45'b_40853 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2464 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_40859 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884]
d_ts_2464 ~v0 ~v1 v2 = du_ts_2464 v2
du_ts_2464 ::
  T_GeneralizeTel_40859 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2884]
du_ts_2464 v0
  = coe d_ts_2246 (coe d_'46'generalizedField'45'b_40853 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2468 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_40859 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2288
d_epochState_2468 ~v0 ~v1 v2 = du_epochState_2468 v2
du_epochState_2468 ::
  T_GeneralizeTel_40859 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2288
du_epochState_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2322
      (coe d_'46'generalizedField'45'nes_40855 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2476 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_40859 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150
d_acnt_2476 ~v0 ~v1 v2 = du_acnt_2476 v2
du_acnt_2476 ::
  T_GeneralizeTel_40859 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150
du_acnt_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2300
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2322
         (coe d_'46'generalizedField'45'nes_40855 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2478 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_40859 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_es_2478 ~v0 ~v1 v2 = du_es_2478 v2
du_es_2478 ::
  T_GeneralizeTel_40859 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
du_es_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2306
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2322
         (coe d_'46'generalizedField'45'nes_40855 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2482 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_40859 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2138
d_ls_2482 ~v0 ~v1 v2 = du_ls_2482 v2
du_ls_2482 ::
  T_GeneralizeTel_40859 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2138
du_ls_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2304
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2322
         (coe d_'46'generalizedField'45'nes_40855 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2490 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_40859 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2490 ~v0 ~v1 v2 = du_constitution_2490 v2
du_constitution_2490 ::
  T_GeneralizeTel_40859 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2306
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2322
            (coe d_'46'generalizedField'45'nes_40855 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2492 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1740 ->
  T_GeneralizeTel_40859 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2492 ~v0 ~v1 v2 = du_pparams_2492 v2
du_pparams_2492 ::
  T_GeneralizeTel_40859 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2306
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2322
            (coe d_'46'generalizedField'45'nes_40855 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_40851 ::
  T_GeneralizeTel_40859 -> T_ChainState_2234
d_'46'generalizedField'45's_40851 v0
  = case coe v0 of
      C_mkGeneralizeTel_40861 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_40853 ::
  T_GeneralizeTel_40859 -> T_Block_2240
d_'46'generalizedField'45'b_40853 v0
  = case coe v0 of
      C_mkGeneralizeTel_40861 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_40855 ::
  T_GeneralizeTel_40859 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2312
d_'46'generalizedField'45'nes_40855 v0
  = case coe v0 of
      C_mkGeneralizeTel_40861 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_40857 ::
  T_GeneralizeTel_40859 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2138
d_'46'generalizedField'45'ls''_40857 v0
  = case coe v0 of
      C_mkGeneralizeTel_40861 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_40859 a0 a1 = ()
data T_GeneralizeTel_40859
  = C_mkGeneralizeTel_40861 T_ChainState_2234 T_Block_2240
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2312
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2138
