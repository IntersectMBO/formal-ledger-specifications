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
d_Hashable'45'Script_368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1986
         (coe v0))
-- _.Tx
d_Tx_590 a0 = ()
-- _.isKeyHashObj
d_isKeyHashObj_716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_716 ~v0 = du_isKeyHashObj_716
du_isKeyHashObj_716 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_716
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- _.isScriptObj
d_isScriptObj_736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_736 ~v0 = du_isScriptObj_736
du_isScriptObj_736 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_736
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- _.isSigned
d_isSigned_740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_740 = erased
-- _.refScripts
d_refScripts_790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3618
      (coe v0)
-- _.toP1Script
d_toP1Script_806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_806 ~v0 = du_toP1Script_806
du_toP1Script_806 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_806
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_412
-- _.txscripts
d_txscripts_820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3666
      (coe v0)
-- _.validP1Script
d_validP1Script_830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_830 = erased
-- _.PParams.costmdls
d_costmdls_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_422
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1986
         (coe v0))
-- _.Tx.body
d_body_1862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3358
d_body_1862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
      (coe v0)
-- _.Tx.isValid
d_isValid_1864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  Bool
d_isValid_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3556
      (coe v0)
-- _.Tx.txAD
d_txAD_1866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  Maybe AgdaAny
d_txAD_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3558
      (coe v0)
-- _.Tx.txsize
d_txsize_1868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  Integer
d_txsize_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3554
      (coe v0)
-- _.Tx.wits
d_wits_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3516
d_wits_1870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1970 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv
d_UTxOEnv_1986 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOState
d_UTxOState_1990 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.pparams
d_pparams_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2424 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2434
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.slot
d_slot_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2424 ->
  AgdaAny
d_slot_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2432 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOEnv.treasury
d_treasury_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2424 ->
  Integer
d_treasury_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2436
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.deposits
d_deposits_2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2454
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.donations
d_donations_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440 ->
  Integer
d_donations_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2456
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.fees
d_fees_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440 ->
  Integer
d_fees_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2452 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.UTxOState.utxo
d_utxo_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450 (coe v0)
-- Ledger.Conway.Conformance.Utxow._.credentialToP2Script
d_credentialToP2Script_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_credentialToP2Script_2046 v0 ~v1
  = du_credentialToP2Script_2046 v0
du_credentialToP2Script_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_credentialToP2Script_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credentialToP2Script_2832
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.credsNeeded
d_credsNeeded_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3358 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2048 v0 ~v1 = du_credsNeeded_2048 v0
du_credsNeeded_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3358 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2760
      (coe v0)
-- Ledger.Conway.Conformance.Utxow._.rdptr
d_rdptr_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3358 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2358 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_2056 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_rdptr_2506
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow._.txOutToDataHash
d_txOutToDataHash_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDataHash_2060 ~v0 ~v1 = du_txOutToDataHash_2060
du_txOutToDataHash_2060 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDataHash_2060
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2828
-- Ledger.Conway.Conformance.Utxow._.txOutToP2Script
d_txOutToP2Script_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToP2Script_2062 v0 ~v1 = du_txOutToP2Script_2062 v0
du_txOutToP2Script_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToP2Script_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2844
      (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.allowedLanguages
d_allowedLanguages_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2508 v0 ~v1 = du_allowedLanguages_2508 v0
du_allowedLanguages_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_allowedLanguages_2716
      (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.hashScriptIntegrity
d_hashScriptIntegrity_2512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> Maybe AgdaAny
d_hashScriptIntegrity_2512 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxow.d_hashScriptIntegrity_2772
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxow.L._.languages
d_languages_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2514 v0 ~v1 = du_languages_2514 v0
du_languages_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_languages_2710
      (coe v0)
-- Ledger.Conway.Conformance.Utxow.L._.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430
d_HasPParams'45'UTxOEnv_2558 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_2558
du_HasPParams'45'UTxOEnv_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430
du_HasPParams'45'UTxOEnv_2558
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasPParams'45'UTxOEnv_2480
-- Ledger.Conway.Conformance.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2726 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2726
  = C_UTXOW'45'inductive_2846 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxow._.txAD
d_txAD_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_11357 -> Maybe AgdaAny
d_txAD_2740 ~v0 ~v1 v2 = du_txAD_2740 v2
du_txAD_2740 :: T_GeneralizeTel_11357 -> Maybe AgdaAny
du_txAD_2740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3558
      (coe d_'46'generalizedField'45'tx_11349 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.body
d_body_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_11357 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3358
d_body_2742 ~v0 ~v1 v2 = du_body_2742 v2
du_body_2742 ::
  T_GeneralizeTel_11357 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3358
du_body_2742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
      (coe d_'46'generalizedField'45'tx_11349 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.wits
d_wits_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_11357 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3516
d_wits_2746 ~v0 ~v1 v2 = du_wits_2746 v2
du_wits_2746 ::
  T_GeneralizeTel_11357 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3516
du_wits_2746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
      (coe d_'46'generalizedField'45'tx_11349 (coe v0))
-- Ledger.Conway.Conformance.Utxow._.refInputs
d_refInputs_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_11357 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2756 ~v0 ~v1 v2 = du_refInputs_2756 v2
du_refInputs_2756 ::
  T_GeneralizeTel_11357 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3398
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
         (coe d_'46'generalizedField'45'tx_11349 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.reqSignerHashes
d_reqSignerHashes_2758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_11357 -> [AgdaAny]
d_reqSignerHashes_2758 ~v0 ~v1 v2 = du_reqSignerHashes_2758 v2
du_reqSignerHashes_2758 :: T_GeneralizeTel_11357 -> [AgdaAny]
du_reqSignerHashes_2758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3428
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
         (coe d_'46'generalizedField'45'tx_11349 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scriptIntegrityHash
d_scriptIntegrityHash_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_11357 -> Maybe AgdaAny
d_scriptIntegrityHash_2760 ~v0 ~v1 v2
  = du_scriptIntegrityHash_2760 v2
du_scriptIntegrityHash_2760 ::
  T_GeneralizeTel_11357 -> Maybe AgdaAny
du_scriptIntegrityHash_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3430
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
         (coe d_'46'generalizedField'45'tx_11349 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txADhash
d_txADhash_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_11357 -> Maybe AgdaAny
d_txADhash_2762 ~v0 ~v1 v2 = du_txADhash_2762 v2
du_txADhash_2762 :: T_GeneralizeTel_11357 -> Maybe AgdaAny
du_txADhash_2762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3414
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
         (coe d_'46'generalizedField'45'tx_11349 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txId
d_txId_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_11357 -> AgdaAny
d_txId_2774 ~v0 ~v1 v2 = du_txId_2774 v2
du_txId_2774 :: T_GeneralizeTel_11357 -> AgdaAny
du_txId_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3404
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
         (coe d_'46'generalizedField'45'tx_11349 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txIns
d_txIns_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_11357 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2776 ~v0 ~v1 v2 = du_txIns_2776 v2
du_txIns_2776 ::
  T_GeneralizeTel_11357 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3396
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
         (coe d_'46'generalizedField'45'tx_11349 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txOuts
d_txOuts_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_11357 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2780 ~v0 ~v1 v2 = du_txOuts_2780 v2
du_txOuts_2780 ::
  T_GeneralizeTel_11357 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3402
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
         (coe d_'46'generalizedField'45'tx_11349 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txVldt
d_txVldt_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_11357 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2782 ~v0 ~v1 v2 = du_txVldt_2782 v2
du_txVldt_2782 ::
  T_GeneralizeTel_11357 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3412
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
         (coe d_'46'generalizedField'45'tx_11349 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.scripts
d_scripts_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_11357 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2788 ~v0 ~v1 v2 = du_scripts_2788 v2
du_scripts_2788 ::
  T_GeneralizeTel_11357 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3528
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
         (coe d_'46'generalizedField'45'tx_11349 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txdats
d_txdats_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_11357 -> [AgdaAny]
d_txdats_2792 ~v0 ~v1 v2 = du_txdats_2792 v2
du_txdats_2792 :: T_GeneralizeTel_11357 -> [AgdaAny]
du_txdats_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3530
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
         (coe d_'46'generalizedField'45'tx_11349 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.txrdmrs
d_txrdmrs_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_11357 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2794 ~v0 ~v1 v2 = du_txrdmrs_2794 v2
du_txrdmrs_2794 ::
  T_GeneralizeTel_11357 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3532
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
         (coe d_'46'generalizedField'45'tx_11349 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.vkSigs
d_vkSigs_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_11357 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2796 ~v0 ~v1 v2 = du_vkSigs_2796 v2
du_vkSigs_2796 ::
  T_GeneralizeTel_11357 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3526
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
         (coe d_'46'generalizedField'45'tx_11349 (coe v0)))
-- Ledger.Conway.Conformance.Utxow._.utxo
d_utxo_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_11357 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2806 ~v0 ~v1 v2 = du_utxo_2806 v2
du_utxo_2806 ::
  T_GeneralizeTel_11357 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
      (coe d_'46'generalizedField'45's_11351 (coe v0))
-- Ledger.Conway.Conformance.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2424 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2876 v0 v1 v2 v3 v4
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
                    (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                          (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txidBytes_2590
                       v0
                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3404
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
                             (coe v2))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3526
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
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
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                             (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1986
                                      (coe v0))))
                             v5)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_mapPartial_604
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (\ v6 ->
                                coe
                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2760
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
                                   (coe v3))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
                                   (coe v2)))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1986
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
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3526
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
                                      (coe v2)))))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3412
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
                                (coe v2)))
                          v5)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_604
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_412)
                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3666
                     (coe v0) (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
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
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
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
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3526
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
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
                           MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2760
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450 (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3428
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
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
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                      (coe v0)))
                                (coe v5)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_426
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1986
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3528
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
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
                              (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_mapPartial_604
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (\ v5 ->
                                 coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2760
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
                                    (coe v3))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_426
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1986
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3618
                                 (coe v0) (coe v2)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
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
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
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
                                      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (\ v6 ->
                                         coe
                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2760
                                         (coe v0)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
                                            (coe v3))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
                                            (coe v2))))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_426
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1986
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3618
                                         (coe v0) (coe v2)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
                                            (coe v3)))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_426
                           (MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1986
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3528
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
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
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1986
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
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1986
                                                     (coe v0)))))))
                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3530
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2844
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
                                      (coe v3))
                                   (coe v2) (coe v5))
                                (coe
                                   MAlonzo.Code.Level.C_lift_20
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                (coe
                                   (\ v6 ->
                                      coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2828
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
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1320
                                          (coe v0))
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1318
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
                                    (coe v3))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3396
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
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
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1986
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
                                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2844
                                                 (coe v0)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
                                                    (coe v3))
                                                 (coe v2) (coe v6))
                                              (coe
                                                 MAlonzo.Code.Level.C_lift_20
                                                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                              (coe
                                                 (\ v7 ->
                                                    coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2828
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
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1320
                                                        (coe v0))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1318
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
                                                  (coe v3))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3396
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
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
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2828)
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_588
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3402
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
                                                     (coe v2)))))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2828)
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
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1320
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1318
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
                                                     (coe v3))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3398
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1986
                                                (coe v0)))))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3530
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
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
                                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1318
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
                                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credentialToP2Script_2832
                                                    (coe v0)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
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
                                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_rdptr_2506
                                                         (coe v0) (coe v1)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
                                                            (coe v2))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v6))))
                                                 (coe
                                                    (\ v7 ->
                                                       coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2760
                                               (coe v0)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
                                                  (coe v3))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
                                                  (coe v2))))))
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_586
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3532
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
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
                                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1318
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
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3532
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
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
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credentialToP2Script_2832
                                            (coe v0)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
                                               (coe v3))
                                            (coe v2)
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                                         (coe
                                            MAlonzo.Code.Level.C_lift_20
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                         (coe
                                            (\ v6 ->
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_rdptr_2506
                                                 (coe v0) (coe v1)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
                                                    (coe v2))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v5))))
                                         (coe
                                            (\ v6 ->
                                               coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2760
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
                                          (coe v3))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
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
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_226
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1986
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
                                               (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_226
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1986
                                                        (coe v0)))))
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_dom_586
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_422
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1986
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2434
                                                     (coe v4))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_allowedLanguages_2716
                                               (coe v0) (coe v2)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
                                                  (coe v3))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_languages_2710
                                    (coe v0) (coe v2)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
                                       (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1322
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3414
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
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
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1322
                                                (coe v0))))
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3558
                                          (coe v2))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1370
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3430
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
                                          (coe v2)))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxow.d_hashScriptIntegrity_2772
                                       (coe v0) (coe v1)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2434
                                          (coe v4))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxow.du_languages_2710
                                          (coe v0) (coe v2)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450
                                             (coe v3)))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3532
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
                                             (coe v2)))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3530
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
                                             (coe v2))))))))))))))
-- Ledger.Conway.Conformance.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_11349 ::
  T_GeneralizeTel_11357 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538
d_'46'generalizedField'45'tx_11349 v0
  = case coe v0 of
      C_mkGeneralizeTel_11359 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s
d_'46'generalizedField'45's_11351 ::
  T_GeneralizeTel_11357 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
d_'46'generalizedField'45's_11351 v0
  = case coe v0 of
      C_mkGeneralizeTel_11359 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_11353 ::
  T_GeneralizeTel_11357 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2424
d_'46'generalizedField'45'Γ_11353 v0
  = case coe v0 of
      C_mkGeneralizeTel_11359 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_11355 ::
  T_GeneralizeTel_11357 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
d_'46'generalizedField'45's''_11355 v0
  = case coe v0 of
      C_mkGeneralizeTel_11359 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxow.GeneralizeTel
d_GeneralizeTel_11357 a0 a1 = ()
data T_GeneralizeTel_11357
  = C_mkGeneralizeTel_11359 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2424
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
