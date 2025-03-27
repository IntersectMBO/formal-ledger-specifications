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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))
-- _.Slot
d_Slot_334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_334 = erased
-- _.Tx
d_Tx_366 a0 = ()
-- _.VDeleg
d_VDeleg_386 a0 = ()
-- _.epoch
d_epoch_432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_432 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0))
-- _.GovernanceActions.VDeleg
d_VDeleg_796 a0 = ()
-- _.Tx.body
d_body_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2640 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2538
d_body_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2650 (coe v0)
-- _.Tx.isValid
d_isValid_1406 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2640 -> Bool
d_isValid_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2654 (coe v0)
-- _.Tx.txAD
d_txAD_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2640 -> Maybe AgdaAny
d_txAD_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2656 (coe v0)
-- _.Tx.wits
d_wits_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2640 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2620
d_wits_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2652 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1580 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2170 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1980 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2640] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1980 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1580 = erased
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1590 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.To-LEnv
d_To'45'LEnv_1592 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1592 ~v0 ~v1 = du_To'45'LEnv_1592
du_To'45'LEnv_1592 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1592
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2208
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1624 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1980 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1096
d_certState_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1992
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1626 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1980 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_1990 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1628 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1980 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2046
d_utxoSt_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_1988
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.StakeDistrs
d_StakeDistrs_1660 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1744 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1988 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1744 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1992 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1822 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_1836 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_1902 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2254
d_epochState_1902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2288
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_1904 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2278 ->
  AgdaAny
d_lastEpoch_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2286
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_1906 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2278 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2206
d_ru_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2290 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1988 v0 ~v1
  = du_DecEq'45'DepositPurpose_1988 v0
du_DecEq'45'DepositPurpose_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1988 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_842 (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_1992 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2198 a0 a1 = ()
newtype T_ChainState_2198
  = C_ChainState'46'constructor_4637 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2278
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2202 ::
  T_ChainState_2198 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2278
d_newEpochState_2202 v0
  = case coe v0 of
      C_ChainState'46'constructor_4637 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2204 a0 a1 = ()
data T_Block_2204
  = C_Block'46'constructor_4695 [MAlonzo.Code.Ledger.Transaction.T_Tx_2640]
                                AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2210 ::
  T_Block_2204 -> [MAlonzo.Code.Ledger.Transaction.T_Tx_2640]
d_ts_2210 v0
  = case coe v0 of
      C_Block'46'constructor_4695 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2212 :: T_Block_2204 -> AgdaAny
d_slot_2212 v0
  = case coe v0 of
      C_Block'46'constructor_4695 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2224 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2224 v0 v2 v3 v4
du_maybePurpose_2224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2224 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_842
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0)))
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
d_maybePurpose'45'prop_2256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_830 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_830 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2256 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2298 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2298 v0 ~v1 v2 v3 = du_filterPurpose_2298 v0 v2 v3
du_filterPurpose_2298 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2298 v0 v1 v2
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
         (coe du_maybePurpose_2224 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2312 v0 ~v1 v2
  = du_govActionDeposits_2312 v0 v2
du_govActionDeposits_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2312 v0 v1
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
            MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0))))
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
                     MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4095 v5 v6 v7 v8 v9
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
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1070
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1104
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1992
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
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1224
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1070
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1104
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1992
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
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1076
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1104
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1992
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_838
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Transaction.d_govStructure_2330
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_842
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_838
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1076
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1104
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1992
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_1990
               (coe v1))))
-- Ledger.Conway.Conformance.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1980 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1988
d_calculateStakeDistrs_2368 v0 ~v1 v2
  = du_calculateStakeDistrs_2368 v0 v2
du_calculateStakeDistrs_2368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1980 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1988
du_calculateStakeDistrs_2368 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_12327
      (coe du_govActionDeposits_2312 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2418 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2418
  = C_CHAIN_2462 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2278
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2590
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2422 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_41895 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2278
d_newEpochState_2422 ~v0 ~v1 v2 = du_newEpochState_2422 v2
du_newEpochState_2422 ::
  T_GeneralizeTel_41895 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2278
du_newEpochState_2422 v0
  = coe
      d_newEpochState_2202
      (coe d_'46'generalizedField'45's_41887 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_41895 -> AgdaAny
d_slot_2426 ~v0 ~v1 v2 = du_slot_2426 v2
du_slot_2426 :: T_GeneralizeTel_41895 -> AgdaAny
du_slot_2426 v0
  = coe d_slot_2212 (coe d_'46'generalizedField'45'b_41889 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2428 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_41895 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2640]
d_ts_2428 ~v0 ~v1 v2 = du_ts_2428 v2
du_ts_2428 ::
  T_GeneralizeTel_41895 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2640]
du_ts_2428 v0
  = coe d_ts_2210 (coe d_'46'generalizedField'45'b_41889 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_41895 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2254
d_epochState_2432 ~v0 ~v1 v2 = du_epochState_2432 v2
du_epochState_2432 ::
  T_GeneralizeTel_41895 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2254
du_epochState_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2288
      (coe d_'46'generalizedField'45'nes_41891 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_41895 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_acnt_2440 ~v0 ~v1 v2 = du_acnt_2440 v2
du_acnt_2440 ::
  T_GeneralizeTel_41895 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
du_acnt_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2266
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2288
         (coe d_'46'generalizedField'45'nes_41891 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_41895 -> MAlonzo.Code.Ledger.Enact.T_EnactState_844
d_es_2442 ~v0 ~v1 v2 = du_es_2442 v2
du_es_2442 ::
  T_GeneralizeTel_41895 -> MAlonzo.Code.Ledger.Enact.T_EnactState_844
du_es_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2272
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2288
         (coe d_'46'generalizedField'45'nes_41891 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2446 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_41895 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1980
d_ls_2446 ~v0 ~v1 v2 = du_ls_2446 v2
du_ls_2446 ::
  T_GeneralizeTel_41895 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1980
du_ls_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2270
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2288
         (coe d_'46'generalizedField'45'nes_41891 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_41895 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2454 ~v0 ~v1 v2 = du_constitution_2454 v2
du_constitution_2454 ::
  T_GeneralizeTel_41895 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2454 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_constitution_858
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2272
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2288
            (coe d_'46'generalizedField'45'nes_41891 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_41895 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2456 ~v0 ~v1 v2 = du_pparams_2456 v2
du_pparams_2456 ::
  T_GeneralizeTel_41895 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2456 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_pparams_862
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2272
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2288
            (coe d_'46'generalizedField'45'nes_41891 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_41887 ::
  T_GeneralizeTel_41895 -> T_ChainState_2198
d_'46'generalizedField'45's_41887 v0
  = case coe v0 of
      C_mkGeneralizeTel_41897 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_41889 ::
  T_GeneralizeTel_41895 -> T_Block_2204
d_'46'generalizedField'45'b_41889 v0
  = case coe v0 of
      C_mkGeneralizeTel_41897 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_41891 ::
  T_GeneralizeTel_41895 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2278
d_'46'generalizedField'45'nes_41891 v0
  = case coe v0 of
      C_mkGeneralizeTel_41897 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_41893 ::
  T_GeneralizeTel_41895 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1980
d_'46'generalizedField'45'ls''_41893 v0
  = case coe v0 of
      C_mkGeneralizeTel_41897 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_41895 a0 a1 = ()
data T_GeneralizeTel_41895
  = C_mkGeneralizeTel_41897 T_ChainState_2198 T_Block_2204
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2278
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1980
