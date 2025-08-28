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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify
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
d_Credential_48 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_82 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_190
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
            (coe v0)))
-- _.HasCast-HashProtected
d_HasCast'45'HashProtected_178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_178 ~v0
  = du_HasCast'45'HashProtected_178
du_HasCast'45'HashProtected_178 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_832
-- _.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_180 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_180
du_HasCast'45'HashProtected'45'MaybeScriptHash_180 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_180
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_834
-- _.Slot
d_Slot_390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_390 = erased
-- _.Tx
d_Tx_416 a0 = ()
-- _.VDeleg
d_VDeleg_440 a0 = ()
-- _.epoch
d_epoch_490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_490 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1578
         (coe v0))
-- _.GovActions.VDeleg
d_VDeleg_816 a0 = ()
-- _.Tx.body
d_body_1528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952
d_body_1528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
      (coe v0)
-- _.Tx.isValid
d_isValid_1530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Bool
d_isValid_1530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3158
      (coe v0)
-- _.Tx.txAD
d_txAD_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Maybe AgdaAny
d_txAD_1532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3160
      (coe v0)
-- _.Tx.txsize
d_txsize_1534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Integer
d_txsize_1534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3156
      (coe v0)
-- _.Tx.wits
d_wits_1536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3120
d_wits_1536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
      (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2394 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2200 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2200 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1702 = erased
-- Ledger.Conway.Conformance.Chain._.HasCast-LEnv
d_HasCast'45'LEnv_1706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_1706 ~v0 ~v1 = du_HasCast'45'LEnv_1706
du_HasCast'45'LEnv_1706 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_1706
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2462
-- Ledger.Conway.Conformance.Chain._.LState
d_LState_1716 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.LState.certState
d_certState_1746 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2200 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1298
d_certState_1746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2212
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.govSt
d_govSt_1748 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2200 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2210 (coe v0)
-- Ledger.Conway.Conformance.Chain._.LState.utxoSt
d_utxoSt_1750 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2066
d_utxoSt_1750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2208
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.StakeDistrs
d_StakeDistrs_1788 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.StakeDistrs.stakeDistr
d_stakeDistr_1874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2222 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2226
      (coe v0)
-- Ledger.Conway.Conformance.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1952 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState
d_NewEpochState_1968 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain._.NewEpochState.epochState
d_epochState_2006 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2432 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2408
d_epochState_2006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2442
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.lastEpoch
d_lastEpoch_2008 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2432 ->
  AgdaAny
d_lastEpoch_2008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2440
      (coe v0)
-- Ledger.Conway.Conformance.Chain._.NewEpochState.ru
d_ru_2010 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2432 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2496
d_ru_2010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2444 (coe v0)
-- Ledger.Conway.Conformance.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2074 v0 ~v1
  = du_DecEq'45'DepositPurpose_2074 v0
du_DecEq'45'DepositPurpose_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2074 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2414
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1004
         (coe v1))
-- Ledger.Conway.Conformance.Chain._.DepositPurpose
d_DepositPurpose_2078 a0 a1 = ()
-- Ledger.Conway.Conformance.Chain.ChainState
d_ChainState_2378 a0 a1 = ()
newtype T_ChainState_2378
  = C_ChainState'46'constructor_5853 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2432
-- Ledger.Conway.Conformance.Chain.ChainState.newEpochState
d_newEpochState_2382 ::
  T_ChainState_2378 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2432
d_newEpochState_2382 v0
  = case coe v0 of
      C_ChainState'46'constructor_5853 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block
d_Block_2384 a0 a1 = ()
data T_Block_2384
  = C_Block'46'constructor_5911 [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140]
                                AgdaAny
-- Ledger.Conway.Conformance.Chain.Block.ts
d_ts_2390 ::
  T_Block_2384 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140]
d_ts_2390 v0
  = case coe v0 of
      C_Block'46'constructor_5911 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.Block.slot
d_slot_2392 :: T_Block_2384 -> AgdaAny
d_slot_2392 v0
  = case coe v0 of
      C_Block'46'constructor_5911 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.maybePurpose
d_maybePurpose_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_934 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_2404 v0 ~v1 v2 v3 v4
  = du_maybePurpose_2404 v0 v2 v3 v4
du_maybePurpose_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_934 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_2404 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1004
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2414
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
d_maybePurpose'45'prop_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_934 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_934 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_2436 = erased
-- Ledger.Conway.Conformance.Chain.filterPurpose
d_filterPurpose_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_934 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2478 v0 ~v1 v2 v3 = du_filterPurpose_2478 v0 v2 v3
du_filterPurpose_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_934 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2478 v0 v1 v2
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
         (coe du_maybePurpose_2404 (coe v0) (coe v1)) (coe v2))
-- Ledger.Conway.Conformance.Chain.govActionDeposits
d_govActionDeposits_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2492 v0 ~v1 v2
  = du_govActionDeposits_2492 v0 v2
du_govActionDeposits_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2492 v0 v1
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
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_916
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2414
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
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_GovActionState'46'constructor_5293 v5 v6 v7 v8 v9
                       -> case coe v6 of
                            MAlonzo.Code.Ledger.Core.Specification.Address.C_RwdAddr'46'constructor_3453 v10 v11
                              -> coe
                                   MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1272
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1306
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2212
                                               (coe v1))))
                                      (coe v11)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_190
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_204
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1274
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1272
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1306
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2212
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
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1278
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1306
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2212
                                                       (coe v1))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_942
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (let v13
                                                        = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2414
                                                            (coe v0) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1004
                                                       (coe v13)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_942
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1278
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1306
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2212
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2210
               (coe v1))))
-- Ledger.Conway.Conformance.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2222
d_calculateStakeDistrs_2548 v0 ~v1 v2
  = du_calculateStakeDistrs_2548 v0 v2
du_calculateStakeDistrs_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2222
du_calculateStakeDistrs_2548 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_StakeDistrs'46'constructor_15569
      (coe du_govActionDeposits_2492 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2598 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2598
  = C_CHAIN_2642 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2432
                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2644
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38
-- Ledger.Conway.Conformance.Chain._.newEpochState
d_newEpochState_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_42959 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2432
d_newEpochState_2602 ~v0 ~v1 v2 = du_newEpochState_2602 v2
du_newEpochState_2602 ::
  T_GeneralizeTel_42959 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2432
du_newEpochState_2602 v0
  = coe
      d_newEpochState_2382
      (coe d_'46'generalizedField'45's_42951 (coe v0))
-- Ledger.Conway.Conformance.Chain._.slot
d_slot_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_42959 -> AgdaAny
d_slot_2606 ~v0 ~v1 v2 = du_slot_2606 v2
du_slot_2606 :: T_GeneralizeTel_42959 -> AgdaAny
du_slot_2606 v0
  = coe d_slot_2392 (coe d_'46'generalizedField'45'b_42953 (coe v0))
-- Ledger.Conway.Conformance.Chain._.ts
d_ts_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_42959 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140]
d_ts_2608 ~v0 ~v1 v2 = du_ts_2608 v2
du_ts_2608 ::
  T_GeneralizeTel_42959 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140]
du_ts_2608 v0
  = coe d_ts_2390 (coe d_'46'generalizedField'45'b_42953 (coe v0))
-- Ledger.Conway.Conformance.Chain._.epochState
d_epochState_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_42959 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2408
d_epochState_2612 ~v0 ~v1 v2 = du_epochState_2612 v2
du_epochState_2612 ::
  T_GeneralizeTel_42959 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2408
du_epochState_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2442
      (coe d_'46'generalizedField'45'nes_42955 (coe v0))
-- Ledger.Conway.Conformance.Chain._.acnt
d_acnt_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_42959 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
d_acnt_2620 ~v0 ~v1 v2 = du_acnt_2620 v2
du_acnt_2620 ::
  T_GeneralizeTel_42959 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
du_acnt_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2420
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2442
         (coe d_'46'generalizedField'45'nes_42955 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.es
d_es_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_42959 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
d_es_2622 ~v0 ~v1 v2 = du_es_2622 v2
du_es_2622 ::
  T_GeneralizeTel_42959 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_948
du_es_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2426
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2442
         (coe d_'46'generalizedField'45'nes_42955 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.ls
d_ls_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_42959 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2200
d_ls_2626 ~v0 ~v1 v2 = du_ls_2626 v2
du_ls_2626 ::
  T_GeneralizeTel_42959 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2200
du_ls_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2424
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2442
         (coe d_'46'generalizedField'45'nes_42955 (coe v0)))
-- Ledger.Conway.Conformance.Chain._.constitution
d_constitution_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_42959 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2634 ~v0 ~v1 v2 = du_constitution_2634 v2
du_constitution_2634 ::
  T_GeneralizeTel_42959 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_962
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2426
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2442
            (coe d_'46'generalizedField'45'nes_42955 (coe v0))))
-- Ledger.Conway.Conformance.Chain._.pparams
d_pparams_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_GeneralizeTel_42959 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2636 ~v0 ~v1 v2 = du_pparams_2636 v2
du_pparams_2636 ::
  T_GeneralizeTel_42959 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_966
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2426
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2442
            (coe d_'46'generalizedField'45'nes_42955 (coe v0))))
-- Ledger.Conway.Conformance.Chain..generalizedField-s
d_'46'generalizedField'45's_42951 ::
  T_GeneralizeTel_42959 -> T_ChainState_2378
d_'46'generalizedField'45's_42951 v0
  = case coe v0 of
      C_mkGeneralizeTel_42961 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-b
d_'46'generalizedField'45'b_42953 ::
  T_GeneralizeTel_42959 -> T_Block_2384
d_'46'generalizedField'45'b_42953 v0
  = case coe v0 of
      C_mkGeneralizeTel_42961 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_42955 ::
  T_GeneralizeTel_42959 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2432
d_'46'generalizedField'45'nes_42955 v0
  = case coe v0 of
      C_mkGeneralizeTel_42961 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_42957 ::
  T_GeneralizeTel_42959 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2200
d_'46'generalizedField'45'ls''_42957 v0
  = case coe v0 of
      C_mkGeneralizeTel_42961 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Chain.GeneralizeTel
d_GeneralizeTel_42959 a0 a1 = ()
data T_GeneralizeTel_42959
  = C_mkGeneralizeTel_42961 T_ChainState_2378 T_Block_2384
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2432
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2200
