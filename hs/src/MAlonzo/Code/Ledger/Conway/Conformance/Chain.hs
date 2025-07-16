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
import qualified MAlonzo.Code.Ledger.Conway.Gov.Actions
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
d_DecEq'45'Credential_82 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v0)))
-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_178 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_178 ~v0
  = du_HasCast'45'HashProtected_178
du_HasCast'45'HashProtected_178 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.Actions.du_HasCast'45'HashProtected_826
-- _.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_180 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_180 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_180
du_HasCast'45'HashProtected'45'MaybeScriptHash_180 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_180
  = coe
      MAlonzo.Code.Ledger.Conway.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_828
-- _.Slot
d_Slot_386 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Slot_386 = erased
-- _.Tx
d_Tx_412 a0 = ()
-- _.VDeleg
d_VDeleg_436 a0 = ()
-- _.epoch
d_epoch_486 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> AgdaAny
d_epoch_486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
         (coe v0))
-- _.GovActions.VDeleg
d_VDeleg_812 a0 = ()
-- _.Tx.body
d_body_1524 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_body_1524 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v0)
-- _.Tx.isValid
d_isValid_1526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Bool
d_isValid_1526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v0)
-- _.Tx.txAD
d_txAD_1528 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Maybe AgdaAny
d_txAD_1528 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3150 (coe v0)
-- _.Tx.txsize
d_txsize_1530 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Integer
d_txsize_1530 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3146 (coe v0)
-- _.Tx.wits
d_wits_1532 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3110
d_wits_1532 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1698 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2388 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196 ->
  [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1698 = erased
-- Ledger.Conway.Conformance.Chain._.HasCast-LEnv
d_HasCast'45'LEnv_1702 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_1702 ~v0 ~v1 = du_HasCast'45'LEnv_1702
du_HasCast'45'LEnv_1702 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_1702
  = coe MAlonzo.Code.Ledger.Conway.Ledger.du_HasCast'45'LEnv_2456
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1712 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1742 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294
d_certState_1742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2208
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1744 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2206 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1746 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
d_utxoSt_1746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2204
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.StakeDistrs
d_StakeDistrs_1784 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1870 ::
  MAlonzo.Code.Ledger.Conway.Ratify.T_StakeDistrs_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1870 v0
  = coe MAlonzo.Code.Ledger.Conway.Ratify.d_stakeDistr_2220 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1948 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_1972 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_2028 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2514 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2490
d_epochState_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2524
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2030 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2514 ->
  AgdaAny
d_lastEpoch_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2522
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_2032 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2514 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2442
d_ru_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2526 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2122 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2122 v0 ~v1
  = du_DecEq'45'DepositPurpose_2122 v0
du_DecEq'45'DepositPurpose_2122 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2122 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
         (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_2126 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2426 a0 a1 = ()
newtype T_ChainState_2426
  = C_ChainState'46'constructor_6061 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2514
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2430 ::
  T_ChainState_2426 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2514
d_newEpochState_2430 v0
  = case coe v0 of
      C_ChainState'46'constructor_6061 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2432 a0 a1 = ()
data T_Block_2432
  = C_Block'46'constructor_6119 [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130]
                                AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2438 ::
  T_Block_2432 -> [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130]
d_ts_2438 v0
  = case coe v0 of
      C_Block'46'constructor_6119 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2440 :: T_Block_2432 -> AgdaAny
d_slot_2440 v0
  = case coe v0 of
      C_Block'46'constructor_6119 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2452 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2452 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2452 v0 v2 v3 v4
du_maybePurpose_2452 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2452 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                        (coe
                           MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
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
d_maybePurpose'45'prop_2484 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_928 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_928 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2484 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2526 v0 ~v1 v2 v3 = du_filterPurpose_2526 v0 v2 v3
du_filterPurpose_2526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2526 v0 v1 v2
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
         (coe du_maybePurpose_2452 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2540 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2540 v0 ~v1 v2
  = du_govActionDeposits_2540 v0 v2
du_govActionDeposits_2540 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2540 v0 v1
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
            MAlonzo.Code.Ledger.Conway.Gov.Actions.d_DecEq'45'VDeleg_910
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
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
                     MAlonzo.Code.Ledger.Conway.Gov.Actions.C_GovActionState'46'constructor_5261 v5 v6 v7 v8 v9
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
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1268
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1302
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2208
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
                                                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1268
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1302
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2208
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
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1274
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1302
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2208
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Certs.C_GovActionDeposit_936
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Certs.C_GovActionDeposit_936
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1274
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1302
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2208
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2206
               (coe v1))))
-- Ledger.Conway.Conformance.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2596 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_StakeDistrs_2216
d_calculateStakeDistrs_2596 v0 ~v1 v2
  = du_calculateStakeDistrs_2596 v0 v2
du_calculateStakeDistrs_2596 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_StakeDistrs_2216
du_calculateStakeDistrs_2596 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Ratify.C_StakeDistrs'46'constructor_15537
      (coe du_govActionDeposits_2540 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2646 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2646
  = C_CHAIN_2690 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2514
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2826
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2650 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_43167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2514
d_newEpochState_2650 ~v0 ~v1 v2 = du_newEpochState_2650 v2
du_newEpochState_2650 ::
  T_GeneralizeTel_43167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2514
du_newEpochState_2650 v0
  = coe
      d_newEpochState_2430
      (coe d_'46'generalizedField'45's_43159 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2654 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_43167 -> AgdaAny
d_slot_2654 ~v0 ~v1 v2 = du_slot_2654 v2
du_slot_2654 :: T_GeneralizeTel_43167 -> AgdaAny
du_slot_2654 v0
  = coe d_slot_2440 (coe d_'46'generalizedField'45'b_43161 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2656 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_43167 ->
  [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130]
d_ts_2656 ~v0 ~v1 v2 = du_ts_2656 v2
du_ts_2656 ::
  T_GeneralizeTel_43167 ->
  [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130]
du_ts_2656 v0
  = coe d_ts_2438 (coe d_'46'generalizedField'45'b_43161 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2660 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_43167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2490
d_epochState_2660 ~v0 ~v1 v2 = du_epochState_2660 v2
du_epochState_2660 ::
  T_GeneralizeTel_43167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2490
du_epochState_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2524
      (coe d_'46'generalizedField'45'nes_43163 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2668 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_43167 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_160
d_acnt_2668 ~v0 ~v1 v2 = du_acnt_2668 v2
du_acnt_2668 ::
  T_GeneralizeTel_43167 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_160
du_acnt_2668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2502
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2524
         (coe d_'46'generalizedField'45'nes_43163 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2670 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_43167 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942
d_es_2670 ~v0 ~v1 v2 = du_es_2670 v2
du_es_2670 ::
  T_GeneralizeTel_43167 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942
du_es_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2508
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2524
         (coe d_'46'generalizedField'45'nes_43163 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2674 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_43167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196
d_ls_2674 ~v0 ~v1 v2 = du_ls_2674 v2
du_ls_2674 ::
  T_GeneralizeTel_43167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196
du_ls_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2506
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2524
         (coe d_'46'generalizedField'45'nes_43163 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2682 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_43167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2682 ~v0 ~v1 v2 = du_constitution_2682 v2
du_constitution_2682 ::
  T_GeneralizeTel_43167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Enact.d_constitution_956
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2508
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2524
            (coe d_'46'generalizedField'45'nes_43163 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2684 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_43167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2684 ~v0 ~v1 v2 = du_pparams_2684 v2
du_pparams_2684 ::
  T_GeneralizeTel_43167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Enact.d_pparams_960
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2508
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2524
            (coe d_'46'generalizedField'45'nes_43163 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_43159 ::
  T_GeneralizeTel_43167 -> T_ChainState_2426
d_'46'generalizedField'45's_43159 v0
  = case coe v0 of
      C_mkGeneralizeTel_43169 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_43161 ::
  T_GeneralizeTel_43167 -> T_Block_2432
d_'46'generalizedField'45'b_43161 v0
  = case coe v0 of
      C_mkGeneralizeTel_43169 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_43163 ::
  T_GeneralizeTel_43167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2514
d_'46'generalizedField'45'nes_43163 v0
  = case coe v0 of
      C_mkGeneralizeTel_43169 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_43165 ::
  T_GeneralizeTel_43167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196
d_'46'generalizedField'45'ls''_43165 v0
  = case coe v0 of
      C_mkGeneralizeTel_43169 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_43167 a0 a1 = ()
data T_GeneralizeTel_43167
  = C_mkGeneralizeTel_43169 T_ChainState_2426 T_Block_2432
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2514
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2196
