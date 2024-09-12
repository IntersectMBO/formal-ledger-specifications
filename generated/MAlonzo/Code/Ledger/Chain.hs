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

module MAlonzo.Code.Ledger.Chain where

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
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- _.Credential
d_Credential_68 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_116 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0)))
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_118 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0))
-- _.DepositPurpose
d_DepositPurpose_184 a0 = ()
-- _.Slot
d_Slot_408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_408 = erased
-- _.Tx
d_Tx_438 a0 = ()
-- _.VDeleg
d_VDeleg_458 a0 = ()
-- _.epoch
d_epoch_520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_520 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1520 (coe v0))
-- _.Tx.body
d_body_1522 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2736
d_body_1522 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2848 (coe v0)
-- _.Tx.isValid
d_isValid_1524 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Bool
d_isValid_1524 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2852 (coe v0)
-- _.Tx.txAD
d_txAD_1526 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 -> Maybe AgdaAny
d_txAD_1526 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2854 (coe v0)
-- _.Tx.wits
d_wits_1528 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2838 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2818
d_wits_1528 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2850 (coe v0)
-- Ledger.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1706 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2024 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2048 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2838] ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2048 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1706 = erased
-- Ledger.Chain._.LEnv
d_LEnv_1714 a0 a1 = ()
-- Ledger.Chain._.LState
d_LState_1716 a0 a1 = ()
-- Ledger.Chain._.LEnv.enactState
d_enactState_1732 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2024 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_1732 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2042 (coe v0)
-- Ledger.Chain._.LEnv.pparams
d_pparams_1734 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2024 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1734 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2040 (coe v0)
-- Ledger.Chain._.LEnv.ppolicy
d_ppolicy_1736 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2024 -> Maybe AgdaAny
d_ppolicy_1736 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2038 (coe v0)
-- Ledger.Chain._.LEnv.slot
d_slot_1738 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2024 -> AgdaAny
d_slot_1738 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2036 (coe v0)
-- Ledger.Chain._.LEnv.treasury
d_treasury_1740 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2024 -> Integer
d_treasury_1740 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2044 (coe v0)
-- Ledger.Chain._.LState.certState
d_certState_1744 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2048 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_1744 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_certState_2060 (coe v0)
-- Ledger.Chain._.LState.govSt
d_govSt_1746 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2048 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1746 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_govSt_2058 (coe v0)
-- Ledger.Chain._.LState.utxoSt
d_utxoSt_1748 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2048 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_utxoSt_1748 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_utxoSt_2056 (coe v0)
-- Ledger.Chain._.StakeDistrs
d_StakeDistrs_1780 a0 a1 = ()
-- Ledger.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1876 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1876 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1888 (coe v0)
-- Ledger.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2034 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Chain._.NewEpochState
d_NewEpochState_2048 a0 a1 = ()
-- Ledger.Chain._.NewEpochState.epochState
d_epochState_2110 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2222 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2198
d_epochState_2110 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_epochState_2232 (coe v0)
-- Ledger.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2112 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2222 -> AgdaAny
d_lastEpoch_2112 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_lastEpoch_2230 (coe v0)
-- Ledger.Chain._.NewEpochState.ru
d_ru_2114 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2222 ->
  Maybe MAlonzo.Code.Ledger.Epoch.T_RewardUpdate_2138
d_ru_2114 v0 = coe MAlonzo.Code.Ledger.Epoch.d_ru_2234 (coe v0)
-- Ledger.Chain.ChainState
d_ChainState_2144 a0 a1 = ()
newtype T_ChainState_2144
  = C_ChainState'46'constructor_3779 MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2222
-- Ledger.Chain.ChainState.newEpochState
d_newEpochState_2148 ::
  T_ChainState_2144 -> MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2222
d_newEpochState_2148 v0
  = case coe v0 of
      C_ChainState'46'constructor_3779 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.Block
d_Block_2150 a0 a1 = ()
data T_Block_2150
  = C_Block'46'constructor_3837 [MAlonzo.Code.Ledger.Transaction.T_Tx_2838]
                                AgdaAny
-- Ledger.Chain.Block.ts
d_ts_2156 ::
  T_Block_2150 -> [MAlonzo.Code.Ledger.Transaction.T_Tx_2838]
d_ts_2156 v0
  = case coe v0 of
      C_Block'46'constructor_3837 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.Block.slot
d_slot_2158 :: T_Block_2150 -> AgdaAny
d_slot_2158 v0
  = case coe v0 of
      C_Block'46'constructor_3837 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.maybePurpose
d_maybePurpose_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2170 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2170 v0 v2 v3 v4
du_maybePurpose_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2170 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
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
-- Ledger.Chain.maybePurpose-prop
d_maybePurpose'45'prop_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2202 = erased
-- Ledger.Chain.filterPurpose
d_filterPurpose_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2244 v0 ~v1 v2 v3 = du_filterPurpose_2244 v0 v2 v3
du_filterPurpose_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2244 v0 v1 v2
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
         (coe du_maybePurpose_2170 (coe v0) (coe v1)) (coe v2))
-- Ledger.Chain.govActionDeposits
d_govActionDeposits_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2258 v0 ~v1 v2
  = du_govActionDeposits_2258 v0 v2
du_govActionDeposits_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2258 v0 v1
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
            MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0))))
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
                     MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_6733 v5 v6 v7 v8 v9
                       -> case coe v6 of
                            MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3193 v10 v11
                              -> coe
                                   MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                         (coe
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.d_dState_938
                                            (coe
                                               MAlonzo.Code.Ledger.Ledger.d_certState_2060
                                               (coe v1))))
                                      (coe v11)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                            erased
                                            (coe
                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1234
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
                                                     MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                                     (coe
                                                        MAlonzo.Code.Ledger.Certs.d_dState_938
                                                        (coe
                                                           MAlonzo.Code.Ledger.Ledger.d_certState_2060
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
                                                 MAlonzo.Code.Ledger.Utxo.d_deposits_1878
                                                 (coe
                                                    MAlonzo.Code.Ledger.Ledger.d_utxoSt_2056
                                                    (coe v1)))
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_822
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_822
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
                                                             MAlonzo.Code.Ledger.Utxo.d_deposits_1878
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ledger.d_utxoSt_2056
                                                                (coe v1))))))))
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
            (coe MAlonzo.Code.Ledger.Ledger.d_govSt_2058 (coe v1))))
-- Ledger.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2048 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1884
d_calculateStakeDistrs_2312 v0 ~v1 v2
  = du_calculateStakeDistrs_2312 v0 v2
du_calculateStakeDistrs_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2048 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1884
du_calculateStakeDistrs_2312 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11247
      (coe du_govActionDeposits_2258 (coe v0) (coe v1))
-- Ledger.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2360 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2360
  = C_CHAIN_2404 MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2222
                 MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2502
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Chain._.newEpochState
d_newEpochState_2364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_40773 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2222
d_newEpochState_2364 ~v0 ~v1 v2 = du_newEpochState_2364 v2
du_newEpochState_2364 ::
  T_GeneralizeTel_40773 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2222
du_newEpochState_2364 v0
  = coe
      d_newEpochState_2148
      (coe d_'46'generalizedField'45's_40765 (coe v0))
-- Ledger.Chain._.slot
d_slot_2368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_40773 -> AgdaAny
d_slot_2368 ~v0 ~v1 v2 = du_slot_2368 v2
du_slot_2368 :: T_GeneralizeTel_40773 -> AgdaAny
du_slot_2368 v0
  = coe d_slot_2158 (coe d_'46'generalizedField'45'b_40767 (coe v0))
-- Ledger.Chain._.ts
d_ts_2370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_40773 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2838]
d_ts_2370 ~v0 ~v1 v2 = du_ts_2370 v2
du_ts_2370 ::
  T_GeneralizeTel_40773 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2838]
du_ts_2370 v0
  = coe d_ts_2156 (coe d_'46'generalizedField'45'b_40767 (coe v0))
-- Ledger.Chain._.epochState
d_epochState_2374 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_40773 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2198
d_epochState_2374 ~v0 ~v1 v2 = du_epochState_2374 v2
du_epochState_2374 ::
  T_GeneralizeTel_40773 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2198
du_epochState_2374 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_epochState_2232
      (coe d_'46'generalizedField'45'nes_40769 (coe v0))
-- Ledger.Chain._.acnt
d_acnt_2382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_40773 -> MAlonzo.Code.Ledger.PParams.T_Acnt_146
d_acnt_2382 ~v0 ~v1 v2 = du_acnt_2382 v2
du_acnt_2382 ::
  T_GeneralizeTel_40773 -> MAlonzo.Code.Ledger.PParams.T_Acnt_146
du_acnt_2382 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_acnt_2210
      (coe
         MAlonzo.Code.Ledger.Epoch.d_epochState_2232
         (coe d_'46'generalizedField'45'nes_40769 (coe v0)))
-- Ledger.Chain._.es
d_es_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_40773 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_es_2384 ~v0 ~v1 v2 = du_es_2384 v2
du_es_2384 ::
  T_GeneralizeTel_40773 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_es_2384 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_es_2216
      (coe
         MAlonzo.Code.Ledger.Epoch.d_epochState_2232
         (coe d_'46'generalizedField'45'nes_40769 (coe v0)))
-- Ledger.Chain._.ls
d_ls_2388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_40773 -> MAlonzo.Code.Ledger.Ledger.T_LState_2048
d_ls_2388 ~v0 ~v1 v2 = du_ls_2388 v2
du_ls_2388 ::
  T_GeneralizeTel_40773 -> MAlonzo.Code.Ledger.Ledger.T_LState_2048
du_ls_2388 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_ls_2214
      (coe
         MAlonzo.Code.Ledger.Epoch.d_epochState_2232
         (coe d_'46'generalizedField'45'nes_40769 (coe v0)))
-- Ledger.Chain._.constitution
d_constitution_2396 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_40773 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2396 ~v0 ~v1 v2 = du_constitution_2396 v2
du_constitution_2396 ::
  T_GeneralizeTel_40773 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2396 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_constitution_844
      (coe
         MAlonzo.Code.Ledger.Epoch.d_es_2216
         (coe
            MAlonzo.Code.Ledger.Epoch.d_epochState_2232
            (coe d_'46'generalizedField'45'nes_40769 (coe v0))))
-- Ledger.Chain._.pparams
d_pparams_2398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_40773 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2398 ~v0 ~v1 v2 = du_pparams_2398 v2
du_pparams_2398 ::
  T_GeneralizeTel_40773 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2398 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_pparams_848
      (coe
         MAlonzo.Code.Ledger.Epoch.d_es_2216
         (coe
            MAlonzo.Code.Ledger.Epoch.d_epochState_2232
            (coe d_'46'generalizedField'45'nes_40769 (coe v0))))
-- Ledger.Chain..generalizedField-s
d_'46'generalizedField'45's_40765 ::
  T_GeneralizeTel_40773 -> T_ChainState_2144
d_'46'generalizedField'45's_40765 v0
  = case coe v0 of
      C_mkGeneralizeTel_40775 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-b
d_'46'generalizedField'45'b_40767 ::
  T_GeneralizeTel_40773 -> T_Block_2150
d_'46'generalizedField'45'b_40767 v0
  = case coe v0 of
      C_mkGeneralizeTel_40775 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_40769 ::
  T_GeneralizeTel_40773 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2222
d_'46'generalizedField'45'nes_40769 v0
  = case coe v0 of
      C_mkGeneralizeTel_40775 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_40771 ::
  T_GeneralizeTel_40773 -> MAlonzo.Code.Ledger.Ledger.T_LState_2048
d_'46'generalizedField'45'ls''_40771 v0
  = case coe v0 of
      C_mkGeneralizeTel_40775 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.GeneralizeTel
d_GeneralizeTel_40773 a0 a1 = ()
data T_GeneralizeTel_40773
  = C_mkGeneralizeTel_40775 T_ChainState_2144 T_Block_2150
                            MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2222
                            MAlonzo.Code.Ledger.Ledger.T_LState_2048
