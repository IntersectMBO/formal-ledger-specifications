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
d_Credential_46 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_80 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_80 v0
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
d_Slot_330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_330 = erased
-- _.Tx
d_Tx_362 a0 = ()
-- _.VDeleg
d_VDeleg_382 a0 = ()
-- _.epoch
d_epoch_430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_430 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1502 (coe v0))
-- _.GovernanceActions.VDeleg
d_VDeleg_790 a0 = ()
-- _.Tx.body
d_body_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2636 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534
d_body_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2646 (coe v0)
-- _.Tx.isValid
d_isValid_1404 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2636 -> Bool
d_isValid_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2650 (coe v0)
-- _.Tx.txAD
d_txAD_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2636 -> Maybe AgdaAny
d_txAD_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2652 (coe v0)
-- _.Tx.wits
d_wits_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2636 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2616
d_wits_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2648 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1578 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2168 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1978 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2636] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1978 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1578 = erased
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1588 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.To-LEnv
d_To'45'LEnv_1590 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1590 ~v0 ~v1 = du_To'45'LEnv_1590
du_To'45'LEnv_1590 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1590
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2206
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1622 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1978 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
d_certState_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1990
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1624 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1978 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_1988 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1626 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1978 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044
d_utxoSt_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_1986
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.StakeDistrs
d_StakeDistrs_1658 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1742 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1742 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1994 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1820 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_1834 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_1900 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2252
d_epochState_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2286
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_1902 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2276 ->
  AgdaAny
d_lastEpoch_1902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2284
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_1904 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2276 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2204
d_ru_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2288 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1986 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1986 v0 ~v1
  = du_DecEq'45'DepositPurpose_1986 v0
du_DecEq'45'DepositPurpose_1986 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1986 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848 (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_1990 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2196 a0 a1 = ()
newtype T_ChainState_2196
  = C_ChainState'46'constructor_4649 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2276
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2200 ::
  T_ChainState_2196 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2276
d_newEpochState_2200 v0
  = case coe v0 of
      C_ChainState'46'constructor_4649 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2202 a0 a1 = ()
data T_Block_2202
  = C_Block'46'constructor_4707 [MAlonzo.Code.Ledger.Transaction.T_Tx_2636]
                                AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2208 ::
  T_Block_2202 -> [MAlonzo.Code.Ledger.Transaction.T_Tx_2636]
d_ts_2208 v0
  = case coe v0 of
      C_Block'46'constructor_4707 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2210 :: T_Block_2202 -> AgdaAny
d_slot_2210 v0
  = case coe v0 of
      C_Block'46'constructor_4707 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2222 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2222 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2222 v0 v2 v3 v4
du_maybePurpose_2222 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2222 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
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
d_maybePurpose'45'prop_2254 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2254 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2296 v0 ~v1 v2 v3 = du_filterPurpose_2296 v0 v2 v3
du_filterPurpose_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2296 v0 v1 v2
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
         (coe du_maybePurpose_2222 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2310 v0 ~v1 v2
  = du_govActionDeposits_2310 v0 v2
du_govActionDeposits_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2310 v0 v1
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
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1990
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1076
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1110
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1990
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
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1990
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1990
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_1988
               (coe v1))))
-- Ledger.Conway.Conformance.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1978 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1990
d_calculateStakeDistrs_2366 v0 ~v1 v2
  = du_calculateStakeDistrs_2366 v0 v2
du_calculateStakeDistrs_2366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1978 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1990
du_calculateStakeDistrs_2366 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_12379
      (coe du_govActionDeposits_2310 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2416 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2416
  = C_CHAIN_2460 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2276
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2588
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2420 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_41591 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2276
d_newEpochState_2420 ~v0 ~v1 v2 = du_newEpochState_2420 v2
du_newEpochState_2420 ::
  T_GeneralizeTel_41591 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2276
du_newEpochState_2420 v0
  = coe
      d_newEpochState_2200
      (coe d_'46'generalizedField'45's_41583 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2424 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_41591 -> AgdaAny
d_slot_2424 ~v0 ~v1 v2 = du_slot_2424 v2
du_slot_2424 :: T_GeneralizeTel_41591 -> AgdaAny
du_slot_2424 v0
  = coe d_slot_2210 (coe d_'46'generalizedField'45'b_41585 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_41591 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2636]
d_ts_2426 ~v0 ~v1 v2 = du_ts_2426 v2
du_ts_2426 ::
  T_GeneralizeTel_41591 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2636]
du_ts_2426 v0
  = coe d_ts_2208 (coe d_'46'generalizedField'45'b_41585 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_41591 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2252
d_epochState_2430 ~v0 ~v1 v2 = du_epochState_2430 v2
du_epochState_2430 ::
  T_GeneralizeTel_41591 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2252
du_epochState_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2286
      (coe d_'46'generalizedField'45'nes_41587 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_41591 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_acnt_2438 ~v0 ~v1 v2 = du_acnt_2438 v2
du_acnt_2438 ::
  T_GeneralizeTel_41591 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
du_acnt_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2264
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2286
         (coe d_'46'generalizedField'45'nes_41587 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_41591 -> MAlonzo.Code.Ledger.Enact.T_EnactState_850
d_es_2440 ~v0 ~v1 v2 = du_es_2440 v2
du_es_2440 ::
  T_GeneralizeTel_41591 -> MAlonzo.Code.Ledger.Enact.T_EnactState_850
du_es_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2270
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2286
         (coe d_'46'generalizedField'45'nes_41587 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2444 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_41591 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1978
d_ls_2444 ~v0 ~v1 v2 = du_ls_2444 v2
du_ls_2444 ::
  T_GeneralizeTel_41591 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1978
du_ls_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2268
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2286
         (coe d_'46'generalizedField'45'nes_41587 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_41591 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2452 ~v0 ~v1 v2 = du_constitution_2452 v2
du_constitution_2452 ::
  T_GeneralizeTel_41591 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2452 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_constitution_864
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2270
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2286
            (coe d_'46'generalizedField'45'nes_41587 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_41591 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2454 ~v0 ~v1 v2 = du_pparams_2454 v2
du_pparams_2454 ::
  T_GeneralizeTel_41591 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2454 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_pparams_868
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2270
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2286
            (coe d_'46'generalizedField'45'nes_41587 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_41583 ::
  T_GeneralizeTel_41591 -> T_ChainState_2196
d_'46'generalizedField'45's_41583 v0
  = case coe v0 of
      C_mkGeneralizeTel_41593 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_41585 ::
  T_GeneralizeTel_41591 -> T_Block_2202
d_'46'generalizedField'45'b_41585 v0
  = case coe v0 of
      C_mkGeneralizeTel_41593 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_41587 ::
  T_GeneralizeTel_41591 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2276
d_'46'generalizedField'45'nes_41587 v0
  = case coe v0 of
      C_mkGeneralizeTel_41593 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_41589 ::
  T_GeneralizeTel_41591 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1978
d_'46'generalizedField'45'ls''_41589 v0
  = case coe v0 of
      C_mkGeneralizeTel_41593 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_41591 a0 a1 = ()
data T_GeneralizeTel_41591
  = C_mkGeneralizeTel_41593 T_ChainState_2196 T_Block_2202
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2276
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1978
