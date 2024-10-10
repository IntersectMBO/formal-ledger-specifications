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
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Interface.HasSingleton
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- _.Credential
d_Credential_72 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_118 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
            (coe v0)))
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_120 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
         (coe v0))
-- _.DepositPurpose
d_DepositPurpose_188 a0 = ()
-- _.Slot
d_Slot_414 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_414 = erased
-- _.Tx
d_Tx_444 a0 = ()
-- _.VDeleg
d_VDeleg_464 a0 = ()
-- _.epoch
d_epoch_530 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_epoch_72
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
         (coe v0))
-- _.GovernanceActions.VDeleg
d_VDeleg_1008 a0 = ()
-- _.Tx.body
d_body_1632 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806
d_body_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
      (coe v0)
-- _.Tx.isValid
d_isValid_1634 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  Bool
d_isValid_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2922
      (coe v0)
-- _.Tx.txAD
d_txAD_1636 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  Maybe AgdaAny
d_txAD_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_2924
      (coe v0)
-- _.Tx.wits
d_wits_1638 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2888
d_wits_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
      (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1808 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1808 = erased
-- Ledger.Conway.Conformance.Chain._.LEnv
d_LEnv_1816 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1818 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LEnv.enactState
d_enactState_1834 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_enactState_2142
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.pparams
d_pparams_1836 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2140
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.ppolicy
d_ppolicy_1838 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  Maybe AgdaAny
d_ppolicy_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_ppolicy_2138
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.slot
d_slot_1840 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  AgdaAny
d_slot_1840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2136 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.treasury
d_treasury_1842 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2124 ->
  Integer
d_treasury_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_treasury_2144
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1846 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_certState_1846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1848 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1850 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1968
d_utxoSt_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.StakeDistrs
d_StakeDistrs_1882 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1978 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1998
      (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2134 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_2148 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_2210 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2322 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298
d_epochState_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2332
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2212 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2322 ->
  AgdaAny
d_lastEpoch_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2330
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_2214 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2322 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2238
d_ru_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2334 (coe v0)
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2244 a0 a1 = ()
newtype T_ChainState_2244
  = C_ChainState'46'constructor_3809 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2322
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2248 ::
  T_ChainState_2244 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2322
d_newEpochState_2248 v0
  = case coe v0 of
      C_ChainState'46'constructor_3809 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2250 a0 a1 = ()
data T_Block_2250
  = C_Block'46'constructor_3867 [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908]
                                AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2256 ::
  T_Block_2250 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908]
d_ts_2256 v0
  = case coe v0 of
      C_Block'46'constructor_3867 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2258 :: T_Block_2250 -> AgdaAny
d_slot_2258 v0
  = case coe v0 of
      C_Block'46'constructor_3867 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2270 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2270 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2270 v0 v2 v3 v4
du_maybePurpose_2270 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2270 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
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
d_maybePurpose'45'prop_2302 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2302 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2344 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2344 v0 ~v1 v2 v3 = du_filterPurpose_2344 v0 v2 v3
du_filterPurpose_2344 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2344 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_858
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1284
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe du_maybePurpose_2270 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2358 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2358 v0 ~v1 v2
  = du_govActionDeposits_2358 v0 v2
du_govActionDeposits_2358 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2358 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__504
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
               (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_568
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_564
         (MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                -> case coe v4 of
                     MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_GovActionState'46'constructor_6761 v5 v6 v7 v8 v9
                       -> case coe v6 of
                            MAlonzo.Code.Ledger.Conway.Conformance.Address.C_RwdAddr'46'constructor_3193 v10 v11
                              -> coe
                                   MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1726
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                         (coe
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                               (coe v1))))
                                      (coe v11)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                            erased
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                     (coe v0)))))
                                         (coe v11)
                                         (let v12
                                                = MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Rel.du_dom_340 v12
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                           (coe v1)))))))))
                                   (coe
                                      (\ v12 ->
                                         coe
                                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 ()
                                           erased () erased
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1726
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                    (coe v3))
                                                 (let v13
                                                        = MAlonzo.Code.Axiom.Set.d_th_1458
                                                            (coe
                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Rel.du_dom_340 v13
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_538
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                                   (coe v1)))))))))
                                           (\ v13 ->
                                              coe
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                (coe
                                                   MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_312
                                                   (coe
                                                      MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_322
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v12) (coe v13))))))
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError)
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_416
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158
               (coe v1))))
-- Ledger.Conway.Conformance.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2414 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1994
d_calculateStakeDistrs_2414 v0 ~v1 v2
  = du_calculateStakeDistrs_2414 v0 v2
du_calculateStakeDistrs_2414 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1994
du_calculateStakeDistrs_2414 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11429
      (coe du_govActionDeposits_2358 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2464 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2464
  = C_CHAIN_2508 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2322
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2608
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2468 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_40849 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2322
d_newEpochState_2468 ~v0 ~v1 v2 = du_newEpochState_2468 v2
du_newEpochState_2468 ::
  T_GeneralizeTel_40849 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2322
du_newEpochState_2468 v0
  = coe
      d_newEpochState_2248
      (coe d_'46'generalizedField'45's_40841 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2472 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_40849 -> AgdaAny
d_slot_2472 ~v0 ~v1 v2 = du_slot_2472 v2
du_slot_2472 :: T_GeneralizeTel_40849 -> AgdaAny
du_slot_2472 v0
  = coe d_slot_2258 (coe d_'46'generalizedField'45'b_40843 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2474 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_40849 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908]
d_ts_2474 ~v0 ~v1 v2 = du_ts_2474 v2
du_ts_2474 ::
  T_GeneralizeTel_40849 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908]
du_ts_2474 v0
  = coe d_ts_2256 (coe d_'46'generalizedField'45'b_40843 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2478 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_40849 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298
d_epochState_2478 ~v0 ~v1 v2 = du_epochState_2478 v2
du_epochState_2478 ::
  T_GeneralizeTel_40849 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298
du_epochState_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2332
      (coe d_'46'generalizedField'45'nes_40845 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2486 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_40849 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150
d_acnt_2486 ~v0 ~v1 v2 = du_acnt_2486 v2
du_acnt_2486 ::
  T_GeneralizeTel_40849 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150
du_acnt_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2310
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2332
         (coe d_'46'generalizedField'45'nes_40845 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2488 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_40849 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_es_2488 ~v0 ~v1 v2 = du_es_2488 v2
du_es_2488 ::
  T_GeneralizeTel_40849 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
du_es_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2316
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2332
         (coe d_'46'generalizedField'45'nes_40845 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2492 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_40849 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148
d_ls_2492 ~v0 ~v1 v2 = du_ls_2492 v2
du_ls_2492 ::
  T_GeneralizeTel_40849 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148
du_ls_2492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2332
         (coe d_'46'generalizedField'45'nes_40845 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2500 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_40849 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2500 ~v0 ~v1 v2 = du_constitution_2500 v2
du_constitution_2500 ::
  T_GeneralizeTel_40849 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2316
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2332
            (coe d_'46'generalizedField'45'nes_40845 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2502 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_40849 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2502 ~v0 ~v1 v2 = du_pparams_2502 v2
du_pparams_2502 ::
  T_GeneralizeTel_40849 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2316
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2332
            (coe d_'46'generalizedField'45'nes_40845 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_40841 ::
  T_GeneralizeTel_40849 -> T_ChainState_2244
d_'46'generalizedField'45's_40841 v0
  = case coe v0 of
      C_mkGeneralizeTel_40851 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_40843 ::
  T_GeneralizeTel_40849 -> T_Block_2250
d_'46'generalizedField'45'b_40843 v0
  = case coe v0 of
      C_mkGeneralizeTel_40851 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_40845 ::
  T_GeneralizeTel_40849 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2322
d_'46'generalizedField'45'nes_40845 v0
  = case coe v0 of
      C_mkGeneralizeTel_40851 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_40847 ::
  T_GeneralizeTel_40849 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148
d_'46'generalizedField'45'ls''_40847 v0
  = case coe v0 of
      C_mkGeneralizeTel_40851 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_40849 a0 a1 = ()
data T_GeneralizeTel_40849
  = C_mkGeneralizeTel_40851 T_ChainState_2244 T_Block_2250
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2322
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148
