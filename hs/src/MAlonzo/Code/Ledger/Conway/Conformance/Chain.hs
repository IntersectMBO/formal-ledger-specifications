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
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
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
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_918
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
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_920
-- _.Slot
d_Slot_494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_494 = erased
-- _.Tx
d_Tx_522 a0 = ()
-- _.VDeleg
d_VDeleg_554 a0 = ()
-- _.epoch
d_epoch_602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_602 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
         (coe v0))
-- _.GovActions.VDeleg
d_VDeleg_974 a0 = ()
-- _.Tx.body
d_body_1714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3188
d_body_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3380
      (coe v0)
-- _.Tx.isValid
d_isValid_1716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3368 ->
  Bool
d_isValid_1716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3386
      (coe v0)
-- _.Tx.txAD
d_txAD_1718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3368 ->
  Maybe AgdaAny
d_txAD_1718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3388
      (coe v0)
-- _.Tx.txsize
d_txsize_1720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3368 ->
  Integer
d_txsize_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3384
      (coe v0)
-- _.Tx.wits
d_wits_1722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3368 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3346
d_wits_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3382
      (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2688 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2484 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3368] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2484 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1894 = erased
-- Ledger.Conway.Conformance.Chain._.HasCast-LEnv
d_HasCast'45'LEnv_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_1898 ~v0 ~v1 = du_HasCast'45'LEnv_1898
du_HasCast'45'LEnv_1898 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_1898
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2774
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1910 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1942 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2484 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1480
d_certState_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2496
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1944 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2484 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2494 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1946 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2334
d_utxoSt_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2492
      (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2152 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_2170 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_2210 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2724 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2700
d_epochState_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2734
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2212 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2724 ->
  AgdaAny
d_lastEpoch_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2732
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_2214 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2724 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2788
d_ru_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2736 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2288 v0 ~v1
  = du_DecEq'45'DepositPurpose_2288 v0
du_DecEq'45'DepositPurpose_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2288 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1088
         (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_2294 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2666 a0 a1 = ()
newtype T_ChainState_2666
  = C_constructor_2672 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2724
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2670 ::
  T_ChainState_2666 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2724
d_newEpochState_2670 v0
  = case coe v0 of
      C_constructor_2672 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2674 a0 a1 = ()
data T_Block_2674
  = C_constructor_2684 [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3368]
                       AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2680 ::
  T_Block_2674 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3368]
d_ts_2680 v0
  = case coe v0 of
      C_constructor_2684 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2682 :: T_Block_2674 -> AgdaAny
d_slot_2682 v0
  = case coe v0 of
      C_constructor_2684 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2696 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2696 v0 v2 v3 v4
du_maybePurpose_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2696 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1088
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
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
d_maybePurpose'45'prop_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1056 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1056 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2728 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2770 v0 ~v1 v2 v3 = du_filterPurpose_2770 v0 v2 v3
du_filterPurpose_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2770 v0 v1 v2
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
         (coe du_maybePurpose_2696 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2484 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2784 v0 ~v1 v2
  = du_govActionDeposits_2784 v0 v2
du_govActionDeposits_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2484 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2784 v0 v1
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
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1032
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
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
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1016 v5 v6 v7 v8 v9
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
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1454
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1488
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2496
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1454
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1488
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2496
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
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1460
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1488
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2496
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1064
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1088
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1064
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1460
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1488
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2496
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2494
               (coe v1))))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2840 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2840
  = C_CHAIN_2884 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2724
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2962
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_43429 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2724
d_newEpochState_2844 ~v0 ~v1 v2 = du_newEpochState_2844 v2
du_newEpochState_2844 ::
  T_GeneralizeTel_43429 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2724
du_newEpochState_2844 v0
  = coe
      d_newEpochState_2670
      (coe d_'46'generalizedField'45's_43421 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_43429 -> AgdaAny
d_slot_2848 ~v0 ~v1 v2 = du_slot_2848 v2
du_slot_2848 :: T_GeneralizeTel_43429 -> AgdaAny
du_slot_2848 v0
  = coe d_slot_2682 (coe d_'46'generalizedField'45'b_43423 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_43429 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3368]
d_ts_2850 ~v0 ~v1 v2 = du_ts_2850 v2
du_ts_2850 ::
  T_GeneralizeTel_43429 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3368]
du_ts_2850 v0
  = coe d_ts_2680 (coe d_'46'generalizedField'45'b_43423 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_43429 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2700
d_epochState_2854 ~v0 ~v1 v2 = du_epochState_2854 v2
du_epochState_2854 ::
  T_GeneralizeTel_43429 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2700
du_epochState_2854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2734
      (coe d_'46'generalizedField'45'nes_43425 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_43429 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
d_acnt_2862 ~v0 ~v1 v2 = du_acnt_2862 v2
du_acnt_2862 ::
  T_GeneralizeTel_43429 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
du_acnt_2862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2712
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2734
         (coe d_'46'generalizedField'45'nes_43425 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_43429 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1048
d_es_2864 ~v0 ~v1 v2 = du_es_2864 v2
du_es_2864 ::
  T_GeneralizeTel_43429 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1048
du_es_2864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2718
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2734
         (coe d_'46'generalizedField'45'nes_43425 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_43429 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2484
d_ls_2868 ~v0 ~v1 v2 = du_ls_2868 v2
du_ls_2868 ::
  T_GeneralizeTel_43429 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2484
du_ls_2868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2716
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2734
         (coe d_'46'generalizedField'45'nes_43425 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_43429 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2876 ~v0 ~v1 v2 = du_constitution_2876 v2
du_constitution_2876 ::
  T_GeneralizeTel_43429 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1062
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2718
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2734
            (coe d_'46'generalizedField'45'nes_43425 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2232 ->
  T_GeneralizeTel_43429 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2878 ~v0 ~v1 v2 = du_pparams_2878 v2
du_pparams_2878 ::
  T_GeneralizeTel_43429 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1066
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2718
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2734
            (coe d_'46'generalizedField'45'nes_43425 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_43421 ::
  T_GeneralizeTel_43429 -> T_ChainState_2666
d_'46'generalizedField'45's_43421 v0
  = case coe v0 of
      C_mkGeneralizeTel_43431 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_43423 ::
  T_GeneralizeTel_43429 -> T_Block_2674
d_'46'generalizedField'45'b_43423 v0
  = case coe v0 of
      C_mkGeneralizeTel_43431 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_43425 ::
  T_GeneralizeTel_43429 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2724
d_'46'generalizedField'45'nes_43425 v0
  = case coe v0 of
      C_mkGeneralizeTel_43431 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_43427 ::
  T_GeneralizeTel_43429 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2484
d_'46'generalizedField'45'ls''_43427 v0
  = case coe v0 of
      C_mkGeneralizeTel_43431 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_43429 a0 a1 = ()
data T_GeneralizeTel_43429
  = C_mkGeneralizeTel_43431 T_ChainState_2666 T_Block_2674
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2724
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2484
