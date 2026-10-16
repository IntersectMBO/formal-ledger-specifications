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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4158
d_HasSize'45'Tx_536 ~v0 = du_HasSize'45'Tx_536
du_HasSize'45'Tx_536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4158
du_HasSize'45'Tx_536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4576
-- _.TopLevelTx
d_TopLevelTx_920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_920 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2674 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._.HasPParams-LedgerEnv
d_HasPParams'45'LedgerEnv_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
d_HasPParams'45'LedgerEnv_2716 ~v0 ~v1
  = du_HasPParams'45'LedgerEnv_2716
du_HasPParams'45'LedgerEnv_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
du_HasPParams'45'LedgerEnv_2716
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3912
-- Ledger.Dijkstra.Specification.Leios.Validity._.HasUTxO-LedgerState
d_HasUTxO'45'LedgerState_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3824
d_HasUTxO'45'LedgerState_2726 ~v0 ~v1
  = du_HasUTxO'45'LedgerState_2726
du_HasUTxO'45'LedgerState_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3824
du_HasUTxO'45'LedgerState_2726
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3962
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv
d_LedgerEnv_2738 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState
d_LedgerState_2742 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.enactState
d_enactState_2784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324
d_enactState_2784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_enactState_3902
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.pparams
d_pparams_2786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314
d_pparams_2786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3900
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.ppolicy
d_ppolicy_2788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  Maybe AgdaAny
d_ppolicy_2788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_ppolicy_3898
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.slot
d_slot_2790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  AgdaAny
d_slot_2790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3896
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.treasury
d_treasury_2792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  Integer
d_treasury_2792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_treasury_3904
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState.certState
d_certState_2796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1580
d_certState_2796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState.govSt
d_govSt_2798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3934
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState.utxoSt
d_utxoSt_2800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3290
d_utxoSt_2800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3932
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.refScriptsSize
d_refScriptsSize_2824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_refScriptsSize_2824 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_refScriptsSize_3492
      (coe v0) (coe v1) v3 v4
-- Ledger.Dijkstra.Specification.Leios.Validity._.totExUnits
d_totExUnits_2826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842 ->
  AgdaAny
d_totExUnits_2826 v0 ~v1 = du_totExUnits_2826 v0
du_totExUnits_2826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842 ->
  AgdaAny
du_totExUnits_2826 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3216
      (coe v0) v2
-- Ledger.Dijkstra.Specification.Leios.Validity._.EndorserBlock
d_EndorserBlock_2832 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity._.EndorserBlock.ebTxRefs
d_ebTxRefs_2840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ebTxRefs_2840 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.TxRefHash
d_TxRefHash_2844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_TxRefHash_2844 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity.refOf
d_refOf_2846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refOf_2846 ~v0 v1 v2 = du_refOf_2846 v1 v2
du_refOf_2846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_refOf_2846 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_txRefHash_3294
         v0 v1)
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3866
         (coe v1))
-- Ledger.Dijkstra.Specification.Leios.Validity._._.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  AgdaAny
d_leiosMaxEBExUnits_2898 ~v0 ~v1 v2 ~v3
  = du_leiosMaxEBExUnits_2898 v2
du_leiosMaxEBExUnits_2898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  AgdaAny
du_leiosMaxEBExUnits_2898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_436
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3912)
         v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.leiosMaxEBSize
d_leiosMaxEBSize_2900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  Integer
d_leiosMaxEBSize_2900 ~v0 ~v1 v2 ~v3 = du_leiosMaxEBSize_2900 v2
du_leiosMaxEBSize_2900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  Integer
du_leiosMaxEBSize_2900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_428
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3912)
         v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  Integer
d_leiosMaxEBTxsSize_2902 ~v0 ~v1 v2 ~v3
  = du_leiosMaxEBTxsSize_2902 v2
du_leiosMaxEBTxsSize_2902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  Integer
du_leiosMaxEBTxsSize_2902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_430
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3912)
         v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2904 ~v0 ~v1 v2 ~v3
  = du_leiosMaxRefScriptSizePerEB_2904 v2
du_leiosMaxRefScriptSizePerEB_2904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  Integer
du_leiosMaxRefScriptSizePerEB_2904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_438
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_740
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3912)
         v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.WithinEBBounds
d_WithinEBBounds_2956 a0 a1 a2 a3 a4 a5 = ()
data T_WithinEBBounds_2956
  = C_constructor_2990 MAlonzo.Code.Data.Nat.Base.T__'8804'__22
                       MAlonzo.Code.Data.Nat.Base.T__'8804'__22 AgdaAny
                       MAlonzo.Code.Data.Nat.Base.T__'8804'__22
-- Ledger.Dijkstra.Specification.Leios.Validity._.WithinEBBounds.ebSizeOK
d_ebSizeOK_2976 ::
  T_WithinEBBounds_2956 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_ebSizeOK_2976 v0
  = case coe v0 of
      C_constructor_2990 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity._.WithinEBBounds.txsSizeOK
d_txsSizeOK_2980 ::
  T_WithinEBBounds_2956 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_txsSizeOK_2980 v0
  = case coe v0 of
      C_constructor_2990 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity._.WithinEBBounds.totExUnitsOK
d_totExUnitsOK_2984 :: T_WithinEBBounds_2956 -> AgdaAny
d_totExUnitsOK_2984 v0
  = case coe v0 of
      C_constructor_2990 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity._.WithinEBBounds.refScriptsSizeOK
d_refScriptsSizeOK_2988 ::
  T_WithinEBBounds_2956 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptsSizeOK_2988 v0
  = case coe v0 of
      C_constructor_2990 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB
d_ValidEB_2996 a0 a1 a2 a3 a4 a5 = ()
data T_ValidEB_2996
  = C_constructor_3026 MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
                       T_WithinEBBounds_2956 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB.nonemptyOK
d_nonemptyOK_3014 ::
  T_ValidEB_2996 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_nonemptyOK_3014 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB.uniqueRefsOK
d_uniqueRefsOK_3016 ::
  T_ValidEB_2996 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_uniqueRefsOK_3016 v0
  = case coe v0 of
      C_constructor_3026 v2 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB.refsOK
d_refsOK_3018 ::
  T_ValidEB_2996 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refsOK_3018 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB.boundsOK
d_boundsOK_3020 :: T_ValidEB_2996 -> T_WithinEBBounds_2956
d_boundsOK_3020 v0
  = case coe v0 of
      C_constructor_3026 v2 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB.extensionOK
d_extensionOK_3024 ::
  T_ValidEB_2996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_extensionOK_3024 v0
  = case coe v0 of
      C_constructor_3026 v2 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity.nonempty?
d_nonempty'63'_3032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  () ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_nonempty'63'_3032 ~v0 ~v1 ~v2 v3 = du_nonempty'63'_3032 v3
du_nonempty'63'_3032 ::
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_nonempty'63'_3032 v0
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
d_Dec'45'WithinEBBounds_3142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'WithinEBBounds_3142 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
         (coe
            (\ v6 ->
               coe
                 C_constructor_2990
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
                 (coe d_ebSizeOK_2976 (coe v6))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe d_txsSizeOK_2980 (coe v6))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe d_totExUnitsOK_2984 (coe v6))
                       (coe d_refScriptsSizeOK_2988 (coe v6))))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
            (coe
               MAlonzo.Code.Class.Decidable.Core.d_dec_16
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_ebSize_3296
                     v1 v4)
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_428
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3900
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
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4166
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4576))
                        v5)
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_430
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3900
                           (coe v2)))))
               (coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                  (coe
                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_474
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_570
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2214
                              (coe v0)))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_436
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3900
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_458
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_570
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2214
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3216
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
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_refScriptsSize_3492
                                (coe v0) (coe v1) (coe v6)
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3832
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3962)
                                   v3))
                           v5)
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_438
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3900
                              (coe v2)))))))))
-- Ledger.Dijkstra.Specification.Leios.Validity._._.ebSizeOK
d_ebSizeOK_3162 ::
  T_WithinEBBounds_2956 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_ebSizeOK_3162 v0 = coe d_ebSizeOK_2976 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.refScriptsSizeOK
d_refScriptsSizeOK_3164 ::
  T_WithinEBBounds_2956 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptsSizeOK_3164 v0 = coe d_refScriptsSizeOK_2988 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.totExUnitsOK
d_totExUnitsOK_3166 :: T_WithinEBBounds_2956 -> AgdaAny
d_totExUnitsOK_3166 v0 = coe d_totExUnitsOK_2984 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.txsSizeOK
d_txsSizeOK_3168 ::
  T_WithinEBBounds_2956 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_txsSizeOK_3168 v0 = coe d_txsSizeOK_2980 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB?
d_ValidEB'63'_3182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_ValidEB'63'_3182 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
      (coe
         (\ v7 ->
            coe
              C_constructor_3026
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
                 (coe d_uniqueRefsOK_3016 (coe v7))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                    (coe d_boundsOK_3020 (coe v7))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe du_nonempty'63'_3032 (coe v5))
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
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1414
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
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1414
                                 (coe v0)))
                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
                        (coe v4))
                     (let v7
                            = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 in
                      coe
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22 v7 () erased () erased
                           (coe du_refOf_2846 (coe v1)) v5))))
               (coe
                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                  (coe
                     d_Dec'45'WithinEBBounds_3142 (coe v0) (coe v1) (coe v2) (coe v3)
                     (coe v4) (coe v5))))))
-- Ledger.Dijkstra.Specification.Leios.Validity._._.boundsOK
d_boundsOK_3204 :: T_ValidEB_2996 -> T_WithinEBBounds_2956
d_boundsOK_3204 v0 = coe d_boundsOK_3020 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.extensionOK
d_extensionOK_3206 ::
  T_ValidEB_2996 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_extensionOK_3206 v0 = coe d_extensionOK_3024 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.nonemptyOK
d_nonemptyOK_3208 ::
  T_ValidEB_2996 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_nonemptyOK_3208 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._._.refsOK
d_refsOK_3210 ::
  T_ValidEB_2996 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refsOK_3210 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._._.uniqueRefsOK
d_uniqueRefsOK_3212 ::
  T_ValidEB_2996 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_uniqueRefsOK_3212 v0 = coe d_uniqueRefsOK_3016 (coe v0)
