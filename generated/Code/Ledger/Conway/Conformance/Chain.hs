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
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.To
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Credential
d_Credential_48 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_82 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_82 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1232 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1232 (coe v0)))
-- _.Slot
d_Slot_328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_328 = erased
-- _.Tx
d_Tx_360 a0 = ()
-- _.VDeleg
d_VDeleg_380 a0 = ()
-- _.epoch
d_epoch_426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_426 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1516 (coe v0))
-- _.GovernanceActions.VDeleg
d_VDeleg_772 a0 = ()
-- _.Tx.body
d_body_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536
d_body_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v0)
-- _.Tx.isValid
d_isValid_1384 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2638 -> Bool
d_isValid_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2652 (coe v0)
-- _.Tx.txAD
d_txAD_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 -> Maybe AgdaAny
d_txAD_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2654 (coe v0)
-- _.Tx.wits
d_wits_1388 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2618
d_wits_1388 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2650 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1958 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2638] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1958 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1558 = erased
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1568 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.To-LEnv
d_To'45'LEnv_1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1570 ~v0 ~v1 = du_To'45'LEnv_1570
du_To'45'LEnv_1570 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1570
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2186
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1602 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1958 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_1602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1970
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1604 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1958 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_1968 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1606 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1958 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024
d_utxoSt_1606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_1966
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.StakeDistrs
d_StakeDistrs_1638 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1722 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1722 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1974 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1800 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_1814 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_1880 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2256 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2232
d_epochState_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2266
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_1882 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2256 ->
  AgdaAny
d_lastEpoch_1882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2264
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_1884 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2256 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2184
d_ru_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2268 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1966 v0 ~v1
  = du_DecEq'45'DepositPurpose_1966 v0
du_DecEq'45'DepositPurpose_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1966 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832 (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_1970 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2176 a0 a1 = ()
newtype T_ChainState_2176
  = C_ChainState'46'constructor_4611 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2256
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2180 ::
  T_ChainState_2176 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2256
d_newEpochState_2180 v0
  = case coe v0 of
      C_ChainState'46'constructor_4611 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2182 a0 a1 = ()
data T_Block_2182
  = C_Block'46'constructor_4669 [MAlonzo.Code.Ledger.Transaction.T_Tx_2638]
                                AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2188 ::
  T_Block_2182 -> [MAlonzo.Code.Ledger.Transaction.T_Tx_2638]
d_ts_2188 v0
  = case coe v0 of
      C_Block'46'constructor_4669 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2190 :: T_Block_2182 -> AgdaAny
d_slot_2190 v0
  = case coe v0 of
      C_Block'46'constructor_4669 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2202 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2202 v0 v2 v3 v4
du_maybePurpose_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2202 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0)))
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
d_maybePurpose'45'prop_2234 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_820 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_820 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2234 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2276 v0 ~v1 v2 v3 = du_filterPurpose_2276 v0 v2 v3
du_filterPurpose_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2276 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1252
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_maybePurpose_2202 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1958 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2290 v0 ~v1 v2
  = du_govActionDeposits_2290 v0 v2
du_govActionDeposits_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1958 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2290 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_798
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2346 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_576
         (MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                -> case coe v4 of
                     MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_3969 v5 v6 v7 v8 v9
                       -> case coe v6 of
                            MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3243 v10 v11
                              -> coe
                                   MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1060
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1970
                                               (coe v1))))
                                      (coe v11)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased
                                            (coe
                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1232
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1232
                                                     (coe v0)))))
                                         (coe v11)
                                         (let v12
                                                = MAlonzo.Code.Axiom.Set.d_th_1470
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v12
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1060
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1970
                                                           (coe v1)))))))))
                                   (coe
                                      (\ v12 ->
                                         coe
                                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 ()
                                           erased () erased
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1066
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1970
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_828
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Transaction.d_govStructure_2346
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_832
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_828
                                                    (coe v3))
                                                 (let v13
                                                        = MAlonzo.Code.Axiom.Set.d_th_1470
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v13
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1066
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1970
                                                                   (coe v1)))))))))
                                           (\ v13 ->
                                              coe
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_324
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v12) (coe v13))))))
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError)
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_1968
               (coe v1))))
-- Ledger.Conway.Conformance.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1958 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1970
d_calculateStakeDistrs_2346 v0 ~v1 v2
  = du_calculateStakeDistrs_2346 v0 v2
du_calculateStakeDistrs_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1958 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1970
du_calculateStakeDistrs_2346 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11829
      (coe du_govActionDeposits_2290 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2396 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2396
  = C_CHAIN_2440 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2256
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2568
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2400 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_41869 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2256
d_newEpochState_2400 ~v0 ~v1 v2 = du_newEpochState_2400 v2
du_newEpochState_2400 ::
  T_GeneralizeTel_41869 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2256
du_newEpochState_2400 v0
  = coe
      d_newEpochState_2180
      (coe d_'46'generalizedField'45's_41861 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2404 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_41869 -> AgdaAny
d_slot_2404 ~v0 ~v1 v2 = du_slot_2404 v2
du_slot_2404 :: T_GeneralizeTel_41869 -> AgdaAny
du_slot_2404 v0
  = coe d_slot_2190 (coe d_'46'generalizedField'45'b_41863 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2406 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_41869 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2638]
d_ts_2406 ~v0 ~v1 v2 = du_ts_2406 v2
du_ts_2406 ::
  T_GeneralizeTel_41869 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2638]
du_ts_2406 v0
  = coe d_ts_2188 (coe d_'46'generalizedField'45'b_41863 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_41869 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2232
d_epochState_2410 ~v0 ~v1 v2 = du_epochState_2410 v2
du_epochState_2410 ::
  T_GeneralizeTel_41869 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2232
du_epochState_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2266
      (coe d_'46'generalizedField'45'nes_41865 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2418 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_41869 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_acnt_2418 ~v0 ~v1 v2 = du_acnt_2418 v2
du_acnt_2418 ::
  T_GeneralizeTel_41869 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
du_acnt_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2244
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2266
         (coe d_'46'generalizedField'45'nes_41865 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2420 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_41869 -> MAlonzo.Code.Ledger.Enact.T_EnactState_834
d_es_2420 ~v0 ~v1 v2 = du_es_2420 v2
du_es_2420 ::
  T_GeneralizeTel_41869 -> MAlonzo.Code.Ledger.Enact.T_EnactState_834
du_es_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2250
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2266
         (coe d_'46'generalizedField'45'nes_41865 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2424 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_41869 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1958
d_ls_2424 ~v0 ~v1 v2 = du_ls_2424 v2
du_ls_2424 ::
  T_GeneralizeTel_41869 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1958
du_ls_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2248
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2266
         (coe d_'46'generalizedField'45'nes_41865 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_41869 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2432 ~v0 ~v1 v2 = du_constitution_2432 v2
du_constitution_2432 ::
  T_GeneralizeTel_41869 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2432 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_constitution_848
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2250
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2266
            (coe d_'46'generalizedField'45'nes_41865 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2434 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_41869 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2434 ~v0 ~v1 v2 = du_pparams_2434 v2
du_pparams_2434 ::
  T_GeneralizeTel_41869 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2434 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_pparams_852
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2250
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2266
            (coe d_'46'generalizedField'45'nes_41865 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_41861 ::
  T_GeneralizeTel_41869 -> T_ChainState_2176
d_'46'generalizedField'45's_41861 v0
  = case coe v0 of
      C_mkGeneralizeTel_41871 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_41863 ::
  T_GeneralizeTel_41869 -> T_Block_2182
d_'46'generalizedField'45'b_41863 v0
  = case coe v0 of
      C_mkGeneralizeTel_41871 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_41865 ::
  T_GeneralizeTel_41869 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2256
d_'46'generalizedField'45'nes_41865 v0
  = case coe v0 of
      C_mkGeneralizeTel_41871 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_41867 ::
  T_GeneralizeTel_41869 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1958
d_'46'generalizedField'45'ls''_41867 v0
  = case coe v0 of
      C_mkGeneralizeTel_41871 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_41869 a0 a1 = ()
data T_GeneralizeTel_41869
  = C_mkGeneralizeTel_41871 T_ChainState_2176 T_Block_2182
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2256
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1958
