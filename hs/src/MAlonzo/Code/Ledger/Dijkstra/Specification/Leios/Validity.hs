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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _._≥ᵉ_
d__'8805''7497'__24 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__24 = erased
-- _.HasSize-Tx
d_HasSize'45'Tx_536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4166
d_HasSize'45'Tx_536 ~v0 = du_HasSize'45'Tx_536
du_HasSize'45'Tx_536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4166
du_HasSize'45'Tx_536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4584
-- _.TopLevelTx
d_TopLevelTx_922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_922 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2678 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._.HasPParams-LedgerEnv
d_HasPParams'45'LedgerEnv_2720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
d_HasPParams'45'LedgerEnv_2720 ~v0 ~v1
  = du_HasPParams'45'LedgerEnv_2720
du_HasPParams'45'LedgerEnv_2720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
du_HasPParams'45'LedgerEnv_2720
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3916
-- Ledger.Dijkstra.Specification.Leios.Validity._.HasUTxO-LedgerState
d_HasUTxO'45'LedgerState_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3832
d_HasUTxO'45'LedgerState_2730 ~v0 ~v1
  = du_HasUTxO'45'LedgerState_2730
du_HasUTxO'45'LedgerState_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3832
du_HasUTxO'45'LedgerState_2730
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3966
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv
d_LedgerEnv_2742 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState
d_LedgerState_2746 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.enactState
d_enactState_2788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_enactState_2788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_enactState_3906
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.pparams
d_pparams_2790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_pparams_2790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3904
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.ppolicy
d_ppolicy_2792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  Maybe AgdaAny
d_ppolicy_2792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_ppolicy_3902
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.slot
d_slot_2794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  AgdaAny
d_slot_2794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3900
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.treasury
d_treasury_2796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  Integer
d_treasury_2796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_treasury_3908
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState.certState
d_certState_2800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1584
d_certState_2800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState.govSt
d_govSt_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2802 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3938
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState.utxoSt
d_utxoSt_2804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3294
d_utxoSt_2804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3936
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.refScriptsSize
d_refScriptsSize_2828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_refScriptsSize_2828 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_refScriptsSize_3496
      (coe v0) (coe v1) v3 v4
-- Ledger.Dijkstra.Specification.Leios.Validity._.totExUnits
d_totExUnits_2830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850 ->
  AgdaAny
d_totExUnits_2830 v0 ~v1 = du_totExUnits_2830 v0
du_totExUnits_2830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850 ->
  AgdaAny
du_totExUnits_2830 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3220
      (coe v0) v2
-- Ledger.Dijkstra.Specification.Leios.Validity._.EndorserBlock
d_EndorserBlock_2838 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity._.EndorserBlock.ebTxRefs
d_ebTxRefs_2846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ebTxRefs_2846 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.TxRefHash
d_TxRefHash_2850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  ()
d_TxRefHash_2850 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity.refOf
d_refOf_2852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refOf_2852 ~v0 v1 v2 = du_refOf_2852 v1 v2
du_refOf_2852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_refOf_2852 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_txRefHash_3298
         v0 v1)
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3874
         (coe v1))
-- Ledger.Dijkstra.Specification.Leios.Validity.MatchesRefs
d_MatchesRefs_2856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  ()
d_MatchesRefs_2856 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._._.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  AgdaAny
d_leiosMaxEBExUnits_2910 ~v0 ~v1 v2 ~v3
  = du_leiosMaxEBExUnits_2910 v2
du_leiosMaxEBExUnits_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  AgdaAny
du_leiosMaxEBExUnits_2910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_436
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3916)
         v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.leiosMaxEBSize
d_leiosMaxEBSize_2912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  Integer
d_leiosMaxEBSize_2912 ~v0 ~v1 v2 ~v3 = du_leiosMaxEBSize_2912 v2
du_leiosMaxEBSize_2912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  Integer
du_leiosMaxEBSize_2912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_428
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3916)
         v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  Integer
d_leiosMaxEBTxsSize_2914 ~v0 ~v1 v2 ~v3
  = du_leiosMaxEBTxsSize_2914 v2
du_leiosMaxEBTxsSize_2914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  Integer
du_leiosMaxEBTxsSize_2914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_430
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3916)
         v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2916 ~v0 ~v1 v2 ~v3
  = du_leiosMaxRefScriptSizePerEB_2916 v2
du_leiosMaxRefScriptSizePerEB_2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  Integer
du_leiosMaxRefScriptSizePerEB_2916 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_438
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3916)
         v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.WithinEBBounds
d_WithinEBBounds_2968 a0 a1 a2 a3 a4 a5 = ()
data T_WithinEBBounds_2968
  = C_constructor_3002 MAlonzo.Code.Data.Nat.Base.T__'8804'__22
                       MAlonzo.Code.Data.Nat.Base.T__'8804'__22 AgdaAny
                       MAlonzo.Code.Data.Nat.Base.T__'8804'__22
-- Ledger.Dijkstra.Specification.Leios.Validity._.WithinEBBounds.ebSizeOK
d_ebSizeOK_2988 ::
  T_WithinEBBounds_2968 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_ebSizeOK_2988 v0
  = case coe v0 of
      C_constructor_3002 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity._.WithinEBBounds.txsSizeOK
d_txsSizeOK_2992 ::
  T_WithinEBBounds_2968 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_txsSizeOK_2992 v0
  = case coe v0 of
      C_constructor_3002 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity._.WithinEBBounds.exUnitsOK
d_exUnitsOK_2996 :: T_WithinEBBounds_2968 -> AgdaAny
d_exUnitsOK_2996 v0
  = case coe v0 of
      C_constructor_3002 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity._.WithinEBBounds.refScriptsOK
d_refScriptsOK_3000 ::
  T_WithinEBBounds_2968 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptsOK_3000 v0
  = case coe v0 of
      C_constructor_3002 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB
d_ValidEB_3008 a0 a1 a2 a3 a4 a5 = ()
data T_ValidEB_3008
  = C_constructor_3038 MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
                       T_WithinEBBounds_2968 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB.nonempty
d_nonempty_3026 ::
  T_ValidEB_3008 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_nonempty_3026 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB.uniqueRefs
d_uniqueRefs_3028 ::
  T_ValidEB_3008 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_uniqueRefs_3028 v0
  = case coe v0 of
      C_constructor_3038 v2 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB.matchesRefs
d_matchesRefs_3030 ::
  T_ValidEB_3008 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_matchesRefs_3030 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB.withinBounds
d_withinBounds_3032 :: T_ValidEB_3008 -> T_WithinEBBounds_2968
d_withinBounds_3032 v0
  = case coe v0 of
      C_constructor_3038 v2 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB.validExtension
d_validExtension_3036 ::
  T_ValidEB_3008 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_validExtension_3036 v0
  = case coe v0 of
      C_constructor_3038 v2 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity.Dec-Unique
d_Dec'45'Unique_3046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'Unique_3046 ~v0 ~v1 v2 v3 = du_Dec'45'Unique_3046 v2 v3
du_Dec'45'Unique_3046 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'Unique_3046 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid.du_unique'63'_66
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
            (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0)))
         v1)
-- Ledger.Dijkstra.Specification.Leios.Validity.nonempty?
d_nonempty'63'_3054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  () ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_nonempty'63'_3054 ~v0 ~v1 ~v2 v3 = du_nonempty'63'_3054 v3
du_nonempty'63'_3054 ::
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_nonempty'63'_3054 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      (:) v1 v2
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity._.Dec-WithinEBBounds
d_Dec'45'WithinEBBounds_3164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'WithinEBBounds_3164 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
         (coe
            (\ v6 ->
               coe
                 C_constructor_3002
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))))))
         (coe
            (\ v6 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe d_ebSizeOK_2988 (coe v6))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe d_txsSizeOK_2992 (coe v6))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe d_exUnitsOK_2996 (coe v6))
                       (coe d_refScriptsOK_3000 (coe v6))))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
            (coe
               MAlonzo.Code.Class.Decidable.Core.d_dec_16
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_ebSize_3300
                     v1 v4)
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_428
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3904
                        (coe v2)))))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
               (coe
                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                     (coe
                        MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                        (coe
                           MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4174
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4584))
                        v5)
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_430
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3904
                           (coe v2)))))
               (coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                  (coe
                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_478
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_574
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2222
                              (coe v0)))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_436
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3904
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_574
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2222
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3220
                              (coe v0))
                           v5)))
                  (coe
                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                        (coe
                           MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                           (coe
                              MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                              (coe
                                 MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                           (\ v6 ->
                              coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_refScriptsSize_3496
                                (coe v0) (coe v1) (coe v6)
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3840
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3966)
                                   v3))
                           v5)
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_438
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3904
                              (coe v2)))))))))
-- Ledger.Dijkstra.Specification.Leios.Validity._._.ebSizeOK
d_ebSizeOK_3184 ::
  T_WithinEBBounds_2968 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_ebSizeOK_3184 v0 = coe d_ebSizeOK_2988 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.exUnitsOK
d_exUnitsOK_3186 :: T_WithinEBBounds_2968 -> AgdaAny
d_exUnitsOK_3186 v0 = coe d_exUnitsOK_2996 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.refScriptsOK
d_refScriptsOK_3188 ::
  T_WithinEBBounds_2968 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptsOK_3188 v0 = coe d_refScriptsOK_3000 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.txsSizeOK
d_txsSizeOK_3190 ::
  T_WithinEBBounds_2968 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_txsSizeOK_3190 v0 = coe d_txsSizeOK_2992 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB?
d_ValidEB'63'_3204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_ValidEB'63'_3204 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
      (coe
         (\ v7 ->
            coe
              C_constructor_3038
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7)))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))))
              v6))
      (coe
         (\ v7 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe d_uniqueRefs_3028 (coe v7))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                    (coe d_withinBounds_3032 (coe v7))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe du_nonempty'63'_3054 (coe v5))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
            (coe
               MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid.du_unique'63'_66
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'TxRefHash_186
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1418
                           (coe v0)))))
               (let v7
                      = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 in
                coe
                  (coe
                     MAlonzo.Code.Class.Functor.Core.du_fmap_22 v7 () erased () erased
                     (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
                        (coe v4)))))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
               (coe
                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                     (coe
                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'List_58
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'TxRefHash_186
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1418
                                 (coe v0)))
                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
                        (coe v4))
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased (coe du_refOf_2852 (coe v1)) v5)))
               (coe
                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                  (coe
                     d_Dec'45'WithinEBBounds_3164 (coe v0) (coe v1) (coe v2) (coe v3)
                     (coe v4) (coe v5))))))
-- Ledger.Dijkstra.Specification.Leios.Validity._._.matchesRefs
d_matchesRefs_3226 ::
  T_ValidEB_3008 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_matchesRefs_3226 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._._.nonempty
d_nonempty_3228 ::
  T_ValidEB_3008 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_nonempty_3228 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._._.uniqueRefs
d_uniqueRefs_3230 ::
  T_ValidEB_3008 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_uniqueRefs_3230 v0 = coe d_uniqueRefs_3028 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.validExtension
d_validExtension_3232 ::
  T_ValidEB_3008 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_validExtension_3232 v0 = coe d_validExtension_3036 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.withinBounds
d_withinBounds_3234 :: T_ValidEB_3008 -> T_WithinEBBounds_2968
d_withinBounds_3234 v0 = coe d_withinBounds_3032 (coe v0)
