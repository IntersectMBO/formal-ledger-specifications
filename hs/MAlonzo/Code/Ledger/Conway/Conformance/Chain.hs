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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1230 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1230 (coe v0)))
-- _.Slot
d_Slot_326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_326 = erased
-- _.Tx
d_Tx_358 a0 = ()
-- _.VDeleg
d_VDeleg_378 a0 = ()
-- _.epoch
d_epoch_424 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_424 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1514 (coe v0))
-- _.GovernanceActions.VDeleg
d_VDeleg_770 a0 = ()
-- _.Tx.body
d_body_1380 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2634 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532
d_body_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2644 (coe v0)
-- _.Tx.isValid
d_isValid_1382 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2634 -> Bool
d_isValid_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2648 (coe v0)
-- _.Tx.txAD
d_txAD_1384 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2634 -> Maybe AgdaAny
d_txAD_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2650 (coe v0)
-- _.Tx.wits
d_wits_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2634 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2614
d_wits_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2646 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1556 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2146 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1956 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2634] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1956 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1556 = erased
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1566 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.To-LEnv
d_To'45'LEnv_1568 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1568 ~v0 ~v1 = du_To'45'LEnv_1568
du_To'45'LEnv_1568 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1568
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2184
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1600 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1956 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084
d_certState_1600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1968
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1602 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1956 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_1966 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1604 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1956 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
d_utxoSt_1604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_1964
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.StakeDistrs
d_StakeDistrs_1636 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1720 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1968 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1720 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1972 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1798 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_1812 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_1878 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2254 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2230
d_epochState_1878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2264
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_1880 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2254 ->
  AgdaAny
d_lastEpoch_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2262
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_1882 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2254 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2182
d_ru_1882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2266 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1964 v0 ~v1
  = du_DecEq'45'DepositPurpose_1964 v0
du_DecEq'45'DepositPurpose_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1964 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2342 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_830 (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_1968 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2174 a0 a1 = ()
newtype T_ChainState_2174
  = C_ChainState'46'constructor_4619 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2254
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2178 ::
  T_ChainState_2174 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2254
d_newEpochState_2178 v0
  = case coe v0 of
      C_ChainState'46'constructor_4619 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2180 a0 a1 = ()
data T_Block_2180
  = C_Block'46'constructor_4677 [MAlonzo.Code.Ledger.Transaction.T_Tx_2634]
                                AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2186 ::
  T_Block_2180 -> [MAlonzo.Code.Ledger.Transaction.T_Tx_2634]
d_ts_2186 v0
  = case coe v0 of
      C_Block'46'constructor_4677 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2188 :: T_Block_2180 -> AgdaAny
d_slot_2188 v0
  = case coe v0 of
      C_Block'46'constructor_4677 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2200 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2200 v0 v2 v3 v4
du_maybePurpose_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2200 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_830
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2342 (coe v0)))
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
d_maybePurpose'45'prop_2232 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_818 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_818 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2232 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2274 v0 ~v1 v2 v3 = du_filterPurpose_2274 v0 v2 v3
du_filterPurpose_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_818 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2274 v0 v1 v2
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
         (coe du_maybePurpose_2200 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2288 v0 ~v1 v2
  = du_govActionDeposits_2288 v0 v2
du_govActionDeposits_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1956 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2288 v0 v1
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
            MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_796
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2342 (coe v0))))
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
                     MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_3975 v5 v6 v7 v8 v9
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
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1058
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1092
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1968
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
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1230
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1230
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1058
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1092
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1968
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
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1064
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1092
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1968
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_826
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Transaction.d_govStructure_2342
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_830
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_826
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1064
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1092
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1968
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_1966
               (coe v1))))
-- Ledger.Conway.Conformance.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1956 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1968
d_calculateStakeDistrs_2344 v0 ~v1 v2
  = du_calculateStakeDistrs_2344 v0 v2
du_calculateStakeDistrs_2344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1956 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1968
du_calculateStakeDistrs_2344 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11837
      (coe du_govActionDeposits_2288 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2394 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2394
  = C_CHAIN_2438 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2254
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2566
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_41877 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2254
d_newEpochState_2398 ~v0 ~v1 v2 = du_newEpochState_2398 v2
du_newEpochState_2398 ::
  T_GeneralizeTel_41877 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2254
du_newEpochState_2398 v0
  = coe
      d_newEpochState_2178
      (coe d_'46'generalizedField'45's_41869 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_41877 -> AgdaAny
d_slot_2402 ~v0 ~v1 v2 = du_slot_2402 v2
du_slot_2402 :: T_GeneralizeTel_41877 -> AgdaAny
du_slot_2402 v0
  = coe d_slot_2188 (coe d_'46'generalizedField'45'b_41871 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2404 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_41877 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2634]
d_ts_2404 ~v0 ~v1 v2 = du_ts_2404 v2
du_ts_2404 ::
  T_GeneralizeTel_41877 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2634]
du_ts_2404 v0
  = coe d_ts_2186 (coe d_'46'generalizedField'45'b_41871 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_41877 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2230
d_epochState_2408 ~v0 ~v1 v2 = du_epochState_2408 v2
du_epochState_2408 ::
  T_GeneralizeTel_41877 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2230
du_epochState_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2264
      (coe d_'46'generalizedField'45'nes_41873 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2416 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_41877 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_acnt_2416 ~v0 ~v1 v2 = du_acnt_2416 v2
du_acnt_2416 ::
  T_GeneralizeTel_41877 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
du_acnt_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2242
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2264
         (coe d_'46'generalizedField'45'nes_41873 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2418 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_41877 -> MAlonzo.Code.Ledger.Enact.T_EnactState_832
d_es_2418 ~v0 ~v1 v2 = du_es_2418 v2
du_es_2418 ::
  T_GeneralizeTel_41877 -> MAlonzo.Code.Ledger.Enact.T_EnactState_832
du_es_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2248
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2264
         (coe d_'46'generalizedField'45'nes_41873 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2422 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_41877 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1956
d_ls_2422 ~v0 ~v1 v2 = du_ls_2422 v2
du_ls_2422 ::
  T_GeneralizeTel_41877 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1956
du_ls_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2246
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2264
         (coe d_'46'generalizedField'45'nes_41873 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_41877 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2430 ~v0 ~v1 v2 = du_constitution_2430 v2
du_constitution_2430 ::
  T_GeneralizeTel_41877 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2430 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_constitution_846
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2248
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2264
            (coe d_'46'generalizedField'45'nes_41873 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_41877 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2432 ~v0 ~v1 v2 = du_pparams_2432 v2
du_pparams_2432 ::
  T_GeneralizeTel_41877 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2432 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_pparams_850
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2248
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2264
            (coe d_'46'generalizedField'45'nes_41873 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_41869 ::
  T_GeneralizeTel_41877 -> T_ChainState_2174
d_'46'generalizedField'45's_41869 v0
  = case coe v0 of
      C_mkGeneralizeTel_41879 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_41871 ::
  T_GeneralizeTel_41877 -> T_Block_2180
d_'46'generalizedField'45'b_41871 v0
  = case coe v0 of
      C_mkGeneralizeTel_41879 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_41873 ::
  T_GeneralizeTel_41877 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2254
d_'46'generalizedField'45'nes_41873 v0
  = case coe v0 of
      C_mkGeneralizeTel_41879 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_41875 ::
  T_GeneralizeTel_41877 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1956
d_'46'generalizedField'45'ls''_41875 v0
  = case coe v0 of
      C_mkGeneralizeTel_41879 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_41877 a0 a1 = ()
data T_GeneralizeTel_41877
  = C_mkGeneralizeTel_41879 T_ChainState_2174 T_Block_2180
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2254
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1956
