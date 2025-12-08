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
d_DecEq'45'Credential_98 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_98 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
            (coe v0)))
-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_230 ~v0
  = du_HasCast'45'HashProtected_230
du_HasCast'45'HashProtected_230 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_970
-- _.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_232 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_232
du_HasCast'45'HashProtected'45'MaybeScriptHash_232 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_232
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_972
-- _.Slot
d_Slot_532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_532 = erased
-- _.Tx
d_Tx_560 a0 = ()
-- _.VDeleg
d_VDeleg_592 a0 = ()
-- _.epoch
d_epoch_648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_648 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
         (coe v0))
-- _.GovActions.VDeleg
d_VDeleg_1052 a0 = ()
-- _.Tx.body
d_body_1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254
d_body_1810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
      (coe v0)
-- _.Tx.isValid
d_isValid_1812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Bool
d_isValid_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3452
      (coe v0)
-- _.Tx.txAD
d_txAD_1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Maybe AgdaAny
d_txAD_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3454
      (coe v0)
-- _.Tx.txsize
d_txsize_1816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Integer
d_txsize_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3450
      (coe v0)
-- _.Tx.wits
d_wits_1818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3412
d_wits_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3448
      (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2790 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2584 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2584 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1992 = erased
-- Ledger.Conway.Conformance.Chain._.HasCast-LEnv
d_HasCast'45'LEnv_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_1996 ~v0 ~v1 = du_HasCast'45'LEnv_1996
du_HasCast'45'LEnv_1996 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_1996
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2880
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_2008 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_2040 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2584 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546
d_certState_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_2042 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2584 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2594 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_2044 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2584 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
d_utxoSt_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2592
      (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2308 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_2330 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.bcur
d_bcur_2380 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4766 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_bcur_4784 (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.bprev
d_bprev_2382 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4766 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_2382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_bprev_4782 (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_2384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4766 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4740
d_epochState_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4786
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2386 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4766 ->
  AgdaAny
d_lastEpoch_2386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_4780
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.pd
d_pd_2388 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4766 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_pd_4790 (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_2390 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4766 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2892
d_ru_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_4788 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2466 v0 ~v1
  = du_DecEq'45'DepositPurpose_2466 v0
du_DecEq'45'DepositPurpose_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2466 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
         (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_2472 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2844 a0 a1 = ()
newtype T_ChainState_2844
  = C_constructor_2850 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4766
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2848 ::
  T_ChainState_2844 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4766
d_newEpochState_2848 v0
  = case coe v0 of
      C_constructor_2850 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2852 a0 a1 = ()
data T_Block_2852
  = C_constructor_2862 [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434]
                       AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2858 ::
  T_Block_2852 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434]
d_ts_2858 v0
  = case coe v0 of
      C_constructor_2862 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2860 :: T_Block_2852 -> AgdaAny
d_slot_2860 v0
  = case coe v0 of
      C_constructor_2862 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2874 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2874 v0 v2 v3 v4
du_maybePurpose_2874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2874 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
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
d_maybePurpose'45'prop_2906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1114 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1114 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2906 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2948 v0 ~v1 v2 v3 = du_filterPurpose_2948 v0 v2 v3
du_filterPurpose_2948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2948 v0 v1 v2
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
         (coe du_maybePurpose_2874 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2584 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2962 v0 ~v1 v2
  = du_govActionDeposits_2962 v0 v2
du_govActionDeposits_2962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2584 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2962 v0 v1
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
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1108
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
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
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1026 v5 v6 v7 v8 v9
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
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1520
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1520
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1526
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1122
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1122
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1526
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2594
               (coe v1))))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__3020 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__3020
  = C_CHAIN_3070 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4766
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__5108
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_3024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_46083 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4766
d_newEpochState_3024 ~v0 ~v1 v2 = du_newEpochState_3024 v2
du_newEpochState_3024 ::
  T_GeneralizeTel_46083 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4766
du_newEpochState_3024 v0
  = coe
      d_newEpochState_2848
      (coe d_'46'generalizedField'45's_46075 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_3028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_46083 -> AgdaAny
d_slot_3028 ~v0 ~v1 v2 = du_slot_3028 v2
du_slot_3028 :: T_GeneralizeTel_46083 -> AgdaAny
du_slot_3028 v0
  = coe d_slot_2860 (coe d_'46'generalizedField'45'b_46077 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_46083 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434]
d_ts_3030 ~v0 ~v1 v2 = du_ts_3030 v2
du_ts_3030 ::
  T_GeneralizeTel_46083 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434]
du_ts_3030 v0
  = coe d_ts_2858 (coe d_'46'generalizedField'45'b_46077 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_3038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_46083 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4740
d_epochState_3038 ~v0 ~v1 v2 = du_epochState_3038 v2
du_epochState_3038 ::
  T_GeneralizeTel_46083 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4740
du_epochState_3038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4786
      (coe d_'46'generalizedField'45'nes_46079 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_3048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_46083 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_166
d_acnt_3048 ~v0 ~v1 v2 = du_acnt_3048 v2
du_acnt_3048 ::
  T_GeneralizeTel_46083 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_166
du_acnt_3048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_4752
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4786
         (coe d_'46'generalizedField'45'nes_46079 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_3050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_46083 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110
d_es_3050 ~v0 ~v1 v2 = du_es_3050 v2
du_es_3050 ::
  T_GeneralizeTel_46083 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110
du_es_3050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_4758
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4786
         (coe d_'46'generalizedField'45'nes_46079 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_3054 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_46083 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2584
d_ls_3054 ~v0 ~v1 v2 = du_ls_3054 v2
du_ls_3054 ::
  T_GeneralizeTel_46083 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2584
du_ls_3054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_4756
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4786
         (coe d_'46'generalizedField'45'nes_46079 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_3062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_46083 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_3062 ~v0 ~v1 v2 = du_constitution_3062 v2
du_constitution_3062 ::
  T_GeneralizeTel_46083 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_3062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1124
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_4758
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4786
            (coe d_'46'generalizedField'45'nes_46079 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_46083 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3064 ~v0 ~v1 v2 = du_pparams_3064 v2
du_pparams_3064 ::
  T_GeneralizeTel_46083 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_3064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1128
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_4758
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4786
            (coe d_'46'generalizedField'45'nes_46079 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_46075 ::
  T_GeneralizeTel_46083 -> T_ChainState_2844
d_'46'generalizedField'45's_46075 v0
  = case coe v0 of
      C_mkGeneralizeTel_46085 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_46077 ::
  T_GeneralizeTel_46083 -> T_Block_2852
d_'46'generalizedField'45'b_46077 v0
  = case coe v0 of
      C_mkGeneralizeTel_46085 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_46079 ::
  T_GeneralizeTel_46083 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4766
d_'46'generalizedField'45'nes_46079 v0
  = case coe v0 of
      C_mkGeneralizeTel_46085 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_46081 ::
  T_GeneralizeTel_46083 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2584
d_'46'generalizedField'45'ls''_46081 v0
  = case coe v0 of
      C_mkGeneralizeTel_46085 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_46083 a0 a1 = ()
data T_GeneralizeTel_46083
  = C_mkGeneralizeTel_46085 T_ChainState_2844 T_Block_2852
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4766
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2584
