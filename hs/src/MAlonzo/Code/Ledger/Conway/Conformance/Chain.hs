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
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _.Credential
d_Credential_60 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_100 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
            (coe v0)))
-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_238 ~v0
  = du_HasCast'45'HashProtected_238
du_HasCast'45'HashProtected_238 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1012
-- _.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_240 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_240
du_HasCast'45'HashProtected'45'MaybeScriptHash_240 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_240
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1014
-- _.Slot
d_Slot_562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_562 = erased
-- _.Tx
d_Tx_590 a0 = ()
-- _.VDeleg
d_VDeleg_622 a0 = ()
-- _.epoch
d_epoch_678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_678 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1736
         (coe v0))
-- _.GovActions.VDeleg
d_VDeleg_1084 a0 = ()
-- _.Tx.body
d_body_1862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3358
d_body_1862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
      (coe v0)
-- _.Tx.isValid
d_isValid_1864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  Bool
d_isValid_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3556
      (coe v0)
-- _.Tx.txAD
d_txAD_1866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  Maybe AgdaAny
d_txAD_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3558
      (coe v0)
-- _.Tx.txsize
d_txsize_1868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  Integer
d_txsize_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3554
      (coe v0)
-- _.Tx.wits
d_wits_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3516
d_wits_1870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
      (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2854 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2054 = erased
-- Ledger.Conway.Conformance.Chain._.HasCast-LEnv
d_HasCast'45'LEnv_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2058 ~v0 ~v1 = du_HasCast'45'LEnv_2058
du_HasCast'45'LEnv_2058 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2058
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2944
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_2070 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_2102 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1588
d_certState_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2658
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_2104 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2656 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_2106 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
d_utxoSt_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2654
      (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2370 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_2392 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.bcur
d_bcur_2442 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_bcur_4852 (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.bprev
d_bprev_2444 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_bprev_4850 (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_2446 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4834 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4808
d_epochState_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4854
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2448 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4834 ->
  AgdaAny
d_lastEpoch_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_4848
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.pd
d_pd_2450 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4834 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_pd_4858 (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_2452 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4834 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2944
d_ru_2452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_4856 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2528 v0 ~v1
  = du_DecEq'45'DepositPurpose_2528 v0
du_DecEq'45'DepositPurpose_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2528 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2594
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1188
         (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_2534 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2906 a0 a1 = ()
newtype T_ChainState_2906
  = C_constructor_2912 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4834
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2910 ::
  T_ChainState_2906 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4834
d_newEpochState_2910 v0
  = case coe v0 of
      C_constructor_2912 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2914 a0 a1 = ()
data T_Block_2914
  = C_constructor_2924 [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538]
                       AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2920 ::
  T_Block_2914 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538]
d_ts_2920 v0
  = case coe v0 of
      C_constructor_2924 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2922 :: T_Block_2914 -> AgdaAny
d_slot_2922 v0
  = case coe v0 of
      C_constructor_2924 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1156 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2936 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2936 v0 v2 v3 v4
du_maybePurpose_2936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1156 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2936 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1188
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2594
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
d_maybePurpose'45'prop_2968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1156 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1156 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2968 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_3010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1156 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_3010 v0 ~v1 v2 v3 = du_filterPurpose_3010 v0 v2 v3
du_filterPurpose_3010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1156 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_3010 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_966
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1532
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_maybePurpose_2936 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_3024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_3024 v0 ~v1 v2
  = du_govActionDeposits_3024 v0 v2
du_govActionDeposits_3024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_3024 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1150
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2594
               (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_604
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                -> case coe v4 of
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1068 v5 v6 v7 v8 v9
                       -> case coe v6 of
                            MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_114 v10 v11
                              -> coe
                                   MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1562
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1596
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2658
                                               (coe v1))))
                                      (coe v11)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                                     (coe v0)))))
                                         (coe v11)
                                         (let v12
                                                = MAlonzo.Code.Axiom.Set.d_th_1516
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v12
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1562
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1596
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2658
                                                           (coe v1)))))))))
                                   (coe
                                      (\ v12 ->
                                         coe
                                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 ()
                                           erased () erased
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1568
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1596
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2658
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1164
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2594
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1188
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1164
                                                    (coe v3))
                                                 (let v13
                                                        = MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v13
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1568
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1596
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2658
                                                                   (coe v1)))))))))
                                           (\ v13 ->
                                              coe
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_352
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v12) (coe v13))))))
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError)
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_456
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2656
               (coe v1))))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__3082 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__3082
  = C_CHAIN_3132 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4834
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__5176
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_3086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_48125 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4834
d_newEpochState_3086 ~v0 ~v1 v2 = du_newEpochState_3086 v2
du_newEpochState_3086 ::
  T_GeneralizeTel_48125 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4834
du_newEpochState_3086 v0
  = coe
      d_newEpochState_2910
      (coe d_'46'generalizedField'45's_48117 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_3090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_48125 -> AgdaAny
d_slot_3090 ~v0 ~v1 v2 = du_slot_3090 v2
du_slot_3090 :: T_GeneralizeTel_48125 -> AgdaAny
du_slot_3090 v0
  = coe d_slot_2922 (coe d_'46'generalizedField'45'b_48119 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_3092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_48125 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538]
d_ts_3092 ~v0 ~v1 v2 = du_ts_3092 v2
du_ts_3092 ::
  T_GeneralizeTel_48125 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538]
du_ts_3092 v0
  = coe d_ts_2920 (coe d_'46'generalizedField'45'b_48119 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_3100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_48125 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4808
d_epochState_3100 ~v0 ~v1 v2 = du_epochState_3100 v2
du_epochState_3100 ::
  T_GeneralizeTel_48125 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4808
du_epochState_3100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4854
      (coe d_'46'generalizedField'45'nes_48121 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_3110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_48125 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
d_acnt_3110 ~v0 ~v1 v2 = du_acnt_3110 v2
du_acnt_3110 ::
  T_GeneralizeTel_48125 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
du_acnt_3110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_4820
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4854
         (coe d_'46'generalizedField'45'nes_48121 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_3112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_48125 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_es_3112 ~v0 ~v1 v2 = du_es_3112 v2
du_es_3112 ::
  T_GeneralizeTel_48125 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
du_es_3112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_4826
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4854
         (coe d_'46'generalizedField'45'nes_48121 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_3116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_48125 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646
d_ls_3116 ~v0 ~v1 v2 = du_ls_3116 v2
du_ls_3116 ::
  T_GeneralizeTel_48125 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646
du_ls_3116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_4824
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4854
         (coe d_'46'generalizedField'45'nes_48121 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_3124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_48125 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_3124 ~v0 ~v1 v2 = du_constitution_3124 v2
du_constitution_3124 ::
  T_GeneralizeTel_48125 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_3124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1166
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_4826
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4854
            (coe d_'46'generalizedField'45'nes_48121 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_3126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_48125 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3126 ~v0 ~v1 v2 = du_pparams_3126 v2
du_pparams_3126 ::
  T_GeneralizeTel_48125 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1170
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_4826
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4854
            (coe d_'46'generalizedField'45'nes_48121 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_48117 ::
  T_GeneralizeTel_48125 -> T_ChainState_2906
d_'46'generalizedField'45's_48117 v0
  = case coe v0 of
      C_mkGeneralizeTel_48127 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_48119 ::
  T_GeneralizeTel_48125 -> T_Block_2914
d_'46'generalizedField'45'b_48119 v0
  = case coe v0 of
      C_mkGeneralizeTel_48127 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_48121 ::
  T_GeneralizeTel_48125 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4834
d_'46'generalizedField'45'nes_48121 v0
  = case coe v0 of
      C_mkGeneralizeTel_48127 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_48123 ::
  T_GeneralizeTel_48125 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646
d_'46'generalizedField'45'ls''_48123 v0
  = case coe v0 of
      C_mkGeneralizeTel_48127 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_48125 a0 a1 = ()
data T_GeneralizeTel_48125
  = C_mkGeneralizeTel_48127 T_ChainState_2906 T_Block_2914
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4834
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2646
