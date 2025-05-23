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
import qualified MAlonzo.Code.Ledger.Conway.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Enact
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Ledger
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Utxo
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _.Credential
d_Credential_48 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_84 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_84 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0)))
-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_182 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_182 ~v0
  = du_HasCast'45'HashProtected_182
du_HasCast'45'HashProtected_182 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected_804
-- _.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_184 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_184 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_184
du_HasCast'45'HashProtected'45'MaybeScriptHash_184 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_184
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected'45'MaybeScriptHash_806
-- _.Slot
d_Slot_400 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Slot_400 = erased
-- _.Tx
d_Tx_428 a0 = ()
-- _.VDeleg
d_VDeleg_452 a0 = ()
-- _.epoch
d_epoch_502 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> AgdaAny
d_epoch_502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1598
         (coe v0))
-- _.GovernanceActions.VDeleg
d_VDeleg_880 a0 = ()
-- _.Tx.body
d_body_1540 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2994
d_body_1540 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3196 (coe v0)
-- _.Tx.isValid
d_isValid_1542 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 -> Bool
d_isValid_1542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3200 (coe v0)
-- _.Tx.txAD
d_txAD_1544 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 -> Maybe AgdaAny
d_txAD_1544 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3202 (coe v0)
-- _.Tx.wits
d_wits_1546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3166
d_wits_1546 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3198 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1728 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2446 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230 ->
  [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1728 = erased
-- Ledger.Conway.Conformance.Chain._.HasCast-LEnv
d_HasCast'45'LEnv_1732 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_1732 ~v0 ~v1 = du_HasCast'45'LEnv_1732
du_HasCast'45'LEnv_1732 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_1732
  = coe MAlonzo.Code.Ledger.Conway.Ledger.du_HasCast'45'LEnv_2514
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1742 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1772 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1274
d_certState_1772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2242
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1774 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2240 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1776 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
d_utxoSt_1776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2238
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.StakeDistrs
d_StakeDistrs_1814 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1900 ::
  MAlonzo.Code.Ledger.Conway.Ratify.T_StakeDistrs_2246 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1900 v0
  = coe MAlonzo.Code.Ledger.Conway.Ratify.d_stakeDistr_2250 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1978 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_2002 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_2058 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2544 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2520
d_epochState_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2554
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2060 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2544 ->
  AgdaAny
d_lastEpoch_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2552
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_2062 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2544 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2472
d_ru_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2556 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2152 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2152 v0 ~v1
  = du_DecEq'45'DepositPurpose_2152 v0
du_DecEq'45'DepositPurpose_2152 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2152 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2456
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_978
         (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_2156 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2456 a0 a1 = ()
newtype T_ChainState_2456
  = C_ChainState'46'constructor_6119 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2544
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2460 ::
  T_ChainState_2456 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2544
d_newEpochState_2460 v0
  = case coe v0 of
      C_ChainState'46'constructor_6119 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2462 a0 a1 = ()
data T_Block_2462
  = C_Block'46'constructor_6177 [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186]
                                AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2468 ::
  T_Block_2462 -> [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186]
d_ts_2468 v0
  = case coe v0 of
      C_Block'46'constructor_6177 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2470 :: T_Block_2462 -> AgdaAny
d_slot_2470 v0
  = case coe v0 of
      C_Block'46'constructor_6177 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2482 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2482 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2482 v0 v2 v3 v4
du_maybePurpose_2482 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2482 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_978
                        (coe
                           MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2456
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
d_maybePurpose'45'prop_2514 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_908 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_908 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2514 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2556 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2556 v0 ~v1 v2 v3 = du_filterPurpose_2556 v0 v2 v3
du_filterPurpose_2556 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2556 v0 v1 v2
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
         (coe du_maybePurpose_2482 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2570 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2570 v0 ~v1 v2
  = du_govActionDeposits_2570 v0 v2
du_govActionDeposits_2570 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2570 v0 v1
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
            MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_888
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2456
               (coe v0))))
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
                     MAlonzo.Code.Ledger.Conway.GovernanceActions.C_GovActionState'46'constructor_5213 v5 v6 v7 v8 v9
                       -> case coe v6 of
                            MAlonzo.Code.Ledger.Conway.Address.C_RwdAddr'46'constructor_3453 v10 v11
                              -> coe
                                   MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1248
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1282
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2242
                                               (coe v1))))
                                      (coe v11)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1248
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1282
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2242
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
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1254
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1282
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2242
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Certs.C_GovActionDeposit_916
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2456
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_978
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Certs.C_GovActionDeposit_916
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1254
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1282
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2242
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2240
               (coe v1))))
-- Ledger.Conway.Conformance.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2626 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_StakeDistrs_2246
d_calculateStakeDistrs_2626 v0 ~v1 v2
  = du_calculateStakeDistrs_2626 v0 v2
du_calculateStakeDistrs_2626 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_StakeDistrs_2246
du_calculateStakeDistrs_2626 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Ratify.C_StakeDistrs'46'constructor_15595
      (coe du_govActionDeposits_2570 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2676 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2676
  = C_CHAIN_2720 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2544
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2856
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2680 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43225 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2544
d_newEpochState_2680 ~v0 ~v1 v2 = du_newEpochState_2680 v2
du_newEpochState_2680 ::
  T_GeneralizeTel_43225 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2544
du_newEpochState_2680 v0
  = coe
      d_newEpochState_2460
      (coe d_'46'generalizedField'45's_43217 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2684 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43225 -> AgdaAny
d_slot_2684 ~v0 ~v1 v2 = du_slot_2684 v2
du_slot_2684 :: T_GeneralizeTel_43225 -> AgdaAny
du_slot_2684 v0
  = coe d_slot_2470 (coe d_'46'generalizedField'45'b_43219 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2686 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43225 ->
  [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186]
d_ts_2686 ~v0 ~v1 v2 = du_ts_2686 v2
du_ts_2686 ::
  T_GeneralizeTel_43225 ->
  [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3186]
du_ts_2686 v0
  = coe d_ts_2468 (coe d_'46'generalizedField'45'b_43219 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2690 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43225 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2520
d_epochState_2690 ~v0 ~v1 v2 = du_epochState_2690 v2
du_epochState_2690 ::
  T_GeneralizeTel_43225 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2520
du_epochState_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2554
      (coe d_'46'generalizedField'45'nes_43221 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2698 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43225 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146
d_acnt_2698 ~v0 ~v1 v2 = du_acnt_2698 v2
du_acnt_2698 ::
  T_GeneralizeTel_43225 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146
du_acnt_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2532
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2554
         (coe d_'46'generalizedField'45'nes_43221 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2700 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43225 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922
d_es_2700 ~v0 ~v1 v2 = du_es_2700 v2
du_es_2700 ::
  T_GeneralizeTel_43225 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922
du_es_2700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2538
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2554
         (coe d_'46'generalizedField'45'nes_43221 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2704 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43225 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230
d_ls_2704 ~v0 ~v1 v2 = du_ls_2704 v2
du_ls_2704 ::
  T_GeneralizeTel_43225 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230
du_ls_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2536
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2554
         (coe d_'46'generalizedField'45'nes_43221 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2712 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2712 ~v0 ~v1 v2 = du_constitution_2712 v2
du_constitution_2712 ::
  T_GeneralizeTel_43225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Enact.d_constitution_936
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2538
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2554
            (coe d_'46'generalizedField'45'nes_43221 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2714 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2714 ~v0 ~v1 v2 = du_pparams_2714 v2
du_pparams_2714 ::
  T_GeneralizeTel_43225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Enact.d_pparams_940
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2538
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2554
            (coe d_'46'generalizedField'45'nes_43221 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_43217 ::
  T_GeneralizeTel_43225 -> T_ChainState_2456
d_'46'generalizedField'45's_43217 v0
  = case coe v0 of
      C_mkGeneralizeTel_43227 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_43219 ::
  T_GeneralizeTel_43225 -> T_Block_2462
d_'46'generalizedField'45'b_43219 v0
  = case coe v0 of
      C_mkGeneralizeTel_43227 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_43221 ::
  T_GeneralizeTel_43225 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2544
d_'46'generalizedField'45'nes_43221 v0
  = case coe v0 of
      C_mkGeneralizeTel_43227 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_43223 ::
  T_GeneralizeTel_43225 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230
d_'46'generalizedField'45'ls''_43223 v0
  = case coe v0 of
      C_mkGeneralizeTel_43227 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_43225 a0 a1 = ()
data T_GeneralizeTel_43225
  = C_mkGeneralizeTel_43227 T_ChainState_2456 T_Block_2462
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2544
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230
