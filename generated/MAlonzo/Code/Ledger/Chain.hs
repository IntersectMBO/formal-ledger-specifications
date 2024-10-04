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

module MAlonzo.Code.Ledger.Chain where

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
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Interface.HasSingleton
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- _.Credential
d_Credential_68 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_116 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_118 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0))
-- _.DepositPurpose
d_DepositPurpose_184 a0 = ()
-- _.Slot
d_Slot_410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_410 = erased
-- _.Tx
d_Tx_440 a0 = ()
-- _.VDeleg
d_VDeleg_460 a0 = ()
-- _.epoch
d_epoch_522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_522 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0))
-- _.GovernanceActions.VDeleg
d_VDeleg_1018 a0 = ()
-- _.Tx.body
d_body_1636 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2800
d_body_1636 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2912 (coe v0)
-- _.Tx.isValid
d_isValid_1638 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2902 -> Bool
d_isValid_1638 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2916 (coe v0)
-- _.Tx.txAD
d_txAD_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 -> Maybe AgdaAny
d_txAD_1640 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2918 (coe v0)
-- _.Tx.wits
d_wits_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2902 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2882
d_wits_1642 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2914 (coe v0)
-- Ledger.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1812 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2902] ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2158 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1812 = erased
-- Ledger.Chain._.LEnv
d_LEnv_1820 a0 a1 = ()
-- Ledger.Chain._.LState
d_LState_1822 a0 a1 = ()
-- Ledger.Chain._.LEnv.enactState
d_enactState_1838 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_1838 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2152 (coe v0)
-- Ledger.Chain._.LEnv.pparams
d_pparams_1840 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2134 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1840 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2150 (coe v0)
-- Ledger.Chain._.LEnv.ppolicy
d_ppolicy_1842 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2134 -> Maybe AgdaAny
d_ppolicy_1842 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2148 (coe v0)
-- Ledger.Chain._.LEnv.slot
d_slot_1844 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2134 -> AgdaAny
d_slot_1844 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2146 (coe v0)
-- Ledger.Chain._.LEnv.treasury
d_treasury_1846 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2134 -> Integer
d_treasury_1846 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2154 (coe v0)
-- Ledger.Chain._.LState.certState
d_certState_1850 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952
d_certState_1850 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_certState_2170 (coe v0)
-- Ledger.Chain._.LState.govSt
d_govSt_1852 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1852 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_govSt_2168 (coe v0)
-- Ledger.Chain._.LState.utxoSt
d_utxoSt_1854 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1994
d_utxoSt_1854 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_utxoSt_2166 (coe v0)
-- Ledger.Chain._.StakeDistrs
d_StakeDistrs_1886 a0 a1 = ()
-- Ledger.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1982 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1998 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1982 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_2002 (coe v0)
-- Ledger.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2144 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Chain._.NewEpochState
d_NewEpochState_2158 a0 a1 = ()
-- Ledger.Chain._.NewEpochState.epochState
d_epochState_2220 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2332 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2308
d_epochState_2220 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_epochState_2342 (coe v0)
-- Ledger.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2222 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2332 -> AgdaAny
d_lastEpoch_2222 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_lastEpoch_2340 (coe v0)
-- Ledger.Chain._.NewEpochState.ru
d_ru_2224 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2332 ->
  Maybe MAlonzo.Code.Ledger.Epoch.T_RewardUpdate_2248
d_ru_2224 v0 = coe MAlonzo.Code.Ledger.Epoch.d_ru_2344 (coe v0)
-- Ledger.Chain.ChainState
d_ChainState_2254 a0 a1 = ()
newtype T_ChainState_2254
  = C_ChainState'46'constructor_3911 MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2332
-- Ledger.Chain.ChainState.newEpochState
d_newEpochState_2258 ::
  T_ChainState_2254 -> MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2332
d_newEpochState_2258 v0
  = case coe v0 of
      C_ChainState'46'constructor_3911 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.Block
d_Block_2260 a0 a1 = ()
data T_Block_2260
  = C_Block'46'constructor_3969 [MAlonzo.Code.Ledger.Transaction.T_Tx_2902]
                                AgdaAny
-- Ledger.Chain.Block.ts
d_ts_2266 ::
  T_Block_2260 -> [MAlonzo.Code.Ledger.Transaction.T_Tx_2902]
d_ts_2266 v0
  = case coe v0 of
      C_Block'46'constructor_3969 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.Block.slot
d_slot_2268 :: T_Block_2260 -> AgdaAny
d_slot_2268 v0
  = case coe v0 of
      C_Block'46'constructor_3969 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.maybePurpose
d_maybePurpose_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2280 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2280 v0 v2 v3 v4
du_maybePurpose_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2280 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
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
-- Ledger.Chain.maybePurpose-prop
d_maybePurpose'45'prop_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2312 = erased
-- Ledger.Chain.filterPurpose
d_filterPurpose_2354 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2354 v0 ~v1 v2 v3 = du_filterPurpose_2354 v0 v2 v3
du_filterPurpose_2354 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2354 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_856
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1170
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe du_maybePurpose_2280 (coe v0) (coe v1)) (coe v2))
-- Ledger.Chain.govActionDeposits
d_govActionDeposits_2368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2158 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2368 v0 ~v1 v2
  = du_govActionDeposits_2368 v0 v2
du_govActionDeposits_2368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2158 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2368 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_566
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
                     MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_6761 v5 v6 v7 v8 v9
                       -> case coe v6 of
                            MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3193 v10 v11
                              -> coe
                                   MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1554
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                         (coe
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.d_voteDelegs_920
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.d_dState_960
                                            (coe
                                               MAlonzo.Code.Ledger.Ledger.d_certState_2170
                                               (coe v1))))
                                      (coe v11)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                            erased
                                            (coe
                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1256
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
                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_536
                                                  (coe
                                                     MAlonzo.Code.Ledger.Certs.d_voteDelegs_920
                                                     (coe
                                                        MAlonzo.Code.Ledger.Certs.d_dState_960
                                                        (coe
                                                           MAlonzo.Code.Ledger.Ledger.d_certState_2170
                                                           (coe v1)))))))))
                                   (coe
                                      (\ v12 ->
                                         coe
                                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 ()
                                           erased () erased
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1554
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe
                                                 MAlonzo.Code.Ledger.Utxo.d_deposits_2008
                                                 (coe
                                                    MAlonzo.Code.Ledger.Ledger.d_utxoSt_2166
                                                    (coe v1)))
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                    (coe v3))
                                                 (let v13
                                                        = MAlonzo.Code.Axiom.Set.d_th_1458
                                                            (coe
                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Rel.du_dom_340 v13
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_536
                                                          (coe
                                                             MAlonzo.Code.Ledger.Utxo.d_deposits_2008
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ledger.d_utxoSt_2166
                                                                (coe v1))))))))
                                           (\ v13 ->
                                              coe
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                (coe
                                                   MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                   (coe
                                                      MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_314
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
            (coe MAlonzo.Code.Ledger.Ledger.d_govSt_2168 (coe v1))))
-- Ledger.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2422 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1998
d_calculateStakeDistrs_2422 v0 ~v1 v2
  = du_calculateStakeDistrs_2422 v0 v2
du_calculateStakeDistrs_2422 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2158 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1998
du_calculateStakeDistrs_2422 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11433
      (coe du_govActionDeposits_2368 (coe v0) (coe v1))
-- Ledger.Chain.totalRefScriptsSize
d_totalRefScriptsSize_2470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2158 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2902] -> Integer
d_totalRefScriptsSize_2470 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Base.d_sum_280
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased
         (MAlonzo.Code.Ledger.Utxo.d_refScriptsSize_2040
            (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Utxo.d_utxo_2004
               (coe MAlonzo.Code.Ledger.Ledger.d_utxoSt_2166 (coe v2))))
         v3)
-- Ledger.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2490 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2490
  = C_CHAIN_2540 MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2332
                 MAlonzo.Code.Data.Nat.Base.T__'8804'__22
                 MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2612
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Chain._.newEpochState
d_newEpochState_2494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_41781 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2332
d_newEpochState_2494 ~v0 ~v1 v2 = du_newEpochState_2494 v2
du_newEpochState_2494 ::
  T_GeneralizeTel_41781 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2332
du_newEpochState_2494 v0
  = coe
      d_newEpochState_2258
      (coe d_'46'generalizedField'45's_41773 (coe v0))
-- Ledger.Chain._.slot
d_slot_2498 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_41781 -> AgdaAny
d_slot_2498 ~v0 ~v1 v2 = du_slot_2498 v2
du_slot_2498 :: T_GeneralizeTel_41781 -> AgdaAny
du_slot_2498 v0
  = coe d_slot_2268 (coe d_'46'generalizedField'45'b_41775 (coe v0))
-- Ledger.Chain._.ts
d_ts_2500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_41781 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2902]
d_ts_2500 ~v0 ~v1 v2 = du_ts_2500 v2
du_ts_2500 ::
  T_GeneralizeTel_41781 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2902]
du_ts_2500 v0
  = coe d_ts_2266 (coe d_'46'generalizedField'45'b_41775 (coe v0))
-- Ledger.Chain._.epochState
d_epochState_2504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_41781 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2308
d_epochState_2504 ~v0 ~v1 v2 = du_epochState_2504 v2
du_epochState_2504 ::
  T_GeneralizeTel_41781 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2308
du_epochState_2504 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_epochState_2342
      (coe d_'46'generalizedField'45'nes_41777 (coe v0))
-- Ledger.Chain._.acnt
d_acnt_2512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_41781 -> MAlonzo.Code.Ledger.PParams.T_Acnt_146
d_acnt_2512 ~v0 ~v1 v2 = du_acnt_2512 v2
du_acnt_2512 ::
  T_GeneralizeTel_41781 -> MAlonzo.Code.Ledger.PParams.T_Acnt_146
du_acnt_2512 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_acnt_2320
      (coe
         MAlonzo.Code.Ledger.Epoch.d_epochState_2342
         (coe d_'46'generalizedField'45'nes_41777 (coe v0)))
-- Ledger.Chain._.es
d_es_2514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_41781 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_es_2514 ~v0 ~v1 v2 = du_es_2514 v2
du_es_2514 ::
  T_GeneralizeTel_41781 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_es_2514 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_es_2326
      (coe
         MAlonzo.Code.Ledger.Epoch.d_epochState_2342
         (coe d_'46'generalizedField'45'nes_41777 (coe v0)))
-- Ledger.Chain._.ls
d_ls_2518 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_41781 -> MAlonzo.Code.Ledger.Ledger.T_LState_2158
d_ls_2518 ~v0 ~v1 v2 = du_ls_2518 v2
du_ls_2518 ::
  T_GeneralizeTel_41781 -> MAlonzo.Code.Ledger.Ledger.T_LState_2158
du_ls_2518 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_ls_2324
      (coe
         MAlonzo.Code.Ledger.Epoch.d_epochState_2342
         (coe d_'46'generalizedField'45'nes_41777 (coe v0)))
-- Ledger.Chain._.constitution
d_constitution_2526 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_41781 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2526 ~v0 ~v1 v2 = du_constitution_2526 v2
du_constitution_2526 ::
  T_GeneralizeTel_41781 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2526 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_constitution_866
      (coe
         MAlonzo.Code.Ledger.Epoch.d_es_2326
         (coe
            MAlonzo.Code.Ledger.Epoch.d_epochState_2342
            (coe d_'46'generalizedField'45'nes_41777 (coe v0))))
-- Ledger.Chain._.pparams
d_pparams_2528 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_41781 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2528 ~v0 ~v1 v2 = du_pparams_2528 v2
du_pparams_2528 ::
  T_GeneralizeTel_41781 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2528 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_pparams_870
      (coe
         MAlonzo.Code.Ledger.Epoch.d_es_2326
         (coe
            MAlonzo.Code.Ledger.Epoch.d_epochState_2342
            (coe d_'46'generalizedField'45'nes_41777 (coe v0))))
-- Ledger.Chain._.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2538 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1756 ->
  T_GeneralizeTel_41781 -> Integer
d_maxRefScriptSizePerBlock_2538 ~v0 ~v1 v2
  = du_maxRefScriptSizePerBlock_2538 v2
du_maxRefScriptSizePerBlock_2538 ::
  T_GeneralizeTel_41781 -> Integer
du_maxRefScriptSizePerBlock_2538 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Ledger.Enact.d_pparams_870
            (coe
               MAlonzo.Code.Ledger.Epoch.d_es_2326
               (coe
                  MAlonzo.Code.Ledger.Epoch.d_epochState_2342
                  (coe d_'46'generalizedField'45'nes_41777 (coe v0))))))
-- Ledger.Chain..generalizedField-s
d_'46'generalizedField'45's_41773 ::
  T_GeneralizeTel_41781 -> T_ChainState_2254
d_'46'generalizedField'45's_41773 v0
  = case coe v0 of
      C_mkGeneralizeTel_41783 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-b
d_'46'generalizedField'45'b_41775 ::
  T_GeneralizeTel_41781 -> T_Block_2260
d_'46'generalizedField'45'b_41775 v0
  = case coe v0 of
      C_mkGeneralizeTel_41783 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_41777 ::
  T_GeneralizeTel_41781 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2332
d_'46'generalizedField'45'nes_41777 v0
  = case coe v0 of
      C_mkGeneralizeTel_41783 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_41779 ::
  T_GeneralizeTel_41781 -> MAlonzo.Code.Ledger.Ledger.T_LState_2158
d_'46'generalizedField'45'ls''_41779 v0
  = case coe v0 of
      C_mkGeneralizeTel_41783 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.GeneralizeTel
d_GeneralizeTel_41781 a0 a1 = ()
data T_GeneralizeTel_41781
  = C_mkGeneralizeTel_41783 T_ChainState_2254 T_Block_2260
                            MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2332
                            MAlonzo.Code.Ledger.Ledger.T_LState_2158
