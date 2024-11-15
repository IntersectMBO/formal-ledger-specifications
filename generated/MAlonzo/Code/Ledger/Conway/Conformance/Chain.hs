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
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Credential
d_Credential_48 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_82 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_82 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
-- _.Slot
d_Slot_338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_338 = erased
-- _.Tx
d_Tx_368 a0 = ()
-- _.VDeleg
d_VDeleg_388 a0 = ()
-- _.epoch
d_epoch_438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_438 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
-- _.GovernanceActions.VDeleg
d_VDeleg_794 a0 = ()
-- _.Tx.body
d_body_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
d_body_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0)
-- _.Tx.isValid
d_isValid_1402 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Bool
d_isValid_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v0)
-- _.Tx.txAD
d_txAD_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Maybe AgdaAny
d_txAD_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2686 (coe v0)
-- _.Tx.wits
d_wits_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650
d_wits_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1578 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2136 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2160 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2670] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2160 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1578 = erased
-- Ledger.Conway.Conformance.Chain._.LEnv
d_LEnv_1586 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1588 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LEnv.enactState
d_enactState_1608 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2136 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_1608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_enactState_2154
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.pparams
d_pparams_1610 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2136 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2152
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.ppolicy
d_ppolicy_1612 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2136 ->
  Maybe AgdaAny
d_ppolicy_1612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_ppolicy_2150
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.slot
d_slot_1614 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2136 ->
  AgdaAny
d_slot_1614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2148 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.treasury
d_treasury_1616 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2136 ->
  Integer
d_treasury_1616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_treasury_2156
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1620 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2160 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_1620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2172
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1622 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2160 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2170 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1624 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2160 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_2010
d_utxoSt_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2168
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.StakeDistrs
d_StakeDistrs_1656 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1740 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1976
      (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1892 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_1906 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_1968 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2328 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2304
d_epochState_1968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2338
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_1970 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2328 ->
  AgdaAny
d_lastEpoch_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2336
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_1972 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2328 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2244
d_ru_1972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2340 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2052 v0 ~v1
  = du_DecEq'45'DepositPurpose_2052 v0
du_DecEq'45'DepositPurpose_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2052 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848 (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_2056 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2246 a0 a1 = ()
newtype T_ChainState_2246
  = C_ChainState'46'constructor_4005 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2328
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2250 ::
  T_ChainState_2246 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2328
d_newEpochState_2250 v0
  = case coe v0 of
      C_ChainState'46'constructor_4005 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2252 a0 a1 = ()
data T_Block_2252
  = C_Block'46'constructor_4063 [MAlonzo.Code.Ledger.Transaction.T_Tx_2670]
                                AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2258 ::
  T_Block_2252 -> [MAlonzo.Code.Ledger.Transaction.T_Tx_2670]
d_ts_2258 v0
  = case coe v0 of
      C_Block'46'constructor_4063 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2260 :: T_Block_2252 -> AgdaAny
d_slot_2260 v0
  = case coe v0 of
      C_Block'46'constructor_4063 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2272 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2272 v0 v2 v3 v4
du_maybePurpose_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2272 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0)))
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
d_maybePurpose'45'prop_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2304 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2346 v0 ~v1 v2 v3 = du_filterPurpose_2346 v0 v2 v3
du_filterPurpose_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2346 v0 v1 v2
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
         (coe du_maybePurpose_2272 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2160 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2360 v0 ~v1 v2
  = du_govActionDeposits_2360 v0 v2
du_govActionDeposits_2360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2160 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2360 v0 v1
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
            MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))))
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
                     MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_7003 v5 v6 v7 v8 v9
                       -> case coe v6 of
                            MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3243 v10 v11
                              -> coe
                                   MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1060
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2172
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
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1248
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1060
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2172
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
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1066
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2172
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1066
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2172
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2170
               (coe v1))))
-- Ledger.Conway.Conformance.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2416 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2160 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1972
d_calculateStakeDistrs_2416 v0 ~v1 v2
  = du_calculateStakeDistrs_2416 v0 v2
du_calculateStakeDistrs_2416 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2160 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1972
du_calculateStakeDistrs_2416 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11371
      (coe du_govActionDeposits_2360 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2466 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2466
  = C_CHAIN_2510 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2328
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2614
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_41395 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2328
d_newEpochState_2470 ~v0 ~v1 v2 = du_newEpochState_2470 v2
du_newEpochState_2470 ::
  T_GeneralizeTel_41395 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2328
du_newEpochState_2470 v0
  = coe
      d_newEpochState_2250
      (coe d_'46'generalizedField'45's_41387 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_41395 -> AgdaAny
d_slot_2474 ~v0 ~v1 v2 = du_slot_2474 v2
du_slot_2474 :: T_GeneralizeTel_41395 -> AgdaAny
du_slot_2474 v0
  = coe d_slot_2260 (coe d_'46'generalizedField'45'b_41389 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_41395 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2670]
d_ts_2476 ~v0 ~v1 v2 = du_ts_2476 v2
du_ts_2476 ::
  T_GeneralizeTel_41395 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2670]
du_ts_2476 v0
  = coe d_ts_2258 (coe d_'46'generalizedField'45'b_41389 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_41395 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2304
d_epochState_2480 ~v0 ~v1 v2 = du_epochState_2480 v2
du_epochState_2480 ::
  T_GeneralizeTel_41395 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2304
du_epochState_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2338
      (coe d_'46'generalizedField'45'nes_41391 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2488 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_41395 -> MAlonzo.Code.Ledger.PParams.T_Acnt_146
d_acnt_2488 ~v0 ~v1 v2 = du_acnt_2488 v2
du_acnt_2488 ::
  T_GeneralizeTel_41395 -> MAlonzo.Code.Ledger.PParams.T_Acnt_146
du_acnt_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2316
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2338
         (coe d_'46'generalizedField'45'nes_41391 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2490 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_41395 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_es_2490 ~v0 ~v1 v2 = du_es_2490 v2
du_es_2490 ::
  T_GeneralizeTel_41395 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_es_2490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2322
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2338
         (coe d_'46'generalizedField'45'nes_41391 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_41395 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2160
d_ls_2494 ~v0 ~v1 v2 = du_ls_2494 v2
du_ls_2494 ::
  T_GeneralizeTel_41395 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2160
du_ls_2494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2320
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2338
         (coe d_'46'generalizedField'45'nes_41391 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_41395 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2502 ~v0 ~v1 v2 = du_constitution_2502 v2
du_constitution_2502 ::
  T_GeneralizeTel_41395 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2502 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_constitution_866
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2322
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2338
            (coe d_'46'generalizedField'45'nes_41391 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_41395 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2504 ~v0 ~v1 v2 = du_pparams_2504 v2
du_pparams_2504 ::
  T_GeneralizeTel_41395 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2504 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_pparams_870
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2322
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2338
            (coe d_'46'generalizedField'45'nes_41391 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_41387 ::
  T_GeneralizeTel_41395 -> T_ChainState_2246
d_'46'generalizedField'45's_41387 v0
  = case coe v0 of
      C_mkGeneralizeTel_41397 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_41389 ::
  T_GeneralizeTel_41395 -> T_Block_2252
d_'46'generalizedField'45'b_41389 v0
  = case coe v0 of
      C_mkGeneralizeTel_41397 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_41391 ::
  T_GeneralizeTel_41395 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2328
d_'46'generalizedField'45'nes_41391 v0
  = case coe v0 of
      C_mkGeneralizeTel_41397 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_41393 ::
  T_GeneralizeTel_41395 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2160
d_'46'generalizedField'45'ls''_41393 v0
  = case coe v0 of
      C_mkGeneralizeTel_41397 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_41395 a0 a1 = ()
data T_GeneralizeTel_41395
  = C_mkGeneralizeTel_41397 T_ChainState_2246 T_Block_2252
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2328
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2160
