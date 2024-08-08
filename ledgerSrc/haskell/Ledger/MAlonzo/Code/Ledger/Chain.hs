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
d_Credential_64 a0 = ()
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_114 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_114 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0))
-- _.DepositPurpose
d_DepositPurpose_180 a0 = ()
-- _.Slot
d_Slot_368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_368 = erased
-- _.Tx
d_Tx_398 a0 = ()
-- _.VDeleg
d_VDeleg_418 a0 = ()
-- _.epoch
d_epoch_480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_480 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))
-- Ledger.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_1948 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1972 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2710] ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1972 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1642 = erased
-- Ledger.Chain._.LEnv
d_LEnv_1650 a0 a1 = ()
-- Ledger.Chain._.LState
d_LState_1652 a0 a1 = ()
-- Ledger.Chain._.StakeDistrs
d_StakeDistrs_1716 a0 a1 = ()
-- Ledger.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1970 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Chain._.NewEpochState
d_NewEpochState_1984 a0 a1 = ()
-- Ledger.Chain.ChainState
d_ChainState_2080 a0 a1 = ()
newtype T_ChainState_2080
  = C_ChainState'46'constructor_3243 MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2146
-- Ledger.Chain.ChainState.newEpochState
d_newEpochState_2084 ::
  T_ChainState_2080 -> MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2146
d_newEpochState_2084 v0
  = case coe v0 of
      C_ChainState'46'constructor_3243 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.Block
d_Block_2086 a0 a1 = ()
data T_Block_2086
  = C_Block'46'constructor_3301 [MAlonzo.Code.Ledger.Transaction.T_Tx_2710]
                                AgdaAny
-- Ledger.Chain.Block.ts
d_ts_2092 ::
  T_Block_2086 -> [MAlonzo.Code.Ledger.Transaction.T_Tx_2710]
d_ts_2092 v0
  = case coe v0 of
      C_Block'46'constructor_3301 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.Block.slot
d_slot_2094 :: T_Block_2086 -> AgdaAny
d_slot_2094 v0
  = case coe v0 of
      C_Block'46'constructor_3301 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.maybePurpose
d_maybePurpose_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2106 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2106 v0 v2 v3 v4
du_maybePurpose_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2106 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780
                        (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))
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
d_maybePurpose'45'prop_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_768 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_768 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2138 = erased
-- Ledger.Chain.filterPurpose
d_filterPurpose_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2180 v0 ~v1 v2 v3 = du_filterPurpose_2180 v0 v2 v3
du_filterPurpose_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_DepositPurpose_768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2180 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_852
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1166
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe du_maybePurpose_2106 (coe v0) (coe v1)) (coe v2))
-- Ledger.Chain.govActionDeposits
d_govActionDeposits_2194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2194 v0 ~v1 v2
  = du_govActionDeposits_2194 v0 v2
du_govActionDeposits_2194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2194 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_256
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__494
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_760
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_558
         (MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                -> case coe v4 of
                     MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_5269 v5 v6 v7 v8 v9
                       -> case coe v6 of
                            MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_2437 v10 v11
                              -> coe
                                   MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__76
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1550
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1430
                                         (coe
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.d_voteDelegs_852
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.d_dState_892
                                            (coe
                                               MAlonzo.Code.Ledger.Ledger.d_certState_1984
                                               (coe v1))))
                                      (coe v11)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                            erased
                                            (coe
                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                                     (coe v0)))))
                                         (coe v11)
                                         (let v12
                                                = MAlonzo.Code.Axiom.Set.d_th_1430
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v12
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                  (coe
                                                     MAlonzo.Code.Ledger.Certs.d_voteDelegs_852
                                                     (coe
                                                        MAlonzo.Code.Ledger.Certs.d_dState_892
                                                        (coe
                                                           MAlonzo.Code.Ledger.Ledger.d_certState_1984
                                                           (coe v1)))))))))
                                   (coe
                                      (\ v12 ->
                                         coe
                                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 ()
                                           erased () erased
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1550
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe
                                                 MAlonzo.Code.Ledger.Utxo.d_deposits_1814
                                                 (coe
                                                    MAlonzo.Code.Ledger.Ledger.d_utxoSt_1980
                                                    (coe v1)))
                                              (coe
                                                 MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_776
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1630
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2222
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_776
                                                    (coe v3))
                                                 (let v13
                                                        = MAlonzo.Code.Axiom.Set.d_th_1430
                                                            (coe
                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v13
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                          (coe
                                                             MAlonzo.Code.Ledger.Utxo.d_deposits_1814
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ledger.d_utxoSt_1980
                                                                (coe v1))))))))
                                           (\ v13 ->
                                              coe
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                (coe
                                                   MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_302
                                                   (coe
                                                      MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_312
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1430
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v12) (coe v13))))))
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError)
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_410
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Ledger.Ledger.d_govSt_1982 (coe v1))))
-- Ledger.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1972 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1820
d_calculateStakeDistrs_2248 v0 ~v1 v2
  = du_calculateStakeDistrs_2248 v0 v2
du_calculateStakeDistrs_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1972 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1820
du_calculateStakeDistrs_2248 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11039
      (coe du_govActionDeposits_2194 (coe v0) (coe v1))
-- Ledger.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2296 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2296
  = C_CHAIN_2340 MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2146
                 MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2426
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Chain._.newEpochState
d_newEpochState_2300 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_38777 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2146
d_newEpochState_2300 ~v0 ~v1 v2 = du_newEpochState_2300 v2
du_newEpochState_2300 ::
  T_GeneralizeTel_38777 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2146
du_newEpochState_2300 v0
  = coe
      d_newEpochState_2084 (coe d_'46'generalizedField'45's_38769 v0)
-- Ledger.Chain._.slot
d_slot_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_38777 -> AgdaAny
d_slot_2304 ~v0 ~v1 v2 = du_slot_2304 v2
du_slot_2304 :: T_GeneralizeTel_38777 -> AgdaAny
du_slot_2304 v0
  = coe d_slot_2094 (coe d_'46'generalizedField'45'b_38771 v0)
-- Ledger.Chain._.ts
d_ts_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_38777 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2710]
d_ts_2306 ~v0 ~v1 v2 = du_ts_2306 v2
du_ts_2306 ::
  T_GeneralizeTel_38777 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2710]
du_ts_2306 v0
  = coe d_ts_2092 (coe d_'46'generalizedField'45'b_38771 v0)
-- Ledger.Chain._.epochState
d_epochState_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_38777 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2122
d_epochState_2310 ~v0 ~v1 v2 = du_epochState_2310 v2
du_epochState_2310 ::
  T_GeneralizeTel_38777 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2122
du_epochState_2310 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_epochState_2156
      (coe d_'46'generalizedField'45'nes_38773 v0)
-- Ledger.Chain._.acnt
d_acnt_2318 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_38777 -> MAlonzo.Code.Ledger.PParams.T_Acnt_132
d_acnt_2318 ~v0 ~v1 v2 = du_acnt_2318 v2
du_acnt_2318 ::
  T_GeneralizeTel_38777 -> MAlonzo.Code.Ledger.PParams.T_Acnt_132
du_acnt_2318 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_acnt_2134
      (coe
         MAlonzo.Code.Ledger.Epoch.d_epochState_2156
         (coe d_'46'generalizedField'45'nes_38773 v0))
-- Ledger.Chain._.es
d_es_2320 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_38777 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_es_2320 ~v0 ~v1 v2 = du_es_2320 v2
du_es_2320 ::
  T_GeneralizeTel_38777 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
du_es_2320 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_es_2140
      (coe
         MAlonzo.Code.Ledger.Epoch.d_epochState_2156
         (coe d_'46'generalizedField'45'nes_38773 v0))
-- Ledger.Chain._.ls
d_ls_2324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_38777 -> MAlonzo.Code.Ledger.Ledger.T_LState_1972
d_ls_2324 ~v0 ~v1 v2 = du_ls_2324 v2
du_ls_2324 ::
  T_GeneralizeTel_38777 -> MAlonzo.Code.Ledger.Ledger.T_LState_1972
du_ls_2324 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_ls_2138
      (coe
         MAlonzo.Code.Ledger.Epoch.d_epochState_2156
         (coe d_'46'generalizedField'45'nes_38773 v0))
-- Ledger.Chain._.constitution
d_constitution_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_38777 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2332 ~v0 ~v1 v2 = du_constitution_2332 v2
du_constitution_2332 ::
  T_GeneralizeTel_38777 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2332 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_constitution_798
      (coe
         MAlonzo.Code.Ledger.Epoch.d_es_2140
         (coe
            MAlonzo.Code.Ledger.Epoch.d_epochState_2156
            (coe d_'46'generalizedField'45'nes_38773 v0)))
-- Ledger.Chain._.pparams
d_pparams_2334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_38777 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2334 ~v0 ~v1 v2 = du_pparams_2334 v2
du_pparams_2334 ::
  T_GeneralizeTel_38777 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2334 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_pparams_802
      (coe
         MAlonzo.Code.Ledger.Epoch.d_es_2140
         (coe
            MAlonzo.Code.Ledger.Epoch.d_epochState_2156
            (coe d_'46'generalizedField'45'nes_38773 v0)))
-- Ledger.Chain..generalizedField-s
d_'46'generalizedField'45's_38769 ::
  T_GeneralizeTel_38777 -> T_ChainState_2080
d_'46'generalizedField'45's_38769 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-b
d_'46'generalizedField'45'b_38771 ::
  T_GeneralizeTel_38777 -> T_Block_2086
d_'46'generalizedField'45'b_38771 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_38773 ::
  T_GeneralizeTel_38777 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2146
d_'46'generalizedField'45'nes_38773
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_38775 ::
  T_GeneralizeTel_38777 -> MAlonzo.Code.Ledger.Ledger.T_LState_1972
d_'46'generalizedField'45'ls''_38775
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.GeneralizeTel
d_GeneralizeTel_38777 a0 a1 = ()
data T_GeneralizeTel_38777
  = C_mkGeneralizeTel_38779 T_ChainState_2080 T_Block_2086
                            MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2146
                            MAlonzo.Code.Ledger.Ledger.T_LState_1972
