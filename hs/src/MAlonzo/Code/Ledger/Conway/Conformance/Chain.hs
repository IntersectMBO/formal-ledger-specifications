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
d_Credential_58 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_94 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_94 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
            (coe v0)))
-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_224 ~v0
  = du_HasCast'45'HashProtected_224
du_HasCast'45'HashProtected_224 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_924
-- _.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_226 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_226
du_HasCast'45'HashProtected'45'MaybeScriptHash_226 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_226
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_926
-- _.Slot
d_Slot_500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_500 = erased
-- _.Tx
d_Tx_528 a0 = ()
-- _.VDeleg
d_VDeleg_560 a0 = ()
-- _.epoch
d_epoch_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_608 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
         (coe v0))
-- _.GovActions.VDeleg
d_VDeleg_980 a0 = ()
-- _.Tx.body
d_body_1720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3202
d_body_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
      (coe v0)
-- _.Tx.isValid
d_isValid_1722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  Bool
d_isValid_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3400
      (coe v0)
-- _.Tx.txAD
d_txAD_1724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  Maybe AgdaAny
d_txAD_1724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3402
      (coe v0)
-- _.Tx.txsize
d_txsize_1726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  Integer
d_txsize_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3398
      (coe v0)
-- _.Tx.wits
d_wits_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3360
d_wits_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3396
      (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2696 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2492 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2492 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1900 = erased
-- Ledger.Conway.Conformance.Chain._.HasCast-LEnv
d_HasCast'45'LEnv_1904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_1904 ~v0 ~v1 = du_HasCast'45'LEnv_1904
du_HasCast'45'LEnv_1904 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_1904
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2786
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1916 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1948 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2492 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488
d_certState_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2504
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1950 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2492 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2502 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1952 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
d_utxoSt_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2500
      (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2158 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_2176 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_2216 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2744 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2720
d_epochState_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2754
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2218 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2744 ->
  AgdaAny
d_lastEpoch_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2752
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_2220 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2744 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2800
d_ru_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2756 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2294 v0 ~v1
  = du_DecEq'45'DepositPurpose_2294 v0
du_DecEq'45'DepositPurpose_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2294 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
         (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_2300 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2674 a0 a1 = ()
newtype T_ChainState_2674
  = C_constructor_2680 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2744
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2678 ::
  T_ChainState_2674 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2744
d_newEpochState_2678 v0
  = case coe v0 of
      C_constructor_2680 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2682 a0 a1 = ()
data T_Block_2682
  = C_constructor_2692 [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382]
                       AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2688 ::
  T_Block_2682 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382]
d_ts_2688 v0
  = case coe v0 of
      C_constructor_2692 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2690 :: T_Block_2682 -> AgdaAny
d_slot_2690 v0
  = case coe v0 of
      C_constructor_2692 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2704 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2704 v0 v2 v3 v4
du_maybePurpose_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2704 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
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
d_maybePurpose'45'prop_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2736 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2778 v0 ~v1 v2 v3 = du_filterPurpose_2778 v0 v2 v3
du_filterPurpose_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2778 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1256
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe du_maybePurpose_2704 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2492 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2792 v0 ~v1 v2
  = du_govActionDeposits_2792 v0 v2
du_govActionDeposits_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2492 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2792 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1038
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
               (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_578
         (MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                -> case coe v4 of
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1022 v5 v6 v7 v8 v9
                       -> case coe v6 of
                            MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_114 v10 v11
                              -> coe
                                   MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1714
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1462
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2504
                                               (coe v1))))
                                      (coe v11)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                     (coe v0)))))
                                         (coe v11)
                                         (let v12
                                                = MAlonzo.Code.Axiom.Set.d_th_1480
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v12
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1462
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2504
                                                           (coe v1)))))))))
                                   (coe
                                      (\ v12 ->
                                         coe
                                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 ()
                                           erased () erased
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1714
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2504
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070
                                                    (coe v3))
                                                 (let v13
                                                        = MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v13
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2504
                                                                   (coe v1)))))))))
                                           (\ v13 ->
                                              coe
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v12) (coe v13))))))
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError)
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_430
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2502
               (coe v1))))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2848 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2848
  = C_CHAIN_2892 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2744
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2982
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_44817 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2744
d_newEpochState_2852 ~v0 ~v1 v2 = du_newEpochState_2852 v2
du_newEpochState_2852 ::
  T_GeneralizeTel_44817 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2744
du_newEpochState_2852 v0
  = coe
      d_newEpochState_2678
      (coe d_'46'generalizedField'45's_44809 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_44817 -> AgdaAny
d_slot_2856 ~v0 ~v1 v2 = du_slot_2856 v2
du_slot_2856 :: T_GeneralizeTel_44817 -> AgdaAny
du_slot_2856 v0
  = coe d_slot_2690 (coe d_'46'generalizedField'45'b_44811 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_44817 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382]
d_ts_2858 ~v0 ~v1 v2 = du_ts_2858 v2
du_ts_2858 ::
  T_GeneralizeTel_44817 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382]
du_ts_2858 v0
  = coe d_ts_2688 (coe d_'46'generalizedField'45'b_44811 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_44817 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2720
d_epochState_2862 ~v0 ~v1 v2 = du_epochState_2862 v2
du_epochState_2862 ::
  T_GeneralizeTel_44817 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2720
du_epochState_2862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2754
      (coe d_'46'generalizedField'45'nes_44813 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_44817 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164
d_acnt_2870 ~v0 ~v1 v2 = du_acnt_2870 v2
du_acnt_2870 ::
  T_GeneralizeTel_44817 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164
du_acnt_2870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2732
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2754
         (coe d_'46'generalizedField'45'nes_44813 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_44817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_es_2872 ~v0 ~v1 v2 = du_es_2872 v2
du_es_2872 ::
  T_GeneralizeTel_44817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
du_es_2872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2738
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2754
         (coe d_'46'generalizedField'45'nes_44813 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_44817 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2492
d_ls_2876 ~v0 ~v1 v2 = du_ls_2876 v2
du_ls_2876 ::
  T_GeneralizeTel_44817 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2492
du_ls_2876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2736
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2754
         (coe d_'46'generalizedField'45'nes_44813 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_44817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2884 ~v0 ~v1 v2 = du_constitution_2884 v2
du_constitution_2884 ::
  T_GeneralizeTel_44817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1068
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2738
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2754
            (coe d_'46'generalizedField'45'nes_44813 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_44817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2886 ~v0 ~v1 v2 = du_pparams_2886 v2
du_pparams_2886 ::
  T_GeneralizeTel_44817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1072
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2738
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2754
            (coe d_'46'generalizedField'45'nes_44813 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_44809 ::
  T_GeneralizeTel_44817 -> T_ChainState_2674
d_'46'generalizedField'45's_44809 v0
  = case coe v0 of
      C_mkGeneralizeTel_44819 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_44811 ::
  T_GeneralizeTel_44817 -> T_Block_2682
d_'46'generalizedField'45'b_44811 v0
  = case coe v0 of
      C_mkGeneralizeTel_44819 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_44813 ::
  T_GeneralizeTel_44817 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2744
d_'46'generalizedField'45'nes_44813 v0
  = case coe v0 of
      C_mkGeneralizeTel_44819 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_44815 ::
  T_GeneralizeTel_44817 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2492
d_'46'generalizedField'45'ls''_44815 v0
  = case coe v0 of
      C_mkGeneralizeTel_44819 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_44817 a0 a1 = ()
data T_GeneralizeTel_44817
  = C_mkGeneralizeTel_44819 T_ChainState_2674 T_Block_2682
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2744
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2492
