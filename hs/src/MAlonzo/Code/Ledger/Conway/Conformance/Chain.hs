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
d_Credential_44 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_76 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_76 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1214 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1214 (coe v0)))
-- _.Slot
d_Slot_326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_326 = erased
-- _.Tx
d_Tx_358 a0 = ()
-- _.VDeleg
d_VDeleg_378 a0 = ()
-- _.epoch
d_epoch_426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_426 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1490 (coe v0))
-- _.GovernanceActions.VDeleg
d_VDeleg_786 a0 = ()
-- _.Tx.body
d_body_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518
d_body_1394 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v0)
-- _.Tx.isValid
d_isValid_1396 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2620 -> Bool
d_isValid_1396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2634 (coe v0)
-- _.Tx.txAD
d_txAD_1398 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 -> Maybe AgdaAny
d_txAD_1398 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2636 (coe v0)
-- _.Tx.wits
d_wits_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2600
d_wits_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2632 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2620] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1570 = erased
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1580 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.To-LEnv
d_To'45'LEnv_1582 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1582 ~v0 ~v1 = du_To'45'LEnv_1582
du_To'45'LEnv_1582 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1582
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2198
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1614 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
d_certState_1614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1982
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1616 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_1980 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1618 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
d_utxoSt_1618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_1978
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.StakeDistrs
d_StakeDistrs_1650 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1734 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1982 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1734 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1986 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1812 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_1826 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_1892 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2268 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2244
d_epochState_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2278
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_1894 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2268 ->
  AgdaAny
d_lastEpoch_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2276
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_1896 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2268 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2196
d_ru_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2280 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1978 v0 ~v1
  = du_DecEq'45'DepositPurpose_1978 v0
du_DecEq'45'DepositPurpose_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1978 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2310 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848 (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_1982 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2188 a0 a1 = ()
newtype T_ChainState_2188
  = C_ChainState'46'constructor_4641 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2268
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2192 ::
  T_ChainState_2188 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2268
d_newEpochState_2192 v0
  = case coe v0 of
      C_ChainState'46'constructor_4641 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2194 a0 a1 = ()
data T_Block_2194
  = C_Block'46'constructor_4699 [MAlonzo.Code.Ledger.Transaction.T_Tx_2620]
                                AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2200 ::
  T_Block_2194 -> [MAlonzo.Code.Ledger.Transaction.T_Tx_2620]
d_ts_2200 v0
  = case coe v0 of
      C_Block'46'constructor_4699 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2202 :: T_Block_2194 -> AgdaAny
d_slot_2202 v0
  = case coe v0 of
      C_Block'46'constructor_4699 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2214 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2214 v0 v2 v3 v4
du_maybePurpose_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2214 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2310 (coe v0)))
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
d_maybePurpose'45'prop_2246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2246 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2288 v0 ~v1 v2 v3 = du_filterPurpose_2288 v0 v2 v3
du_filterPurpose_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2288 v0 v1 v2
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
         (coe du_maybePurpose_2214 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2302 v0 ~v1 v2
  = du_govActionDeposits_2302 v0 v2
du_govActionDeposits_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2302 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_812
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2310 (coe v0))))
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
                     MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4109 v5 v6 v7 v8 v9
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
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1076
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1110
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1982
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
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1214
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1214
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1076
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1110
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1982
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
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1082
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1110
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1982
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Transaction.d_govStructure_2310
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1082
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1110
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1982
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_1980
               (coe v1))))
-- Ledger.Conway.Conformance.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1982
d_calculateStakeDistrs_2358 v0 ~v1 v2
  = du_calculateStakeDistrs_2358 v0 v2
du_calculateStakeDistrs_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1982
du_calculateStakeDistrs_2358 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_12371
      (coe du_govActionDeposits_2302 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2408 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2408
  = C_CHAIN_2452 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2268
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2580
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_41275 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2268
d_newEpochState_2412 ~v0 ~v1 v2 = du_newEpochState_2412 v2
du_newEpochState_2412 ::
  T_GeneralizeTel_41275 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2268
du_newEpochState_2412 v0
  = coe
      d_newEpochState_2192
      (coe d_'46'generalizedField'45's_41267 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2416 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_41275 -> AgdaAny
d_slot_2416 ~v0 ~v1 v2 = du_slot_2416 v2
du_slot_2416 :: T_GeneralizeTel_41275 -> AgdaAny
du_slot_2416 v0
  = coe d_slot_2202 (coe d_'46'generalizedField'45'b_41269 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2418 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_41275 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2620]
d_ts_2418 ~v0 ~v1 v2 = du_ts_2418 v2
du_ts_2418 ::
  T_GeneralizeTel_41275 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2620]
du_ts_2418 v0
  = coe d_ts_2200 (coe d_'46'generalizedField'45'b_41269 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2422 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_41275 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2244
d_epochState_2422 ~v0 ~v1 v2 = du_epochState_2422 v2
du_epochState_2422 ::
  T_GeneralizeTel_41275 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2244
du_epochState_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2278
      (coe d_'46'generalizedField'45'nes_41271 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_41275 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_acnt_2430 ~v0 ~v1 v2 = du_acnt_2430 v2
du_acnt_2430 ::
  T_GeneralizeTel_41275 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
du_acnt_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2256
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2278
         (coe d_'46'generalizedField'45'nes_41271 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_41275 -> MAlonzo.Code.Ledger.Enact.T_EnactState_850
d_es_2432 ~v0 ~v1 v2 = du_es_2432 v2
du_es_2432 ::
  T_GeneralizeTel_41275 -> MAlonzo.Code.Ledger.Enact.T_EnactState_850
du_es_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2262
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2278
         (coe d_'46'generalizedField'45'nes_41271 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2436 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_41275 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970
d_ls_2436 ~v0 ~v1 v2 = du_ls_2436 v2
du_ls_2436 ::
  T_GeneralizeTel_41275 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970
du_ls_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2260
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2278
         (coe d_'46'generalizedField'45'nes_41271 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2444 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_41275 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2444 ~v0 ~v1 v2 = du_constitution_2444 v2
du_constitution_2444 ::
  T_GeneralizeTel_41275 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2444 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_constitution_864
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2262
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2278
            (coe d_'46'generalizedField'45'nes_41271 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2446 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_41275 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2446 ~v0 ~v1 v2 = du_pparams_2446 v2
du_pparams_2446 ::
  T_GeneralizeTel_41275 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2446 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_pparams_868
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2262
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2278
            (coe d_'46'generalizedField'45'nes_41271 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_41267 ::
  T_GeneralizeTel_41275 -> T_ChainState_2188
d_'46'generalizedField'45's_41267 v0
  = case coe v0 of
      C_mkGeneralizeTel_41277 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_41269 ::
  T_GeneralizeTel_41275 -> T_Block_2194
d_'46'generalizedField'45'b_41269 v0
  = case coe v0 of
      C_mkGeneralizeTel_41277 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_41271 ::
  T_GeneralizeTel_41275 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2268
d_'46'generalizedField'45'nes_41271 v0
  = case coe v0 of
      C_mkGeneralizeTel_41277 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_41273 ::
  T_GeneralizeTel_41275 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970
d_'46'generalizedField'45'ls''_41273 v0
  = case coe v0 of
      C_mkGeneralizeTel_41277 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_41275 a0 a1 = ()
data T_GeneralizeTel_41275
  = C_mkGeneralizeTel_41277 T_ChainState_2188 T_Block_2194
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2268
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970
