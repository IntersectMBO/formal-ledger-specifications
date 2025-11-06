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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Core.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Core.Specification.Transaction
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _.Credential
d_Credential_58 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_92 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_92 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
            (coe v0)))
-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_222 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_222 ~v0
  = du_HasCast'45'HashProtected_222
du_HasCast'45'HashProtected_222 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_222 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'HashProtected_972
-- _.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_224 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_224 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_224
du_HasCast'45'HashProtected'45'MaybeScriptHash_224 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_224
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_974
-- _.Slot
d_Slot_486 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_486 = erased
-- _.VDeleg
d_VDeleg_534 a0 = ()
-- _.epoch
d_epoch_586 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_586 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
         (coe v0))
-- _.GovActions.VDeleg
d_VDeleg_978 a0 = ()
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2096 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2096 v0 ~v1
  = du_DecEq'45'DepositPurpose_2096 v0
du_DecEq'45'DepositPurpose_2096 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2096 v0
  = let v1
          = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1132
         (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_2102 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2486 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_2504 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_2546 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2754 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2730
d_epochState_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2764
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2548 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2754 ->
  AgdaAny
d_lastEpoch_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2762
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_2550 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2754 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2760
d_ru_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2766 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2554 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2574 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2574 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2554 = erased
-- Ledger.Conway.Conformance.Chain._.HasCast-LEnv
d_HasCast'45'LEnv_2558 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2558 ~v0 ~v1 = du_HasCast'45'LEnv_2558
du_HasCast'45'LEnv_2558 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2558
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2858
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_2570 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_2602 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2574 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
d_certState_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2586
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_2604 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2574 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2584 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_2606 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2574 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_utxoSt_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2582
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.Tx
d_Tx_2648 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.Tx.body
d_body_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174
d_body_2684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.Tx.isValid
d_isValid_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Bool
d_isValid_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_2350
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.Tx.txAD
d_txAD_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Maybe AgdaAny
d_txAD_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_2352
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.Tx.txsize
d_txsize_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Integer
d_txsize_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_2348
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.Tx.wits
d_wits_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262
d_wits_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
      (coe v0)
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2808 a0 a1 = ()
newtype T_ChainState_2808
  = C_constructor_2814 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2754
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2812 ::
  T_ChainState_2808 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2754
d_newEpochState_2812 v0
  = case coe v0 of
      C_constructor_2814 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2816 a0 a1 = ()
data T_Block_2816
  = C_constructor_2826 [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332]
                       AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2822 ::
  T_Block_2816 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332]
d_ts_2822 v0
  = case coe v0 of
      C_constructor_2826 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2824 :: T_Block_2816 -> AgdaAny
d_slot_2824 v0
  = case coe v0 of
      C_constructor_2826 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2838 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2838 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2838 v0 v2 v3 v4
du_maybePurpose_2838 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2838 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1132
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
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
d_maybePurpose'45'prop_2870 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1100 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2870 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2912 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2912 v0 ~v1 v2 v3 = du_filterPurpose_2912 v0 v2 v3
du_filterPurpose_2912 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2912 v0 v1 v2
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
         (coe du_maybePurpose_2838 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2926 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2574 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2926 v0 ~v1 v2
  = du_govActionDeposits_2926 v0 v2
du_govActionDeposits_2926 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2574 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2926 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__550
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
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
                     MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_constructor_1028 v5 v6 v7 v8 v9
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
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1518
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1552
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2586
                                               (coe v1))))
                                      (coe v11)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1518
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1552
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2586
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
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1524
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1552
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2586
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1108
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1132
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1108
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1524
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1552
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2586
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2584
               (coe v1))))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2984 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2984
  = C_CHAIN_3028 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2754
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__3000
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2988 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_46105 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2754
d_newEpochState_2988 ~v0 ~v1 v2 = du_newEpochState_2988 v2
du_newEpochState_2988 ::
  T_GeneralizeTel_46105 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2754
du_newEpochState_2988 v0
  = coe
      d_newEpochState_2812
      (coe d_'46'generalizedField'45's_46097 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2992 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_46105 -> AgdaAny
d_slot_2992 ~v0 ~v1 v2 = du_slot_2992 v2
du_slot_2992 :: T_GeneralizeTel_46105 -> AgdaAny
du_slot_2992 v0
  = coe d_slot_2824 (coe d_'46'generalizedField'45'b_46099 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2994 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_46105 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332]
d_ts_2994 ~v0 ~v1 v2 = du_ts_2994 v2
du_ts_2994 ::
  T_GeneralizeTel_46105 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332]
du_ts_2994 v0
  = coe d_ts_2822 (coe d_'46'generalizedField'45'b_46099 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2998 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_46105 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2730
d_epochState_2998 ~v0 ~v1 v2 = du_epochState_2998 v2
du_epochState_2998 ::
  T_GeneralizeTel_46105 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2730
du_epochState_2998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2764
      (coe d_'46'generalizedField'45'nes_46101 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_3006 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_46105 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168
d_acnt_3006 ~v0 ~v1 v2 = du_acnt_3006 v2
du_acnt_3006 ::
  T_GeneralizeTel_46105 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168
du_acnt_3006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2742
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2764
         (coe d_'46'generalizedField'45'nes_46101 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_3008 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_46105 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
d_es_3008 ~v0 ~v1 v2 = du_es_3008 v2
du_es_3008 ::
  T_GeneralizeTel_46105 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
du_es_3008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2748
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2764
         (coe d_'46'generalizedField'45'nes_46101 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_3012 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_46105 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2574
d_ls_3012 ~v0 ~v1 v2 = du_ls_3012 v2
du_ls_3012 ::
  T_GeneralizeTel_46105 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2574
du_ls_3012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2746
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2764
         (coe d_'46'generalizedField'45'nes_46101 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_3020 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_46105 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_3020 ~v0 ~v1 v2 = du_constitution_3020 v2
du_constitution_3020 ::
  T_GeneralizeTel_46105 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_3020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1110
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2748
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2764
            (coe d_'46'generalizedField'45'nes_46101 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_3022 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_46105 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3022 ~v0 ~v1 v2 = du_pparams_3022 v2
du_pparams_3022 ::
  T_GeneralizeTel_46105 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1114
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2748
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2764
            (coe d_'46'generalizedField'45'nes_46101 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_46097 ::
  T_GeneralizeTel_46105 -> T_ChainState_2808
d_'46'generalizedField'45's_46097 v0
  = case coe v0 of
      C_mkGeneralizeTel_46107 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_46099 ::
  T_GeneralizeTel_46105 -> T_Block_2816
d_'46'generalizedField'45'b_46099 v0
  = case coe v0 of
      C_mkGeneralizeTel_46107 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_46101 ::
  T_GeneralizeTel_46105 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2754
d_'46'generalizedField'45'nes_46101 v0
  = case coe v0 of
      C_mkGeneralizeTel_46107 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_46103 ::
  T_GeneralizeTel_46105 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2574
d_'46'generalizedField'45'ls''_46103 v0
  = case coe v0 of
      C_mkGeneralizeTel_46107 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_46105 a0 a1 = ()
data T_GeneralizeTel_46105
  = C_mkGeneralizeTel_46107 T_ChainState_2808 T_Block_2816
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2754
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2574
