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
d_Credential_48 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_84 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_84 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1288 (coe v0)))
-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () -> MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'HashProtected_182 ~v0
  = du_HasCast'45'HashProtected_182
du_HasCast'45'HashProtected_182 ::
  () -> MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'HashProtected_182 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_HasCast'45'HashProtected_800
-- _.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'HashProtected'45'MaybeScriptHash_184 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_184
du_HasCast'45'HashProtected'45'MaybeScriptHash_184 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'HashProtected'45'MaybeScriptHash_184
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.du_HasCast'45'HashProtected'45'MaybeScriptHash_802
-- _.Slot
d_Slot_398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_398 = erased
-- _.Tx
d_Tx_426 a0 = ()
-- _.VDeleg
d_VDeleg_450 a0 = ()
-- _.epoch
d_epoch_500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_500 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1592 (coe v0))
-- _.GovernanceActions.VDeleg
d_VDeleg_878 a0 = ()
-- _.Tx.body
d_body_1538 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2988
d_body_1538 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_3190 (coe v0)
-- _.Tx.isValid
d_isValid_1540 :: MAlonzo.Code.Ledger.Transaction.T_Tx_3180 -> Bool
d_isValid_1540 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_3194 (coe v0)
-- _.Tx.txAD
d_txAD_1542 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 -> Maybe AgdaAny
d_txAD_1542 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_3196 (coe v0)
-- _.Tx.wits
d_wits_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3180 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3160
d_wits_1544 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_3192 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1726 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2442 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2228 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_3180] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2228 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1726 = erased
-- Ledger.Conway.Conformance.Chain._.HasCast-LEnv
d_HasCast'45'LEnv_1730 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'LEnv_1730 ~v0 ~v1 = du_HasCast'45'LEnv_1730
du_HasCast'45'LEnv_1730 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'LEnv_1730
  = coe MAlonzo.Code.Ledger.Ledger.du_HasCast'45'LEnv_2510
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1740 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1770 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2228 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1272
d_certState_1770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2240
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1772 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2228 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2238 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1774 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2228 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2286
d_utxoSt_1774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2236
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.StakeDistrs
d_StakeDistrs_1812 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1898 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_2242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1898 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_2246 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1976 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_2000 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_2056 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2542 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2518
d_epochState_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2552
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2058 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2542 ->
  AgdaAny
d_lastEpoch_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2550
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_2060 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2542 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2470
d_ru_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2554 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2150 v0 ~v1
  = du_DecEq'45'DepositPurpose_2150 v0
du_DecEq'45'DepositPurpose_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2150 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2450 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_974 (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_2154 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2454 a0 a1 = ()
newtype T_ChainState_2454
  = C_ChainState'46'constructor_6117 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2542
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2458 ::
  T_ChainState_2454 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2542
d_newEpochState_2458 v0
  = case coe v0 of
      C_ChainState'46'constructor_6117 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2460 a0 a1 = ()
data T_Block_2460
  = C_Block'46'constructor_6175 [MAlonzo.Code.Ledger.Transaction.T_Tx_3180]
                                AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2466 ::
  T_Block_2460 -> [MAlonzo.Code.Ledger.Transaction.T_Tx_3180]
d_ts_2466 v0
  = case coe v0 of
      C_Block'46'constructor_6175 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2468 :: T_Block_2460 -> AgdaAny
d_slot_2468 v0
  = case coe v0 of
      C_Block'46'constructor_6175 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2480 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2480 v0 v2 v3 v4
du_maybePurpose_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2480 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_974
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2450 (coe v0)))
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
d_maybePurpose'45'prop_2512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_904 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_904 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2512 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2554 v0 ~v1 v2 v3 = du_filterPurpose_2554 v0 v2 v3
du_filterPurpose_2554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2554 v0 v1 v2
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
         (coe du_maybePurpose_2480 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2568 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2568 v0 ~v1 v2
  = du_govActionDeposits_2568 v0 v2
du_govActionDeposits_2568 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2568 v0 v1
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
            MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_884
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2450 (coe v0))))
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
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1246
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1280
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2240
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
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1288
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1288
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1246
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1280
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2240
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
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1252
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1280
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2240
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_912
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Transaction.d_govStructure_2450
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_974
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_912
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1252
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1280
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2240
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2238
               (coe v1))))
-- Ledger.Conway.Conformance.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2624 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2228 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_2242
d_calculateStakeDistrs_2624 v0 ~v1 v2
  = du_calculateStakeDistrs_2624 v0 v2
du_calculateStakeDistrs_2624 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2228 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_2242
du_calculateStakeDistrs_2624 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_15593
      (coe du_govActionDeposits_2568 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2674 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2674
  = C_CHAIN_2718 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2542
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2854
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2678 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_43187 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2542
d_newEpochState_2678 ~v0 ~v1 v2 = du_newEpochState_2678 v2
du_newEpochState_2678 ::
  T_GeneralizeTel_43187 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2542
du_newEpochState_2678 v0
  = coe
      d_newEpochState_2458
      (coe d_'46'generalizedField'45's_43179 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_43187 -> AgdaAny
d_slot_2682 ~v0 ~v1 v2 = du_slot_2682 v2
du_slot_2682 :: T_GeneralizeTel_43187 -> AgdaAny
du_slot_2682 v0
  = coe d_slot_2468 (coe d_'46'generalizedField'45'b_43181 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_43187 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_3180]
d_ts_2684 ~v0 ~v1 v2 = du_ts_2684 v2
du_ts_2684 ::
  T_GeneralizeTel_43187 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_3180]
du_ts_2684 v0
  = coe d_ts_2466 (coe d_'46'generalizedField'45'b_43181 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2688 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_43187 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2518
d_epochState_2688 ~v0 ~v1 v2 = du_epochState_2688 v2
du_epochState_2688 ::
  T_GeneralizeTel_43187 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2518
du_epochState_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2552
      (coe d_'46'generalizedField'45'nes_43183 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_43187 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_acnt_2696 ~v0 ~v1 v2 = du_acnt_2696 v2
du_acnt_2696 ::
  T_GeneralizeTel_43187 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
du_acnt_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2530
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2552
         (coe d_'46'generalizedField'45'nes_43183 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2698 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_43187 -> MAlonzo.Code.Ledger.Enact.T_EnactState_918
d_es_2698 ~v0 ~v1 v2 = du_es_2698 v2
du_es_2698 ::
  T_GeneralizeTel_43187 -> MAlonzo.Code.Ledger.Enact.T_EnactState_918
du_es_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2536
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2552
         (coe d_'46'generalizedField'45'nes_43183 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2702 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_43187 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2228
d_ls_2702 ~v0 ~v1 v2 = du_ls_2702 v2
du_ls_2702 ::
  T_GeneralizeTel_43187 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2228
du_ls_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2534
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2552
         (coe d_'46'generalizedField'45'nes_43183 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2710 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_43187 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2710 ~v0 ~v1 v2 = du_constitution_2710 v2
du_constitution_2710 ::
  T_GeneralizeTel_43187 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2710 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_constitution_932
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2536
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2552
            (coe d_'46'generalizedField'45'nes_43183 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2712 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1982 ->
  T_GeneralizeTel_43187 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2712 ~v0 ~v1 v2 = du_pparams_2712 v2
du_pparams_2712 ::
  T_GeneralizeTel_43187 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2712 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_pparams_936
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2536
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2552
            (coe d_'46'generalizedField'45'nes_43183 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_43179 ::
  T_GeneralizeTel_43187 -> T_ChainState_2454
d_'46'generalizedField'45's_43179 v0
  = case coe v0 of
      C_mkGeneralizeTel_43189 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_43181 ::
  T_GeneralizeTel_43187 -> T_Block_2460
d_'46'generalizedField'45'b_43181 v0
  = case coe v0 of
      C_mkGeneralizeTel_43189 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_43183 ::
  T_GeneralizeTel_43187 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2542
d_'46'generalizedField'45'nes_43183 v0
  = case coe v0 of
      C_mkGeneralizeTel_43189 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_43185 ::
  T_GeneralizeTel_43187 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2228
d_'46'generalizedField'45'ls''_43185 v0
  = case coe v0 of
      C_mkGeneralizeTel_43189 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_43187 a0 a1 = ()
data T_GeneralizeTel_43187
  = C_mkGeneralizeTel_43189 T_ChainState_2454 T_Block_2460
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2542
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2228
