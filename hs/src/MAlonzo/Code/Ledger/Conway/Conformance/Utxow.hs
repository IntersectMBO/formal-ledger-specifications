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

module MAlonzo.Code.Ledger.Conway.Conformance.Utxow where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxow
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Hashable-Script
d_Hashable'45'Script_394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_408
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
         (coe v0))
-- _.Tx
d_Tx_622 a0 = ()
-- _.isKeyHashObj
d_isKeyHashObj_744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_744 ~v0 = du_isKeyHashObj_744
du_isKeyHashObj_744 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_744
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- _.isScriptObj
d_isScriptObj_764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_764 ~v0 = du_isScriptObj_764
du_isScriptObj_764 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_764
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- _.isSigned
d_isSigned_768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_768 = erased
-- _.refScripts
d_refScripts_818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3716
      (coe v0)
-- _.toP1Script
d_toP1Script_834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_834 ~v0 = du_toP1Script_834
du_toP1Script_834 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_834
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_422
-- _.txscripts
d_txscripts_848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3764
      (coe v0)
-- _.validP1Script
d_validP1Script_858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_858 = erased
-- _.PParams.costmdls
d_costmdls_1442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_1442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_428
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
         (coe v0))
-- _.Tx.body
d_body_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_body_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
      (coe v0)
-- _.Tx.isValid
d_isValid_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Bool
d_isValid_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3652
      (coe v0)
-- _.Tx.txAD
d_txAD_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Maybe AgdaAny
d_txAD_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3654
      (coe v0)
-- _.Tx.txsize
d_txsize_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Integer
d_txsize_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3650
      (coe v0)
-- _.Tx.wits
d_wits_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612
d_wits_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2038 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv
d_UTxOEnv_2054 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOState
d_UTxOState_2058 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.pparams
d_pparams_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2488 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2498
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.slot
d_slot_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2488 ->
  AgdaAny
d_slot_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2496 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.treasury
d_treasury_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2488 ->
  Integer
d_treasury_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2500
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.deposits
d_deposits_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2518
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.donations
d_donations_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504 ->
  Integer
d_donations_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2520
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.fees
d_fees_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504 ->
  Integer
d_fees_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2516 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.utxo
d_utxo_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.credentialToP2Script
d_credentialToP2Script_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_credentialToP2Script_2114 v0 ~v1
  = du_credentialToP2Script_2114 v0
du_credentialToP2Script_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_credentialToP2Script_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credentialToP2Script_2894
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.credsNeeded
d_credsNeeded_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2116 v0 ~v1 = du_credsNeeded_2116 v0
du_credsNeeded_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2822
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.rdptr
d_rdptr_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_2124 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_rdptr_2568
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow._.txOutToDataHash
d_txOutToDataHash_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDataHash_2128 ~v0 ~v1 = du_txOutToDataHash_2128
du_txOutToDataHash_2128 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDataHash_2128
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2890
-- Ledger.Conway.Conformance.Utxow._.txOutToP2Script
d_txOutToP2Script_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToP2Script_2130 v0 ~v1 = du_txOutToP2Script_2130 v0
du_txOutToP2Script_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToP2Script_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2906
      (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.Dec-HasDataHash
d_Dec'45'HasDataHash_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasDataHash_2550 ~v0 ~v1 = du_Dec'45'HasDataHash_2550
du_Dec'45'HasDataHash_2550 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasDataHash_2550
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_Dec'45'HasDataHash_2698
-- Ledger.Conway.Conformance.Utxow.L._.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_2552 ~v0 ~v1
  = du_Dec'45'HasInlineDatum_2552
du_Dec'45'HasInlineDatum_2552 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_2552
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_Dec'45'HasInlineDatum_2682
-- Ledger.Conway.Conformance.Utxow.L._.TxOutSpendable-PlutusV1
d_TxOutSpendable'45'PlutusV1_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_TxOutSpendable'45'PlutusV1_2574 = erased
-- Ledger.Conway.Conformance.Utxow.L._.TxOutSpendable-PlutusV2
d_TxOutSpendable'45'PlutusV2_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_TxOutSpendable'45'PlutusV2_2576 = erased
-- Ledger.Conway.Conformance.Utxow.L._.allowedLanguages
d_allowedLanguages_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2584 v0 ~v1 = du_allowedLanguages_2584 v0
du_allowedLanguages_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_allowedLanguages_2852
      (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.hashScriptIntegrity
d_hashScriptIntegrity_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> Maybe AgdaAny
d_hashScriptIntegrity_2590 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxow.d_hashScriptIntegrity_2916
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.languages
d_languages_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny] -> [AgdaAny]
d_languages_2592 v0 ~v1 = du_languages_2592 v0
du_languages_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny] -> [AgdaAny]
du_languages_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_languages_2842
      (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'UTxOEnv_2642 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_2642
du_HasPParams'45'UTxOEnv_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'UTxOEnv_2642
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasPParams'45'UTxOEnv_2544
-- Ledger.Conway.Conformance.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2810 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2810
  = C_UTXOW'45'inductive_2934 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxow._.txAD
d_txAD_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12109 -> Maybe AgdaAny
d_txAD_2824 ~v0 ~v1 v2 = du_txAD_2824 v2
du_txAD_2824 :: T_GeneralizeTel_12109 -> Maybe AgdaAny
du_txAD_2824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3654
      (coe d_'46'generalizedField'45'tx_12101 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.body
d_body_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12109 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_body_2826 ~v0 ~v1 v2 = du_body_2826 v2
du_body_2826 ::
  T_GeneralizeTel_12109 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
du_body_2826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
      (coe d_'46'generalizedField'45'tx_12101 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.wits
d_wits_2830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12109 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612
d_wits_2830 ~v0 ~v1 v2 = du_wits_2830 v2
du_wits_2830 ::
  T_GeneralizeTel_12109 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612
du_wits_2830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
      (coe d_'46'generalizedField'45'tx_12101 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.refInputs
d_refInputs_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12109 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2840 ~v0 ~v1 v2 = du_refInputs_2840 v2
du_refInputs_2840 ::
  T_GeneralizeTel_12109 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3474
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_12101 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.reqSignerHashes
d_reqSignerHashes_2842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12109 -> [AgdaAny]
d_reqSignerHashes_2842 ~v0 ~v1 v2 = du_reqSignerHashes_2842 v2
du_reqSignerHashes_2842 :: T_GeneralizeTel_12109 -> [AgdaAny]
du_reqSignerHashes_2842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3504
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_12101 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scriptIntegrityHash
d_scriptIntegrityHash_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12109 -> Maybe AgdaAny
d_scriptIntegrityHash_2844 ~v0 ~v1 v2
  = du_scriptIntegrityHash_2844 v2
du_scriptIntegrityHash_2844 ::
  T_GeneralizeTel_12109 -> Maybe AgdaAny
du_scriptIntegrityHash_2844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3506
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_12101 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txADhash
d_txADhash_2846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12109 -> Maybe AgdaAny
d_txADhash_2846 ~v0 ~v1 v2 = du_txADhash_2846 v2
du_txADhash_2846 :: T_GeneralizeTel_12109 -> Maybe AgdaAny
du_txADhash_2846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3490
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_12101 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txId
d_txId_2858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12109 -> AgdaAny
d_txId_2858 ~v0 ~v1 v2 = du_txId_2858 v2
du_txId_2858 :: T_GeneralizeTel_12109 -> AgdaAny
du_txId_2858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3480
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_12101 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txIns
d_txIns_2860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12109 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2860 ~v0 ~v1 v2 = du_txIns_2860 v2
du_txIns_2860 ::
  T_GeneralizeTel_12109 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_12101 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txOuts
d_txOuts_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12109 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2864 ~v0 ~v1 v2 = du_txOuts_2864 v2
du_txOuts_2864 ::
  T_GeneralizeTel_12109 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3478
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_12101 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txVldt
d_txVldt_2866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12109 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2866 ~v0 ~v1 v2 = du_txVldt_2866 v2
du_txVldt_2866 ::
  T_GeneralizeTel_12109 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3488
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_12101 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scripts
d_scripts_2872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12109 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2872 ~v0 ~v1 v2 = du_scripts_2872 v2
du_scripts_2872 ::
  T_GeneralizeTel_12109 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3624
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
         (coe d_'46'generalizedField'45'tx_12101 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txdats
d_txdats_2876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12109 -> [AgdaAny]
d_txdats_2876 ~v0 ~v1 v2 = du_txdats_2876 v2
du_txdats_2876 :: T_GeneralizeTel_12109 -> [AgdaAny]
du_txdats_2876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3626
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
         (coe d_'46'generalizedField'45'tx_12101 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txrdmrs
d_txrdmrs_2878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12109 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2878 ~v0 ~v1 v2 = du_txrdmrs_2878 v2
du_txrdmrs_2878 ::
  T_GeneralizeTel_12109 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_2878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3628
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
         (coe d_'46'generalizedField'45'tx_12101 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.vkSigs
d_vkSigs_2880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12109 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2880 ~v0 ~v1 v2 = du_vkSigs_2880 v2
du_vkSigs_2880 ::
  T_GeneralizeTel_12109 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3622
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
         (coe d_'46'generalizedField'45'tx_12101 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.utxo
d_utxo_2890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_12109 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2890 ~v0 ~v1 v2 = du_utxo_2890 v2
du_utxo_2890 ::
  T_GeneralizeTel_12109 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
      (coe d_'46'generalizedField'45's_12103 (coe v0))
-- Ledger.Conway.Conformance.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2488 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2968 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               (\ v5 ->
                  coe
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
                    (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                          (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txidBytes_2658
                       v0
                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3480
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                             (coe v2))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3622
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
                     (coe v2)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                       (coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                             (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_126
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                      (coe v0))))
                             v5)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_mapPartial_604
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (\ v6 ->
                                coe
                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2822
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                   (coe v3))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                   (coe v2)))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_124
                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_426
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3622
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
                                      (coe v2)))))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3488
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                (coe v2)))
                          v5)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_604
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_422)
                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3764
                     (coe v0) (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                        (coe v3)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                  (coe
                     (\ v5 ->
                        coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                                   (coe v0))))
                          (coe v5)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_426
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3622
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
                                      (coe v2)))))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8746'__708
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_mapPartial_604
                        (MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (\ v5 ->
                           coe
                             MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2822
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514 (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3504
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                           (coe v2)))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                                      (coe v0)))
                                (coe v5)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_426
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_408
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3624
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
                                         (coe v2))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du__'65340'__758
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              erased
                              (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_mapPartial_604
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (\ v5 ->
                                 coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2822
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                    (coe v3))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_426
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_408
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3716
                                 (coe v0) (coe v2)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                    (coe v3))))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                                      (coe v0)))
                                (coe v5)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du__'65340'__758
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                      erased
                                      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (\ v6 ->
                                         coe
                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2822
                                         (coe v0)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                            (coe v3))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                            (coe v2))))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_426
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_408
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3716
                                         (coe v0) (coe v2)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                            (coe v3)))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_426
                           (MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_408
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3624
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
                                 (coe v2))))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                               (coe v0))))))
                                (coe v5)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_426
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                                     (coe v0)))))))
                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3626
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
                                         (coe v2))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_mapPartial_604
                           (MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2906
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                      (coe v3))
                                   (coe v2) (coe v5))
                                (coe
                                   MAlonzo.Code.Level.C_lift_20
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                (coe
                                   (\ v6 ->
                                      coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2890
                                        (coe v5)))
                                (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_range_588
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                    erased
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                       MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                       MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1354
                                          (coe v0))
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1352
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                    (coe v3))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                       (coe v2)))))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                           (coe
                              (\ v5 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                                  (coe v0))))))
                                   (coe v5)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__708
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (\ v6 ->
                                            coe
                                              MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2906
                                                 (coe v0)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                                    (coe v3))
                                                 (coe v2) (coe v6))
                                              (coe
                                                 MAlonzo.Code.Level.C_lift_20
                                                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                              (coe
                                                 (\ v7 ->
                                                    coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2890
                                                      (coe v6)))
                                              (coe
                                                 (\ v7 ->
                                                    coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_range_588
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                     MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                     MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1354
                                                        (coe v0))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1352
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                                  (coe v3))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                                     (coe v2))))))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__708
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2890)
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_588
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3478
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                                     (coe v2)))))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2890)
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_588
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                        MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                        erased
                                                        MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                        erased
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1354
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1352
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                                     (coe v3))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3474
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                                        (coe v2))))))))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_426
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                                (coe v0)))))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3626
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                 (coe
                                    (\ v5 ->
                                       coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (coe
                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased
                                            () erased
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1352
                                               (coe v0)))
                                         (coe v5)
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (\ v6 ->
                                               coe
                                                 MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                 (coe
                                                    MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credentialToP2Script_2894
                                                    (coe v0)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                                       (coe v3))
                                                    (coe v2)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe v6)))
                                                 (coe
                                                    MAlonzo.Code.Level.C_lift_20
                                                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                 (coe
                                                    (\ v7 ->
                                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_rdptr_2568
                                                         (coe v0) (coe v1)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                                            (coe v2))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v6))))
                                                 (coe
                                                    (\ v7 ->
                                                       coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2822
                                               (coe v0)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                                  (coe v3))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                                  (coe v2))))))
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_586
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3628
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
                                          (coe v2)))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                 (coe
                                    (\ v5 ->
                                       coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (coe
                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased
                                            () erased
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1352
                                               (coe v0)))
                                         (coe v5)
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_dom_586
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3628
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
                                                  (coe v2))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (\ v5 ->
                                       coe
                                         MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                         (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credentialToP2Script_2894
                                            (coe v0)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                               (coe v3))
                                            (coe v2)
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                                         (coe
                                            MAlonzo.Code.Level.C_lift_20
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                         (coe
                                            (\ v6 ->
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_rdptr_2568
                                                 (coe v0) (coe v1)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                                    (coe v2))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v5))))
                                         (coe
                                            (\ v6 ->
                                               coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2822
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                          (coe v3))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                          (coe v2))))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                 (coe
                                    (\ v5 ->
                                       coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                                  (coe v0))))
                                         (coe v5)
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du__'8745'__732
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                               erased
                                               (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                                        (coe v0)))))
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_dom_586
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_428
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2498
                                                     (coe v4))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_allowedLanguages_2852
                                               (coe v0) (coe v2)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                                  (coe v3))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_languages_2842
                                    (coe v0) (coe v2)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                       (coe v3))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2822
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                             (coe v3))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                             (coe v2))))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAll_30
                                            (coe
                                               (\ v6 ->
                                                  coe
                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                    (coe
                                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                                                (coe v0))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_280
                                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                                                (coe v0)))
                                                          v6)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_222
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                                                (coe v0)))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_Dec'45'HasDataHash_2698
                                                       (coe v5))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2906
                                               (coe v0)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                                  (coe v3))
                                               (coe v2) (coe v5))))
                                    (coe
                                       MAlonzo.Code.Class.IsSet.du_range_588
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1354
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1352
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                             (coe v3))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                                (coe v2))))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAll_30
                                               (coe
                                                  (\ v6 ->
                                                     coe
                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_280
                                                             (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                                                   (coe v0)))
                                                             v6)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_224
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                                                   (coe v0)))))
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_Dec'45'HasDataHash_2698
                                                             (coe v5))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_Dec'45'HasInlineDatum_2682
                                                             (coe v5)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2906
                                                  (coe v0)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                                     (coe v3))
                                                  (coe v2) (coe v5))))
                                       (coe
                                          MAlonzo.Code.Class.IsSet.du_range_588
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased
                                                (coe
                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                   MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                   MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1354
                                                      (coe v0))
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1352
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                                (coe v3))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                                   (coe v2))))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1356
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3490
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                             MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                             MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                             (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1356
                                                      (coe v0))))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3654
                                                (coe v2))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3506
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxow.d_hashScriptIntegrity_2916
                                             (coe v0) (coe v1)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2498
                                                (coe v4))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_languages_2842
                                                (coe v0) (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (\ v5 ->
                                                      coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2822
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514
                                                         (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
                                                         (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3628
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
                                                   (coe v2)))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3626
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
                                                   (coe v2))))))))))))))))
-- Ledger.Conway.Conformance.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_12101 ::
  T_GeneralizeTel_12109 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634
d_'46'generalizedField'45'tx_12101 v0
  = case coe v0 of
      C_mkGeneralizeTel_12111 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s
d_'46'generalizedField'45's_12103 ::
  T_GeneralizeTel_12109 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
d_'46'generalizedField'45's_12103 v0
  = case coe v0 of
      C_mkGeneralizeTel_12111 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_12105 ::
  T_GeneralizeTel_12109 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2488
d_'46'generalizedField'45'Γ_12105 v0
  = case coe v0 of
      C_mkGeneralizeTel_12111 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_12107 ::
  T_GeneralizeTel_12109 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
d_'46'generalizedField'45's''_12107 v0
  = case coe v0 of
      C_mkGeneralizeTel_12111 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.GeneralizeTel
d_GeneralizeTel_12109 a0 a1 = ()
data T_GeneralizeTel_12109
  = C_mkGeneralizeTel_12111 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2488
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
