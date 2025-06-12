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
import qualified MAlonzo.Code.Ledger.Conway.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Enact
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Ledger
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Utxo
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _.Credential
d_Credential_48 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_84 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_84 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300 (coe v0)))
-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_182 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_182 ~v0
  = du_HasCast'45'HashProtected_182
du_HasCast'45'HashProtected_182 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected_810
-- _.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_184 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_184 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_184
du_HasCast'45'HashProtected'45'MaybeScriptHash_184 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_184
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected'45'MaybeScriptHash_812
-- _.Slot
d_Slot_402 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Slot_402 = erased
-- _.Tx
d_Tx_430 a0 = ()
-- _.VDeleg
d_VDeleg_454 a0 = ()
-- _.epoch
d_epoch_504 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> AgdaAny
d_epoch_504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1604
         (coe v0))
-- _.GovernanceActions.VDeleg
d_VDeleg_882 a0 = ()
-- _.Tx.body
d_body_1546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
d_body_1546 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v0)
-- _.Tx.isValid
d_isValid_1548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 -> Bool
d_isValid_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3212 (coe v0)
-- _.Tx.txAD
d_txAD_1550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 -> Maybe AgdaAny
d_txAD_1550 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3214 (coe v0)
-- _.Tx.wits
d_wits_1552 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3178
d_wits_1552 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1734 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2452 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2236 ->
  [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2236 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1734 = erased
-- Ledger.Conway.Conformance.Chain._.HasCast-LEnv
d_HasCast'45'LEnv_1738 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_1738 ~v0 ~v1 = du_HasCast'45'LEnv_1738
du_HasCast'45'LEnv_1738 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_1738
  = coe MAlonzo.Code.Ledger.Conway.Ledger.du_HasCast'45'LEnv_2520
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1748 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1778 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2236 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280
d_certState_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2248
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1780 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2236 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2246 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1782 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2236 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
d_utxoSt_1782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2244
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.StakeDistrs
d_StakeDistrs_1820 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1906 ::
  MAlonzo.Code.Ledger.Conway.Ratify.T_StakeDistrs_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1906 v0
  = coe MAlonzo.Code.Ledger.Conway.Ratify.d_stakeDistr_2256 (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1984 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_2008 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_2064 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2550 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2526
d_epochState_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2560
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2066 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2550 ->
  AgdaAny
d_lastEpoch_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2558
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_2068 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2550 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2478
d_ru_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2562 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2158 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2158 v0 ~v1
  = du_DecEq'45'DepositPurpose_2158 v0
du_DecEq'45'DepositPurpose_2158 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2158 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
         (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_2162 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2462 a0 a1 = ()
newtype T_ChainState_2462
  = C_ChainState'46'constructor_6149 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2550
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2466 ::
  T_ChainState_2462 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2550
d_newEpochState_2466 v0
  = case coe v0 of
      C_ChainState'46'constructor_6149 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2468 a0 a1 = ()
data T_Block_2468
  = C_Block'46'constructor_6207 [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198]
                                AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2474 ::
  T_Block_2468 -> [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198]
d_ts_2474 v0
  = case coe v0 of
      C_Block'46'constructor_6207 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2476 :: T_Block_2468 -> AgdaAny
d_slot_2476 v0
  = case coe v0 of
      C_Block'46'constructor_6207 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2488 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_914 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2488 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2488 v0 v2 v3 v4
du_maybePurpose_2488 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_914 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2488 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                        (coe
                           MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
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
d_maybePurpose'45'prop_2520 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_914 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_914 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2520 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_914 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2562 v0 ~v1 v2 v3 = du_filterPurpose_2562 v0 v2 v3
du_filterPurpose_2562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_914 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2562 v0 v1 v2
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
         (coe du_maybePurpose_2488 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2576 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2576 v0 ~v1 v2
  = du_govActionDeposits_2576 v0 v2
du_govActionDeposits_2576 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2576 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
         (coe
            MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_894
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
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
                     MAlonzo.Code.Ledger.Conway.GovernanceActions.C_GovActionState'46'constructor_5243 v5 v6 v7 v8 v9
                       -> case coe v6 of
                            MAlonzo.Code.Ledger.Conway.Address.C_RwdAddr'46'constructor_3453 v10 v11
                              -> coe
                                   MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1254
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2248
                                               (coe v1))))
                                      (coe v11)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1300
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1254
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2248
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
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2248
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Certs.C_GovActionDeposit_922
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2468
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_984
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Certs.C_GovActionDeposit_922
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1260
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2248
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2246
               (coe v1))))
-- Ledger.Conway.Conformance.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2632 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2236 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_StakeDistrs_2252
d_calculateStakeDistrs_2632 v0 ~v1 v2
  = du_calculateStakeDistrs_2632 v0 v2
du_calculateStakeDistrs_2632 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2236 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_StakeDistrs_2252
du_calculateStakeDistrs_2632 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Ratify.C_StakeDistrs'46'constructor_15625
      (coe du_govActionDeposits_2576 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2682 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2682
  = C_CHAIN_2726 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2550
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2862
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2686 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_43255 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2550
d_newEpochState_2686 ~v0 ~v1 v2 = du_newEpochState_2686 v2
du_newEpochState_2686 ::
  T_GeneralizeTel_43255 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2550
du_newEpochState_2686 v0
  = coe
      d_newEpochState_2466
      (coe d_'46'generalizedField'45's_43247 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2690 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_43255 -> AgdaAny
d_slot_2690 ~v0 ~v1 v2 = du_slot_2690 v2
du_slot_2690 :: T_GeneralizeTel_43255 -> AgdaAny
du_slot_2690 v0
  = coe d_slot_2476 (coe d_'46'generalizedField'45'b_43249 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2692 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_43255 ->
  [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198]
d_ts_2692 ~v0 ~v1 v2 = du_ts_2692 v2
du_ts_2692 ::
  T_GeneralizeTel_43255 ->
  [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198]
du_ts_2692 v0
  = coe d_ts_2474 (coe d_'46'generalizedField'45'b_43249 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2696 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_43255 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2526
d_epochState_2696 ~v0 ~v1 v2 = du_epochState_2696 v2
du_epochState_2696 ::
  T_GeneralizeTel_43255 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2526
du_epochState_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2560
      (coe d_'46'generalizedField'45'nes_43251 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2704 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_43255 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146
d_acnt_2704 ~v0 ~v1 v2 = du_acnt_2704 v2
du_acnt_2704 ::
  T_GeneralizeTel_43255 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146
du_acnt_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2538
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2560
         (coe d_'46'generalizedField'45'nes_43251 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2706 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_43255 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_928
d_es_2706 ~v0 ~v1 v2 = du_es_2706 v2
du_es_2706 ::
  T_GeneralizeTel_43255 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_928
du_es_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2544
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2560
         (coe d_'46'generalizedField'45'nes_43251 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2710 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_43255 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2236
d_ls_2710 ~v0 ~v1 v2 = du_ls_2710 v2
du_ls_2710 ::
  T_GeneralizeTel_43255 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2236
du_ls_2710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2542
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2560
         (coe d_'46'generalizedField'45'nes_43251 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2718 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_43255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2718 ~v0 ~v1 v2 = du_constitution_2718 v2
du_constitution_2718 ::
  T_GeneralizeTel_43255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Enact.d_constitution_942
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2544
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2560
            (coe d_'46'generalizedField'45'nes_43251 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2720 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_43255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2720 ~v0 ~v1 v2 = du_pparams_2720 v2
du_pparams_2720 ::
  T_GeneralizeTel_43255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Enact.d_pparams_946
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2544
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2560
            (coe d_'46'generalizedField'45'nes_43251 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_43247 ::
  T_GeneralizeTel_43255 -> T_ChainState_2462
d_'46'generalizedField'45's_43247 v0
  = case coe v0 of
      C_mkGeneralizeTel_43257 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_43249 ::
  T_GeneralizeTel_43255 -> T_Block_2468
d_'46'generalizedField'45'b_43249 v0
  = case coe v0 of
      C_mkGeneralizeTel_43257 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_43251 ::
  T_GeneralizeTel_43255 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2550
d_'46'generalizedField'45'nes_43251 v0
  = case coe v0 of
      C_mkGeneralizeTel_43257 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_43253 ::
  T_GeneralizeTel_43255 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2236
d_'46'generalizedField'45'ls''_43253 v0
  = case coe v0 of
      C_mkGeneralizeTel_43257 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_43255 a0 a1 = ()
data T_GeneralizeTel_43255
  = C_mkGeneralizeTel_43257 T_ChainState_2462 T_Block_2468
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2550
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2236
