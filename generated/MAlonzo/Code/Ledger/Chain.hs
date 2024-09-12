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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_118 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0))
-- _.DepositPurpose
d_DepositPurpose_186 a0 = ()
-- _.Slot
d_Slot_412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_412 = erased
-- _.Tx
d_Tx_442 a0 = ()
-- _.VDeleg
d_VDeleg_462 a0 = ()
-- _.epoch
d_epoch_524 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_524 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0))
-- _.GovernanceActions.VDeleg
d_VDeleg_1012 a0 = ()
-- _.Tx.body
d_body_1618 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768
d_body_1618 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v0)
-- _.Tx.isValid
d_isValid_1620 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Bool
d_isValid_1620 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2884 (coe v0)
-- _.Tx.txAD
d_txAD_1622 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Maybe AgdaAny
d_txAD_1622 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2886 (coe v0)
-- _.Tx.wits
d_wits_1624 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2850
d_wits_1624 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2882 (coe v0)
-- Ledger.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1794 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2112 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2136 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2870] ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2136 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1794 = erased
-- Ledger.Chain._.LEnv
d_LEnv_1802 a0 a1 = ()
-- Ledger.Chain._.LState
d_LState_1804 a0 a1 = ()
-- Ledger.Chain._.LEnv.enactState
d_enactState_1820 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2112 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_1820 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2130 (coe v0)
-- Ledger.Chain._.LEnv.pparams
d_pparams_1822 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2112 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1822 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2128 (coe v0)
-- Ledger.Chain._.LEnv.ppolicy
d_ppolicy_1824 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2112 -> Maybe AgdaAny
d_ppolicy_1824 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2126 (coe v0)
-- Ledger.Chain._.LEnv.slot
d_slot_1826 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2112 -> AgdaAny
d_slot_1826 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2124 (coe v0)
-- Ledger.Chain._.LEnv.treasury
d_treasury_1828 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2112 -> Integer
d_treasury_1828 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2132 (coe v0)
-- Ledger.Chain._.LState.certState
d_certState_1832 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2136 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_928
d_certState_1832 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_certState_2148 (coe v0)
-- Ledger.Chain._.LState.govSt
d_govSt_1834 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2136 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1834 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_govSt_2146 (coe v0)
-- Ledger.Chain._.LState.utxoSt
d_utxoSt_1836 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2136 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952
d_utxoSt_1836 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_utxoSt_2144 (coe v0)
-- Ledger.Chain._.StakeDistrs
d_StakeDistrs_1868 a0 a1 = ()
-- Ledger.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1964 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1964 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1976 (coe v0)
-- Ledger.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2122 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Chain._.NewEpochState
d_NewEpochState_2136 a0 a1 = ()
-- Ledger.Chain._.NewEpochState.epochState
d_epochState_2198 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2310 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2286
d_epochState_2198 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_epochState_2320 (coe v0)
-- Ledger.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2200 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2310 -> AgdaAny
d_lastEpoch_2200 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_lastEpoch_2318 (coe v0)
-- Ledger.Chain._.NewEpochState.ru
d_ru_2202 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2310 ->
  Maybe MAlonzo.Code.Ledger.Epoch.T_RewardUpdate_2226
d_ru_2202 v0 = coe MAlonzo.Code.Ledger.Epoch.d_ru_2322 (coe v0)
-- Ledger.Chain.ChainState
d_ChainState_2232 a0 a1 = ()
newtype T_ChainState_2232
  = C_ChainState'46'constructor_3871 MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2310
-- Ledger.Chain.ChainState.newEpochState
d_newEpochState_2236 ::
  T_ChainState_2232 -> MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2310
d_newEpochState_2236 v0
  = case coe v0 of
      C_ChainState'46'constructor_3871 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.Block
d_Block_2238 a0 a1 = ()
data T_Block_2238
  = C_Block'46'constructor_3929 [MAlonzo.Code.Ledger.Transaction.T_Tx_2870]
                                AgdaAny
-- Ledger.Chain.Block.ts
d_ts_2244 ::
  T_Block_2238 -> [MAlonzo.Code.Ledger.Transaction.T_Tx_2870]
d_ts_2244 v0
  = case coe v0 of
      C_Block'46'constructor_3929 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.Block.slot
d_slot_2246 :: T_Block_2238 -> AgdaAny
d_slot_2246 v0
  = case coe v0 of
      C_Block'46'constructor_3929 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.maybePurpose
d_maybePurpose_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2258 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2258 v0 v2 v3 v4
du_maybePurpose_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2258 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0)))
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
d_maybePurpose'45'prop_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2290 = erased
-- Ledger.Chain.filterPurpose
d_filterPurpose_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2332 v0 ~v1 v2 v3 = du_filterPurpose_2332 v0 v2 v3
du_filterPurpose_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_812 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2332 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_854
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1168
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe du_maybePurpose_2258 (coe v0) (coe v1)) (coe v2))
-- Ledger.Chain.govActionDeposits
d_govActionDeposits_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2136 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2346 v0 ~v1 v2
  = du_govActionDeposits_2346 v0 v2
du_govActionDeposits_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2136 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2346 v0 v1
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
            MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
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
                     MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_6733 v5 v6 v7 v8 v9
                       -> case coe v6 of
                            MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3193 v10 v11
                              -> coe
                                   MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                         (coe
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.d_voteDelegs_896
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.d_dState_936
                                            (coe
                                               MAlonzo.Code.Ledger.Ledger.d_certState_2148
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
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                     (coe v0)))))
                                         (coe v11)
                                         (let v12
                                                = MAlonzo.Code.Axiom.Set.d_th_1458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v12
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                  (coe
                                                     MAlonzo.Code.Ledger.Certs.d_voteDelegs_896
                                                     (coe
                                                        MAlonzo.Code.Ledger.Certs.d_dState_936
                                                        (coe
                                                           MAlonzo.Code.Ledger.Ledger.d_certState_2148
                                                           (coe v1)))))))))
                                   (coe
                                      (\ v12 ->
                                         coe
                                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 ()
                                           erased () erased
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe
                                                 MAlonzo.Code.Ledger.Utxo.d_deposits_1966
                                                 (coe
                                                    MAlonzo.Code.Ledger.Ledger.d_utxoSt_2144
                                                    (coe v1)))
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_820
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2366
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_820
                                                    (coe v3))
                                                 (let v13
                                                        = MAlonzo.Code.Axiom.Set.d_th_1458
                                                            (coe
                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v13
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                          (coe
                                                             MAlonzo.Code.Ledger.Utxo.d_deposits_1966
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ledger.d_utxoSt_2144
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
            (coe MAlonzo.Code.Ledger.Ledger.d_govSt_2146 (coe v1))))
-- Ledger.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2400 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2136 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1972
d_calculateStakeDistrs_2400 v0 ~v1 v2
  = du_calculateStakeDistrs_2400 v0 v2
du_calculateStakeDistrs_2400 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2136 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1972
du_calculateStakeDistrs_2400 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11339
      (coe du_govActionDeposits_2346 (coe v0) (coe v1))
-- Ledger.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2448 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2448
  = C_CHAIN_2492 MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2310
                 MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2590
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Chain._.newEpochState
d_newEpochState_2452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_40653 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2310
d_newEpochState_2452 ~v0 ~v1 v2 = du_newEpochState_2452 v2
du_newEpochState_2452 ::
  T_GeneralizeTel_40653 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2310
du_newEpochState_2452 v0
  = coe
      d_newEpochState_2236
      (coe d_'46'generalizedField'45's_40645 (coe v0))
-- Ledger.Chain._.slot
d_slot_2456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_40653 -> AgdaAny
d_slot_2456 ~v0 ~v1 v2 = du_slot_2456 v2
du_slot_2456 :: T_GeneralizeTel_40653 -> AgdaAny
du_slot_2456 v0
  = coe d_slot_2246 (coe d_'46'generalizedField'45'b_40647 (coe v0))
-- Ledger.Chain._.ts
d_ts_2458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_40653 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2870]
d_ts_2458 ~v0 ~v1 v2 = du_ts_2458 v2
du_ts_2458 ::
  T_GeneralizeTel_40653 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2870]
du_ts_2458 v0
  = coe d_ts_2244 (coe d_'46'generalizedField'45'b_40647 (coe v0))
-- Ledger.Chain._.epochState
d_epochState_2462 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_40653 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2286
d_epochState_2462 ~v0 ~v1 v2 = du_epochState_2462 v2
du_epochState_2462 ::
  T_GeneralizeTel_40653 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2286
du_epochState_2462 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_epochState_2320
      (coe d_'46'generalizedField'45'nes_40649 (coe v0))
-- Ledger.Chain._.acnt
d_acnt_2470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_40653 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_acnt_2470 ~v0 ~v1 v2 = du_acnt_2470 v2
du_acnt_2470 ::
  T_GeneralizeTel_40653 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
du_acnt_2470 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_acnt_2298
      (coe
         MAlonzo.Code.Ledger.Epoch.d_epochState_2320
         (coe d_'46'generalizedField'45'nes_40649 (coe v0)))
-- Ledger.Chain._.es
d_es_2472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_40653 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_es_2472 ~v0 ~v1 v2 = du_es_2472 v2
du_es_2472 ::
  T_GeneralizeTel_40653 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
du_es_2472 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_es_2304
      (coe
         MAlonzo.Code.Ledger.Epoch.d_epochState_2320
         (coe d_'46'generalizedField'45'nes_40649 (coe v0)))
-- Ledger.Chain._.ls
d_ls_2476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_40653 -> MAlonzo.Code.Ledger.Ledger.T_LState_2136
d_ls_2476 ~v0 ~v1 v2 = du_ls_2476 v2
du_ls_2476 ::
  T_GeneralizeTel_40653 -> MAlonzo.Code.Ledger.Ledger.T_LState_2136
du_ls_2476 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_ls_2302
      (coe
         MAlonzo.Code.Ledger.Epoch.d_epochState_2320
         (coe d_'46'generalizedField'45'nes_40649 (coe v0)))
-- Ledger.Chain._.constitution
d_constitution_2484 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_40653 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2484 ~v0 ~v1 v2 = du_constitution_2484 v2
du_constitution_2484 ::
  T_GeneralizeTel_40653 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2484 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_constitution_842
      (coe
         MAlonzo.Code.Ledger.Epoch.d_es_2304
         (coe
            MAlonzo.Code.Ledger.Epoch.d_epochState_2320
            (coe d_'46'generalizedField'45'nes_40649 (coe v0))))
-- Ledger.Chain._.pparams
d_pparams_2486 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_40653 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2486 ~v0 ~v1 v2 = du_pparams_2486 v2
du_pparams_2486 ::
  T_GeneralizeTel_40653 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2486 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_pparams_846
      (coe
         MAlonzo.Code.Ledger.Epoch.d_es_2304
         (coe
            MAlonzo.Code.Ledger.Epoch.d_epochState_2320
            (coe d_'46'generalizedField'45'nes_40649 (coe v0))))
-- Ledger.Chain..generalizedField-s
d_'46'generalizedField'45's_40645 ::
  T_GeneralizeTel_40653 -> T_ChainState_2232
d_'46'generalizedField'45's_40645 v0
  = case coe v0 of
      C_mkGeneralizeTel_40655 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-b
d_'46'generalizedField'45'b_40647 ::
  T_GeneralizeTel_40653 -> T_Block_2238
d_'46'generalizedField'45'b_40647 v0
  = case coe v0 of
      C_mkGeneralizeTel_40655 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_40649 ::
  T_GeneralizeTel_40653 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2310
d_'46'generalizedField'45'nes_40649 v0
  = case coe v0 of
      C_mkGeneralizeTel_40655 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_40651 ::
  T_GeneralizeTel_40653 -> MAlonzo.Code.Ledger.Ledger.T_LState_2136
d_'46'generalizedField'45'ls''_40651 v0
  = case coe v0 of
      C_mkGeneralizeTel_40655 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.GeneralizeTel
d_GeneralizeTel_40653 a0 a1 = ()
data T_GeneralizeTel_40653
  = C_mkGeneralizeTel_40655 T_ChainState_2232 T_Block_2238
                            MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2310
                            MAlonzo.Code.Ledger.Ledger.T_LState_2136
