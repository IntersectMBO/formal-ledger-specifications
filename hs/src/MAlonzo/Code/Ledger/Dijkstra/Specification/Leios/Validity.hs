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

-- _._≤ᵉᵘ_
d__'8804''7497''7512'__22 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7497''7512'__22 = erased
-- _.HasSize-Tx
d_HasSize'45'Tx_540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4182
d_HasSize'45'Tx_540 ~v0 = du_HasSize'45'Tx_540
du_HasSize'45'Tx_540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4182
du_HasSize'45'Tx_540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4600
-- _.TopLevelTx
d_TopLevelTx_924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_924 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2686 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._.HasPParams-LedgerEnv
d_HasPParams'45'LedgerEnv_2728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
d_HasPParams'45'LedgerEnv_2728 ~v0 ~v1
  = du_HasPParams'45'LedgerEnv_2728
du_HasPParams'45'LedgerEnv_2728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
du_HasPParams'45'LedgerEnv_2728
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924
-- Ledger.Dijkstra.Specification.Leios.Validity._.HasUTxO-LedgerState
d_HasUTxO'45'LedgerState_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3848
d_HasUTxO'45'LedgerState_2738 ~v0 ~v1
  = du_HasUTxO'45'LedgerState_2738
du_HasUTxO'45'LedgerState_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3848
du_HasUTxO'45'LedgerState_2738
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3974
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv
d_LedgerEnv_2750 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState
d_LedgerState_2754 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.enactState
d_enactState_2796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_enactState_2796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_enactState_3914
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.pparams
d_pparams_2798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_pparams_2798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3912
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.ppolicy
d_ppolicy_2800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  Maybe AgdaAny
d_ppolicy_2800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_ppolicy_3910
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.slot
d_slot_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  AgdaAny
d_slot_2802 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3908
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerEnv.treasury
d_treasury_2804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  Integer
d_treasury_2804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_treasury_3916
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState.certState
d_certState_2808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1584
d_certState_2808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3948
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState.govSt
d_govSt_2810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3946
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.LedgerState.utxoSt
d_utxoSt_2812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3316
d_utxoSt_2812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3944
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.totalExUnits
d_totalExUnits_2836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866 ->
  AgdaAny
d_totalExUnits_2836 v0 ~v1 = du_totalExUnits_2836 v0
du_totalExUnits_2836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866 ->
  AgdaAny
du_totalExUnits_2836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totalExUnits_3226
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.totalRefScriptsSize
d_totalRefScriptsSize_2838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866 ->
  Integer
d_totalRefScriptsSize_2838 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3242
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Leios.Validity._.EndorserBlock
d_EndorserBlock_2844 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity._.EndorserBlock.ebTxRefs
d_ebTxRefs_2852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ebTxRefs_2852 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.TxRefHash
d_TxRefHash_2856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  ()
d_TxRefHash_2856 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity.refOf
d_refOf_2858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refOf_2858 ~v0 v1 v2 = du_refOf_2858 v1 v2
du_refOf_2858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_refOf_2858 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_txRefHash_3306
         v0 v1)
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3890
         (coe v1))
-- Ledger.Dijkstra.Specification.Leios.Validity._._.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  AgdaAny
d_leiosMaxEBExUnits_2910 ~v0 ~v1 v2 ~v3
  = du_leiosMaxEBExUnits_2910 v2
du_leiosMaxEBExUnits_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  AgdaAny
du_leiosMaxEBExUnits_2910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_440
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924)
         v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.leiosMaxEBSize
d_leiosMaxEBSize_2912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  Integer
d_leiosMaxEBSize_2912 ~v0 ~v1 v2 ~v3 = du_leiosMaxEBSize_2912 v2
du_leiosMaxEBSize_2912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  Integer
du_leiosMaxEBSize_2912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_432
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924)
         v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  Integer
d_leiosMaxEBTxsSize_2914 ~v0 ~v1 v2 ~v3
  = du_leiosMaxEBTxsSize_2914 v2
du_leiosMaxEBTxsSize_2914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  Integer
du_leiosMaxEBTxsSize_2914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_434
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924)
         v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2916 ~v0 ~v1 v2 ~v3
  = du_leiosMaxRefScriptSizePerEB_2916 v2
du_leiosMaxRefScriptSizePerEB_2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  Integer
du_leiosMaxRefScriptSizePerEB_2916 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_442
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924)
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
-- Ledger.Dijkstra.Specification.Leios.Validity._.WithinEBBounds.totExUnitsOK
d_totExUnitsOK_2996 :: T_WithinEBBounds_2968 -> AgdaAny
d_totExUnitsOK_2996 v0
  = case coe v0 of
      C_constructor_3002 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity._.WithinEBBounds.refScriptsSizeOK
d_refScriptsSizeOK_3000 ::
  T_WithinEBBounds_2968 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptsSizeOK_3000 v0
  = case coe v0 of
      C_constructor_3002 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB
d_ValidEB_3008 a0 a1 a2 a3 a4 a5 = ()
data T_ValidEB_3008
  = C_constructor_3038 MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
                       T_WithinEBBounds_2968 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB.nonemptyOK
d_nonemptyOK_3026 ::
  T_ValidEB_3008 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_nonemptyOK_3026 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB.uniqueRefsOK
d_uniqueRefsOK_3028 ::
  T_ValidEB_3008 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_uniqueRefsOK_3028 v0
  = case coe v0 of
      C_constructor_3038 v2 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB.refsOK
d_refsOK_3030 ::
  T_ValidEB_3008 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refsOK_3030 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB.boundsOK
d_boundsOK_3032 :: T_ValidEB_3008 -> T_WithinEBBounds_2968
d_boundsOK_3032 v0
  = case coe v0 of
      C_constructor_3038 v2 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB.extensionOK
d_extensionOK_3036 ::
  T_ValidEB_3008 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_extensionOK_3036 v0
  = case coe v0 of
      C_constructor_3038 v2 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity.nonempty?
d_nonempty'63'_3044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  () ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_nonempty'63'_3044 ~v0 ~v1 ~v2 v3 = du_nonempty'63'_3044 v3
du_nonempty'63'_3044 ::
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_nonempty'63'_3044 v0
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
d_Dec'45'WithinEBBounds_3154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'WithinEBBounds_3154 v0 v1 v2 v3 v4 v5
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
                       (coe d_totExUnitsOK_2996 (coe v6))
                       (coe d_refScriptsSizeOK_3000 (coe v6))))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
            (coe
               MAlonzo.Code.Class.Decidable.Core.d_dec_16
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_ebSize_3308
                     v1 v4)
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_432
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3912
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
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4190
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4600))
                        v5)
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_434
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3912
                           (coe v2)))))
               (coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                  (coe
                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8804''7497''7512''45'Dec_478
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                              (coe v0)))
                        (coe
                           MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totalExUnits_3226
                              (coe v0))
                           v5)
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_440
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3912
                              (coe v2)))))
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
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3242
                              (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3856
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3974)
                                 v3))
                           v5)
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_442
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3912
                              (coe v2)))))))))
-- Ledger.Dijkstra.Specification.Leios.Validity._._.ebSizeOK
d_ebSizeOK_3174 ::
  T_WithinEBBounds_2968 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_ebSizeOK_3174 v0 = coe d_ebSizeOK_2988 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.refScriptsSizeOK
d_refScriptsSizeOK_3176 ::
  T_WithinEBBounds_2968 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptsSizeOK_3176 v0 = coe d_refScriptsSizeOK_3000 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.totExUnitsOK
d_totExUnitsOK_3178 :: T_WithinEBBounds_2968 -> AgdaAny
d_totExUnitsOK_3178 v0 = coe d_totExUnitsOK_2996 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.txsSizeOK
d_txsSizeOK_3180 ::
  T_WithinEBBounds_2968 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_txsSizeOK_3180 v0 = coe d_txsSizeOK_2992 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._.ValidEB?
d_ValidEB'63'_3194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3936 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_ValidEB'63'_3194 v0 v1 v2 v3 v4 v5 v6
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
                 (coe d_uniqueRefsOK_3028 (coe v7))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                    (coe d_boundsOK_3032 (coe v7))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe du_nonempty'63'_3044 (coe v5))
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
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
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
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
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
                           (coe du_refOf_2858 (coe v1)) v5))))
               (coe
                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                  (coe
                     d_Dec'45'WithinEBBounds_3154 (coe v0) (coe v1) (coe v2) (coe v3)
                     (coe v4) (coe v5))))))
-- Ledger.Dijkstra.Specification.Leios.Validity._._.boundsOK
d_boundsOK_3216 :: T_ValidEB_3008 -> T_WithinEBBounds_2968
d_boundsOK_3216 v0 = coe d_boundsOK_3032 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.extensionOK
d_extensionOK_3218 ::
  T_ValidEB_3008 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_extensionOK_3218 v0 = coe d_extensionOK_3036 (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity._._.nonemptyOK
d_nonemptyOK_3220 ::
  T_ValidEB_3008 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_nonemptyOK_3220 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._._.refsOK
d_refsOK_3222 ::
  T_ValidEB_3008 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_refsOK_3222 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity._._.uniqueRefsOK
d_uniqueRefsOK_3224 ::
  T_ValidEB_3008 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_uniqueRefsOK_3224 v0 = coe d_uniqueRefsOK_3028 (coe v0)
