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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0)))
-- _.Slot
d_Slot_328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_328 = erased
-- _.Tx
d_Tx_356 a0 = ()
-- _.VDeleg
d_VDeleg_376 a0 = ()
-- _.epoch
d_epoch_426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_426 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v0))
-- _.GovernanceActions.VDeleg
d_VDeleg_772 a0 = ()
-- _.Tx.body
d_body_1380 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520
d_body_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0)
-- _.Tx.isValid
d_isValid_1382 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Bool
d_isValid_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v0)
-- _.Tx.txAD
d_txAD_1384 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Maybe AgdaAny
d_txAD_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2638 (coe v0)
-- _.Tx.wits
d_wits_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2602
d_wits_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2634 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2140 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2622] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1558 = erased
-- Ledger.Conway.Conformance.Chain._.LEnv
d_LEnv_1566 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1568 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LEnv.enactState
d_enactState_1590 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2140 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_1590 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2158 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.pparams
d_pparams_1592 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2140 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1592 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2156 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.ppolicy
d_ppolicy_1594 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2140 -> Maybe AgdaAny
d_ppolicy_1594 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2154 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.slot
d_slot_1596 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2140 -> AgdaAny
d_slot_1596 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2152 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.treasury
d_treasury_1598 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2140 -> Integer
d_treasury_1598 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2160 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1602 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074
d_certState_1602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2200
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1604 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2198 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1606 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
d_utxoSt_1606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2196
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.StakeDistrs
d_StakeDistrs_1638 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1722 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1958 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1722 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1962 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1960 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_1974 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_2036 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2334 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2310
d_epochState_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2344
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2038 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2334 ->
  AgdaAny
d_lastEpoch_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2342
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_2040 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2334 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2250
d_ru_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2346 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2124 v0 ~v1
  = du_DecEq'45'DepositPurpose_2124 v0
du_DecEq'45'DepositPurpose_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2124 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826 (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_2128 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2326 a0 a1 = ()
newtype T_ChainState_2326
  = C_ChainState'46'constructor_4439 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2334
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2330 ::
  T_ChainState_2326 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2334
d_newEpochState_2330 v0
  = case coe v0 of
      C_ChainState'46'constructor_4439 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2332 a0 a1 = ()
data T_Block_2332
  = C_Block'46'constructor_4497 [MAlonzo.Code.Ledger.Transaction.T_Tx_2622]
                                AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2338 ::
  T_Block_2332 -> [MAlonzo.Code.Ledger.Transaction.T_Tx_2622]
d_ts_2338 v0
  = case coe v0 of
      C_Block'46'constructor_4497 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2340 :: T_Block_2332 -> AgdaAny
d_slot_2340 v0
  = case coe v0 of
      C_Block'46'constructor_4497 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2352 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2352 v0 v2 v3 v4
du_maybePurpose_2352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2352 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0)))
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
d_maybePurpose'45'prop_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2384 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2426 v0 ~v1 v2 v3 = du_filterPurpose_2426 v0 v2 v3
du_filterPurpose_2426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_814 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2426 v0 v1 v2
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
         (coe du_maybePurpose_2352 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2440 v0 ~v1 v2
  = du_govActionDeposits_2440 v0 v2
du_govActionDeposits_2440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2440 v0 v1
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
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0))))
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
                     MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_7881 v5 v6 v7 v8 v9
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
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1048
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2200
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
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1222
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1048
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2200
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
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1054
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2200
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_822
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Transaction.d_govStructure_2326
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_822
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1054
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2200
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2198
               (coe v1))))
-- Ledger.Conway.Conformance.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2496 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1958
d_calculateStakeDistrs_2496 v0 ~v1 v2
  = du_calculateStakeDistrs_2496 v0 v2
du_calculateStakeDistrs_2496 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1958
du_calculateStakeDistrs_2496 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11377
      (coe du_govActionDeposits_2440 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2546 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2546
  = C_CHAIN_2590 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2334
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2620
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2550 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_41289 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2334
d_newEpochState_2550 ~v0 ~v1 v2 = du_newEpochState_2550 v2
du_newEpochState_2550 ::
  T_GeneralizeTel_41289 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2334
du_newEpochState_2550 v0
  = coe
      d_newEpochState_2330
      (coe d_'46'generalizedField'45's_41281 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_41289 -> AgdaAny
d_slot_2554 ~v0 ~v1 v2 = du_slot_2554 v2
du_slot_2554 :: T_GeneralizeTel_41289 -> AgdaAny
du_slot_2554 v0
  = coe d_slot_2340 (coe d_'46'generalizedField'45'b_41283 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2556 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_41289 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2622]
d_ts_2556 ~v0 ~v1 v2 = du_ts_2556 v2
du_ts_2556 ::
  T_GeneralizeTel_41289 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2622]
du_ts_2556 v0
  = coe d_ts_2338 (coe d_'46'generalizedField'45'b_41283 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2560 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_41289 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2310
d_epochState_2560 ~v0 ~v1 v2 = du_epochState_2560 v2
du_epochState_2560 ::
  T_GeneralizeTel_41289 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2310
du_epochState_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2344
      (coe d_'46'generalizedField'45'nes_41285 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2568 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_41289 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_acnt_2568 ~v0 ~v1 v2 = du_acnt_2568 v2
du_acnt_2568 ::
  T_GeneralizeTel_41289 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
du_acnt_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2322
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2344
         (coe d_'46'generalizedField'45'nes_41285 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_41289 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_es_2570 ~v0 ~v1 v2 = du_es_2570 v2
du_es_2570 ::
  T_GeneralizeTel_41289 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_es_2570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2328
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2344
         (coe d_'46'generalizedField'45'nes_41285 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_41289 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188
d_ls_2574 ~v0 ~v1 v2 = du_ls_2574 v2
du_ls_2574 ::
  T_GeneralizeTel_41289 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188
du_ls_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2326
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2344
         (coe d_'46'generalizedField'45'nes_41285 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2582 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_41289 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2582 ~v0 ~v1 v2 = du_constitution_2582 v2
du_constitution_2582 ::
  T_GeneralizeTel_41289 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2582 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_constitution_844
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2328
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2344
            (coe d_'46'generalizedField'45'nes_41285 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2584 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_41289 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2584 ~v0 ~v1 v2 = du_pparams_2584 v2
du_pparams_2584 ::
  T_GeneralizeTel_41289 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2584 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_pparams_848
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2328
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2344
            (coe d_'46'generalizedField'45'nes_41285 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_41281 ::
  T_GeneralizeTel_41289 -> T_ChainState_2326
d_'46'generalizedField'45's_41281 v0
  = case coe v0 of
      C_mkGeneralizeTel_41291 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_41283 ::
  T_GeneralizeTel_41289 -> T_Block_2332
d_'46'generalizedField'45'b_41283 v0
  = case coe v0 of
      C_mkGeneralizeTel_41291 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_41285 ::
  T_GeneralizeTel_41289 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2334
d_'46'generalizedField'45'nes_41285 v0
  = case coe v0 of
      C_mkGeneralizeTel_41291 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_41287 ::
  T_GeneralizeTel_41289 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188
d_'46'generalizedField'45'ls''_41287 v0
  = case coe v0 of
      C_mkGeneralizeTel_41291 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_41289 a0 a1 = ()
data T_GeneralizeTel_41289
  = C_mkGeneralizeTel_41291 T_ChainState_2326 T_Block_2332
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2334
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188
