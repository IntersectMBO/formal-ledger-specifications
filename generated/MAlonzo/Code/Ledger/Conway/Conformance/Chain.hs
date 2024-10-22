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
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Credential
d_Credential_72 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_118 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_118 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
            (coe v0)))
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_120 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
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
d_epoch_528 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_528 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
         (coe v0))
-- _.GovernanceActions.VDeleg
d_VDeleg_1006 a0 = ()
-- _.Tx.body
d_body_1776 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066
d_body_1776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
      (coe v0)
-- _.Tx.isValid
d_isValid_1778 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Bool
d_isValid_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_3182
      (coe v0)
-- _.Tx.txAD
d_txAD_1780 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Maybe AgdaAny
d_txAD_1780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_3184
      (coe v0)
-- _.Tx.wits
d_wits_1782 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_3148
d_wits_1782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_3180
      (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1938 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2254 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2278 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2278 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1938 = erased
-- Ledger.Conway.Conformance.Chain._.LEnv
d_LEnv_1946 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1948 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LEnv.enactState
d_enactState_1964 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2254 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_enactState_1964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_enactState_2272
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.pparams
d_pparams_1966 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2254 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2270
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.ppolicy
d_ppolicy_1968 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2254 ->
  Maybe AgdaAny
d_ppolicy_1968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_ppolicy_2268
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.slot
d_slot_1970 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2254 ->
  AgdaAny
d_slot_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2266 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.treasury
d_treasury_1972 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2254 ->
  Integer
d_treasury_1972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_treasury_2274
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1976 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_certState_1976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2290
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1978 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2278 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2288 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1980 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_2098
d_utxoSt_1980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2286
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.StakeDistrs
d_StakeDistrs_2012 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_2092 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_2124 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_2128
      (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2248 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_2262 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_2324 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2436 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2412
d_epochState_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2446
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2326 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2436 ->
  AgdaAny
d_lastEpoch_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2444
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_2328 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2436 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2352
d_ru_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2448 (coe v0)
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2358 a0 a1 = ()
newtype T_ChainState_2358
  = C_ChainState'46'constructor_3927 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2436
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2362 ::
  T_ChainState_2358 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2436
d_newEpochState_2362 v0
  = case coe v0 of
      C_ChainState'46'constructor_3927 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2364 a0 a1 = ()
data T_Block_2364
  = C_Block'46'constructor_3985 [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168]
                                AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2370 ::
  T_Block_2364 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168]
d_ts_2370 v0
  = case coe v0 of
      C_Block'46'constructor_3985 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2372 :: T_Block_2364 -> AgdaAny
d_slot_2372 v0
  = case coe v0 of
      C_Block'46'constructor_3985 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2384 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2384 v0 v2 v3 v4
du_maybePurpose_2384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2384 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
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
d_maybePurpose'45'prop_2416 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2416 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2458 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2458 v0 ~v1 v2 v3 = du_filterPurpose_2458 v0 v2 v3
du_filterPurpose_2458 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2458 v0 v1 v2
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
         (coe du_maybePurpose_2384 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2472 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2472 v0 ~v1 v2
  = du_govActionDeposits_2472 v0 v2
du_govActionDeposits_2472 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2472 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
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
                     MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.C_GovActionState'46'constructor_6761 v5 v6 v7 v8 v9
                       -> case coe v6 of
                            MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3193 v10 v11
                              -> coe
                                   MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2290
                                               (coe v1))))
                                      (coe v11)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased
                                            (coe
                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2290
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
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2290
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2290
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2288
               (coe v1))))
-- Ledger.Conway.Conformance.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2528 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_2124
d_calculateStakeDistrs_2528 v0 ~v1 v2
  = du_calculateStakeDistrs_2528 v0 v2
du_calculateStakeDistrs_2528 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_2124
du_calculateStakeDistrs_2528 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11637
      (coe du_govActionDeposits_2472 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2578 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2578
  = C_CHAIN_2622 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2436
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2722
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2582 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_40967 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2436
d_newEpochState_2582 ~v0 ~v1 v2 = du_newEpochState_2582 v2
du_newEpochState_2582 ::
  T_GeneralizeTel_40967 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2436
du_newEpochState_2582 v0
  = coe
      d_newEpochState_2362
      (coe d_'46'generalizedField'45's_40959 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2586 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_40967 -> AgdaAny
d_slot_2586 ~v0 ~v1 v2 = du_slot_2586 v2
du_slot_2586 :: T_GeneralizeTel_40967 -> AgdaAny
du_slot_2586 v0
  = coe d_slot_2372 (coe d_'46'generalizedField'45'b_40961 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2588 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_40967 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168]
d_ts_2588 ~v0 ~v1 v2 = du_ts_2588 v2
du_ts_2588 ::
  T_GeneralizeTel_40967 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168]
du_ts_2588 v0
  = coe d_ts_2370 (coe d_'46'generalizedField'45'b_40961 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2592 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_40967 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2412
d_epochState_2592 ~v0 ~v1 v2 = du_epochState_2592 v2
du_epochState_2592 ::
  T_GeneralizeTel_40967 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2412
du_epochState_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2446
      (coe d_'46'generalizedField'45'nes_40963 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2600 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_40967 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150
d_acnt_2600 ~v0 ~v1 v2 = du_acnt_2600 v2
du_acnt_2600 ::
  T_GeneralizeTel_40967 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150
du_acnt_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2424
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2446
         (coe d_'46'generalizedField'45'nes_40963 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2602 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_40967 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_es_2602 ~v0 ~v1 v2 = du_es_2602 v2
du_es_2602 ::
  T_GeneralizeTel_40967 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
du_es_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2430
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2446
         (coe d_'46'generalizedField'45'nes_40963 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2606 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_40967 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2278
d_ls_2606 ~v0 ~v1 v2 = du_ls_2606 v2
du_ls_2606 ::
  T_GeneralizeTel_40967 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2278
du_ls_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2428
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2446
         (coe d_'46'generalizedField'45'nes_40963 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2614 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_40967 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2614 ~v0 ~v1 v2 = du_constitution_2614 v2
du_constitution_2614 ::
  T_GeneralizeTel_40967 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2430
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2446
            (coe d_'46'generalizedField'45'nes_40963 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2616 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_40967 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2616 ~v0 ~v1 v2 = du_pparams_2616 v2
du_pparams_2616 ::
  T_GeneralizeTel_40967 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2430
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2446
            (coe d_'46'generalizedField'45'nes_40963 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_40959 ::
  T_GeneralizeTel_40967 -> T_ChainState_2358
d_'46'generalizedField'45's_40959 v0
  = case coe v0 of
      C_mkGeneralizeTel_40969 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_40961 ::
  T_GeneralizeTel_40967 -> T_Block_2364
d_'46'generalizedField'45'b_40961 v0
  = case coe v0 of
      C_mkGeneralizeTel_40969 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_40963 ::
  T_GeneralizeTel_40967 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2436
d_'46'generalizedField'45'nes_40963 v0
  = case coe v0 of
      C_mkGeneralizeTel_40969 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_40965 ::
  T_GeneralizeTel_40967 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2278
d_'46'generalizedField'45'ls''_40965 v0
  = case coe v0 of
      C_mkGeneralizeTel_40969 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_40967 a0 a1 = ()
data T_GeneralizeTel_40967
  = C_mkGeneralizeTel_40969 T_ChainState_2358 T_Block_2364
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2436
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2278
