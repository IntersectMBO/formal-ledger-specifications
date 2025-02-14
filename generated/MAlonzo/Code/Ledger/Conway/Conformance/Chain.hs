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
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0)))
-- _.Slot
d_Slot_328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_328 = erased
-- _.Tx
d_Tx_356 a0 = ()
-- _.VDeleg
d_VDeleg_376 a0 = ()
-- _.epoch
d_epoch_422 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_422 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v0))
-- _.GovernanceActions.VDeleg
d_VDeleg_768 a0 = ()
-- _.Tx.body
d_body_1372 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516
d_body_1372 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0)
-- _.Tx.isValid
d_isValid_1374 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Bool
d_isValid_1374 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2632 (coe v0)
-- _.Tx.txAD
d_txAD_1376 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Maybe AgdaAny
d_txAD_1376 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2634 (coe v0)
-- _.Tx.wits
d_wits_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2598
d_wits_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1550 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2618] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1550 = erased
-- Ledger.Conway.Conformance.Chain._.LEnv
d_LEnv_1558 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1560 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LEnv.enactState
d_enactState_1578 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_1578 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2160 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.pparams
d_pparams_1580 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1580 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2158 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.ppolicy
d_ppolicy_1582 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 -> Maybe AgdaAny
d_ppolicy_1582 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2156 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.slot
d_slot_1584 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 -> AgdaAny
d_slot_1584 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2154 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LEnv.treasury
d_treasury_1586 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 -> Integer
d_treasury_1586 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2162 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1590 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070
d_certState_1590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2188
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1592 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2186 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1594 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
d_utxoSt_1594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2184
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.StakeDistrs
d_StakeDistrs_1626 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1710 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1950 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1710 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1954 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1786 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_1800 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_1862 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2244 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2220
d_epochState_1862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2254
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_1864 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2244 ->
  AgdaAny
d_lastEpoch_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2252
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_1866 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2244 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2160
d_ru_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2256 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1950 v0 ~v1
  = du_DecEq'45'DepositPurpose_1950 v0
du_DecEq'45'DepositPurpose_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1950 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822 (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_1954 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2152 a0 a1 = ()
newtype T_ChainState_2152
  = C_ChainState'46'constructor_3693 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2244
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2156 ::
  T_ChainState_2152 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2244
d_newEpochState_2156 v0
  = case coe v0 of
      C_ChainState'46'constructor_3693 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2158 a0 a1 = ()
data T_Block_2158
  = C_Block'46'constructor_3751 [MAlonzo.Code.Ledger.Transaction.T_Tx_2618]
                                AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2164 ::
  T_Block_2158 -> [MAlonzo.Code.Ledger.Transaction.T_Tx_2618]
d_ts_2164 v0
  = case coe v0 of
      C_Block'46'constructor_3751 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2166 :: T_Block_2158 -> AgdaAny
d_slot_2166 v0
  = case coe v0 of
      C_Block'46'constructor_3751 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_810 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2178 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2178 v0 v2 v3 v4
du_maybePurpose_2178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_810 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2178 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0)))
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
d_maybePurpose'45'prop_2210 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_810 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_810 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2210 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_810 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2252 v0 ~v1 v2 v3 = du_filterPurpose_2252 v0 v2 v3
du_filterPurpose_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_810 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2252 v0 v1 v2
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
         (coe du_maybePurpose_2178 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2266 v0 ~v1 v2
  = du_govActionDeposits_2266 v0 v2
du_govActionDeposits_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2266 v0 v1
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
            MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_792
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0))))
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
                     MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4191 v5 v6 v7 v8 v9
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
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1044
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2188
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
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1222
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1044
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2188
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
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1050
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2188
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Transaction.d_govStructure_2326
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1050
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2188
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2186
               (coe v1))))
-- Ledger.Conway.Conformance.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1950
d_calculateStakeDistrs_2322 v0 ~v1 v2
  = du_calculateStakeDistrs_2322 v0 v2
du_calculateStakeDistrs_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1950
du_calculateStakeDistrs_2322 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11365
      (coe du_govActionDeposits_2266 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2372 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2372
  = C_CHAIN_2416 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2244
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2530
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_40543 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2244
d_newEpochState_2376 ~v0 ~v1 v2 = du_newEpochState_2376 v2
du_newEpochState_2376 ::
  T_GeneralizeTel_40543 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2244
du_newEpochState_2376 v0
  = coe
      d_newEpochState_2156
      (coe d_'46'generalizedField'45's_40535 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2380 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_40543 -> AgdaAny
d_slot_2380 ~v0 ~v1 v2 = du_slot_2380 v2
du_slot_2380 :: T_GeneralizeTel_40543 -> AgdaAny
du_slot_2380 v0
  = coe d_slot_2166 (coe d_'46'generalizedField'45'b_40537 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_40543 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2618]
d_ts_2382 ~v0 ~v1 v2 = du_ts_2382 v2
du_ts_2382 ::
  T_GeneralizeTel_40543 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2618]
du_ts_2382 v0
  = coe d_ts_2164 (coe d_'46'generalizedField'45'b_40537 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2386 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_40543 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2220
d_epochState_2386 ~v0 ~v1 v2 = du_epochState_2386 v2
du_epochState_2386 ::
  T_GeneralizeTel_40543 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2220
du_epochState_2386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2254
      (coe d_'46'generalizedField'45'nes_40539 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_40543 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_acnt_2394 ~v0 ~v1 v2 = du_acnt_2394 v2
du_acnt_2394 ::
  T_GeneralizeTel_40543 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
du_acnt_2394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2232
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2254
         (coe d_'46'generalizedField'45'nes_40539 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2396 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_40543 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_es_2396 ~v0 ~v1 v2 = du_es_2396 v2
du_es_2396 ::
  T_GeneralizeTel_40543 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_es_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2238
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2254
         (coe d_'46'generalizedField'45'nes_40539 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2400 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_40543 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176
d_ls_2400 ~v0 ~v1 v2 = du_ls_2400 v2
du_ls_2400 ::
  T_GeneralizeTel_40543 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176
du_ls_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2236
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2254
         (coe d_'46'generalizedField'45'nes_40539 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_40543 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2408 ~v0 ~v1 v2 = du_constitution_2408 v2
du_constitution_2408 ::
  T_GeneralizeTel_40543 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2408 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_constitution_840
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2238
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2254
            (coe d_'46'generalizedField'45'nes_40539 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_40543 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2410 ~v0 ~v1 v2 = du_pparams_2410 v2
du_pparams_2410 ::
  T_GeneralizeTel_40543 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2410 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_pparams_844
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2238
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2254
            (coe d_'46'generalizedField'45'nes_40539 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_40535 ::
  T_GeneralizeTel_40543 -> T_ChainState_2152
d_'46'generalizedField'45's_40535 v0
  = case coe v0 of
      C_mkGeneralizeTel_40545 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_40537 ::
  T_GeneralizeTel_40543 -> T_Block_2158
d_'46'generalizedField'45'b_40537 v0
  = case coe v0 of
      C_mkGeneralizeTel_40545 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_40539 ::
  T_GeneralizeTel_40543 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2244
d_'46'generalizedField'45'nes_40539 v0
  = case coe v0 of
      C_mkGeneralizeTel_40545 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_40541 ::
  T_GeneralizeTel_40543 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176
d_'46'generalizedField'45'ls''_40541 v0
  = case coe v0 of
      C_mkGeneralizeTel_40545 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_40543 a0 a1 = ()
data T_GeneralizeTel_40543
  = C_mkGeneralizeTel_40545 T_ChainState_2152 T_Block_2158
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2244
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176
