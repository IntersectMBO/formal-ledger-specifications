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
import qualified MAlonzo.Code.Class.HasCast.Base
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
d_Credential_46 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_82 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_82 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1280 (coe v0)))
-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () -> MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'HashProtected_180 ~v0
  = du_HasCast'45'HashProtected_180
du_HasCast'45'HashProtected_180 ::
  () -> MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'HashProtected_180 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_HasCast'45'HashProtected_796
-- _.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'HashProtected'45'MaybeScriptHash_182 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_182
du_HasCast'45'HashProtected'45'MaybeScriptHash_182 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'HashProtected'45'MaybeScriptHash_182
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_HasCast'45'HashProtected'45'MaybeScriptHash_798
-- _.Slot
d_Slot_394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_394 = erased
-- _.Tx
d_Tx_422 a0 = ()
-- _.VDeleg
d_VDeleg_446 a0 = ()
-- _.epoch
d_epoch_496 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_496 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1584 (coe v0))
-- _.GovernanceActions.VDeleg
d_VDeleg_874 a0 = ()
-- _.Tx.body
d_body_1534 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3172 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980
d_body_1534 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_3182 (coe v0)
-- _.Tx.isValid
d_isValid_1536 :: MAlonzo.Code.Ledger.Transaction.T_Tx_3172 -> Bool
d_isValid_1536 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_3186 (coe v0)
-- _.Tx.txAD
d_txAD_1538 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3172 -> Maybe AgdaAny
d_txAD_1538 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_3188 (coe v0)
-- _.Tx.wits
d_wits_1540 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3172 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3152
d_wits_1540 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_3184 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1722 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2438 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2224 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_3172] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2224 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1722 = erased
-- Ledger.Conway.Conformance.Chain._.HasCast-LEnv
d_HasCast'45'LEnv_1726 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'LEnv_1726 ~v0 ~v1 = du_HasCast'45'LEnv_1726
du_HasCast'45'LEnv_1726 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'LEnv_1726
  = coe MAlonzo.Code.Ledger.Ledger.du_HasCast'45'LEnv_2506
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1736 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1766 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2224 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268
d_certState_1766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2236
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1768 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2224 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2234 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1770 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2224 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
d_utxoSt_1770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2232
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.StakeDistrs
d_StakeDistrs_1808 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1894 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_2238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1894 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_2242 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1972 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_1996 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_2052 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2538 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2514
d_epochState_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2548
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2054 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2538 ->
  AgdaAny
d_lastEpoch_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2546
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_2056 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2538 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2466
d_ru_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2550 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2146 v0 ~v1
  = du_DecEq'45'DepositPurpose_2146 v0
du_DecEq'45'DepositPurpose_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2146 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_970 (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_2150 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2450 a0 a1 = ()
newtype T_ChainState_2450
  = C_ChainState'46'constructor_6117 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2538
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2454 ::
  T_ChainState_2450 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2538
d_newEpochState_2454 v0
  = case coe v0 of
      C_ChainState'46'constructor_6117 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2456 a0 a1 = ()
data T_Block_2456
  = C_Block'46'constructor_6175 [MAlonzo.Code.Ledger.Transaction.T_Tx_3172]
                                AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2462 ::
  T_Block_2456 -> [MAlonzo.Code.Ledger.Transaction.T_Tx_3172]
d_ts_2462 v0
  = case coe v0 of
      C_Block'46'constructor_6175 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2464 :: T_Block_2456 -> AgdaAny
d_slot_2464 v0
  = case coe v0 of
      C_Block'46'constructor_6175 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2476 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2476 v0 v2 v3 v4
du_maybePurpose_2476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2476 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_970
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0)))
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
d_maybePurpose'45'prop_2508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_900 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_900 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2508 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2550 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2550 v0 ~v1 v2 v3 = du_filterPurpose_2550 v0 v2 v3
du_filterPurpose_2550 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2550 v0 v1 v2
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
         (coe du_maybePurpose_2476 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2564 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2224 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2564 v0 ~v1 v2
  = du_govActionDeposits_2564 v0 v2
du_govActionDeposits_2564 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2224 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2564 v0 v1
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
            MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_880
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2442 (coe v0))))
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
                     MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_5211 v5 v6 v7 v8 v9
                       -> case coe v6 of
                            MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3453 v10 v11
                              -> coe
                                   MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1242
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2236
                                               (coe v1))))
                                      (coe v11)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased
                                            (coe
                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1280
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1280
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1242
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2236
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
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2236
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_908
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Transaction.d_govStructure_2442
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_970
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_908
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1248
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2236
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2234
               (coe v1))))
-- Ledger.Conway.Conformance.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2620 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2224 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_2238
d_calculateStakeDistrs_2620 v0 ~v1 v2
  = du_calculateStakeDistrs_2620 v0 v2
du_calculateStakeDistrs_2620 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2224 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_2238
du_calculateStakeDistrs_2620 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_15593
      (coe du_govActionDeposits_2564 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2670 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2670
  = C_CHAIN_2714 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2538
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2850
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2674 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_42955 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2538
d_newEpochState_2674 ~v0 ~v1 v2 = du_newEpochState_2674 v2
du_newEpochState_2674 ::
  T_GeneralizeTel_42955 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2538
du_newEpochState_2674 v0
  = coe
      d_newEpochState_2454
      (coe d_'46'generalizedField'45's_42947 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2678 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_42955 -> AgdaAny
d_slot_2678 ~v0 ~v1 v2 = du_slot_2678 v2
du_slot_2678 :: T_GeneralizeTel_42955 -> AgdaAny
du_slot_2678 v0
  = coe d_slot_2464 (coe d_'46'generalizedField'45'b_42949 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2680 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_42955 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_3172]
d_ts_2680 ~v0 ~v1 v2 = du_ts_2680 v2
du_ts_2680 ::
  T_GeneralizeTel_42955 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_3172]
du_ts_2680 v0
  = coe d_ts_2462 (coe d_'46'generalizedField'45'b_42949 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_42955 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2514
d_epochState_2684 ~v0 ~v1 v2 = du_epochState_2684 v2
du_epochState_2684 ::
  T_GeneralizeTel_42955 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2514
du_epochState_2684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2548
      (coe d_'46'generalizedField'45'nes_42951 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2692 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_42955 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_acnt_2692 ~v0 ~v1 v2 = du_acnt_2692 v2
du_acnt_2692 ::
  T_GeneralizeTel_42955 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
du_acnt_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2526
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2548
         (coe d_'46'generalizedField'45'nes_42951 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_42955 -> MAlonzo.Code.Ledger.Enact.T_EnactState_914
d_es_2694 ~v0 ~v1 v2 = du_es_2694 v2
du_es_2694 ::
  T_GeneralizeTel_42955 -> MAlonzo.Code.Ledger.Enact.T_EnactState_914
du_es_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2532
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2548
         (coe d_'46'generalizedField'45'nes_42951 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2698 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_42955 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2224
d_ls_2698 ~v0 ~v1 v2 = du_ls_2698 v2
du_ls_2698 ::
  T_GeneralizeTel_42955 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2224
du_ls_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2530
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2548
         (coe d_'46'generalizedField'45'nes_42951 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2706 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_42955 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2706 ~v0 ~v1 v2 = du_constitution_2706 v2
du_constitution_2706 ::
  T_GeneralizeTel_42955 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2706 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_constitution_928
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2532
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2548
            (coe d_'46'generalizedField'45'nes_42951 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2708 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_42955 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2708 ~v0 ~v1 v2 = du_pparams_2708 v2
du_pparams_2708 ::
  T_GeneralizeTel_42955 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2708 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_pparams_932
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2532
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2548
            (coe d_'46'generalizedField'45'nes_42951 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_42947 ::
  T_GeneralizeTel_42955 -> T_ChainState_2450
d_'46'generalizedField'45's_42947 v0
  = case coe v0 of
      C_mkGeneralizeTel_42957 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_42949 ::
  T_GeneralizeTel_42955 -> T_Block_2456
d_'46'generalizedField'45'b_42949 v0
  = case coe v0 of
      C_mkGeneralizeTel_42957 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_42951 ::
  T_GeneralizeTel_42955 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2538
d_'46'generalizedField'45'nes_42951 v0
  = case coe v0 of
      C_mkGeneralizeTel_42957 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_42953 ::
  T_GeneralizeTel_42955 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2224
d_'46'generalizedField'45'ls''_42953 v0
  = case coe v0 of
      C_mkGeneralizeTel_42957 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_42955 a0 a1 = ()
data T_GeneralizeTel_42955
  = C_mkGeneralizeTel_42957 T_ChainState_2450 T_Block_2456
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2538
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2224
