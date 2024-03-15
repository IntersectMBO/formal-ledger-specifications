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

module MAlonzo.Code.Ledger.Utxow where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.ScriptValidation
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo

-- _.Credential
d_Credential_64 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_64 = erased
-- _.Hashable-Script
d_Hashable'45'Script_214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_214 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_474
      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1028 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1520 (coe v0))
-- _.THash
d_THash_226 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_226 = erased
-- _.ScriptHash
d_ScriptHash_324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_324 = erased
-- _.Tx
d_Tx_364 a0 = ()
-- _.TxBody
d_TxBody_366 a0 = ()
-- _.UTxO
d_UTxO_376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_376 = erased
-- _.isSigned
d_isSigned_484 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_484 = erased
-- _.validP1Script
d_validP1Script_572 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_224 -> ()
d_validP1Script_572 = erased
-- _.TxWitnesses.scriptsP1
d_scriptsP1_1314 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2356 ->
  [MAlonzo.Code.Ledger.Script.T_Timelock_224]
d_scriptsP1_1314 ~v0 = du_scriptsP1_1314
du_scriptsP1_1314 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2356 ->
  [MAlonzo.Code.Ledger.Script.T_Timelock_224]
du_scriptsP1_1314
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2374
-- Ledger.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1384 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxow._.UTxOEnv
d_UTxOEnv_1420 a0 a1 = ()
-- Ledger.Utxow._.UTxOState
d_UTxOState_1422 a0 a1 = ()
-- Ledger.Utxow._.ScriptPurpose
d_ScriptPurpose_1536 a0 a1 = ()
-- Ledger.Utxow.getVKeys
d_getVKeys_1628 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
d_getVKeys_1628 ~v0 ~v1 = du_getVKeys_1628
du_getVKeys_1628 ::
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
du_getVKeys_1628
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
-- Ledger.Utxow.getScripts
d_getScripts_1630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
d_getScripts_1630 ~v0 ~v1 = du_getScripts_1630
du_getScripts_1630 ::
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
du_getScripts_1630
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30)
-- Ledger.Utxow.credsNeeded
d_credsNeeded_1632 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2282 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_1632 v0 ~v1 v2 v3 = du_credsNeeded_1632 v0 v2 v3
du_credsNeeded_1632 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2282 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_1632 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380
         (MAlonzo.Code.Axiom.Set.d_th_1414
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Ledger.ScriptValidation.C_Spend_1396
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 MAlonzo.Code.Ledger.Address.du_payCred_90
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_468
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1104
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_994 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_992 (coe v0))))
               (coe v1)
               (coe MAlonzo.Code.Ledger.Transaction.d_txins_2320 (coe v2)))))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1414
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Ledger.ScriptValidation.C_Rwrd_1392 (coe v3))
                 (coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v3)))
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_484
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_488)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2332 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__662
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_380
               (MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.ScriptValidation.C_Cert_1390 (coe v3))
                    (coe MAlonzo.Code.Ledger.Deleg.d_cwitness_650 (coe v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_410
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1414
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2330 (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__662
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.du_map_380
                  (MAlonzo.Code.Axiom.Set.d_th_1414
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe MAlonzo.Code.Ledger.ScriptValidation.C_Mint_1394 (coe v3))
                       (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_mint_2326 (coe v2))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__662
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1414
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_map_380
                     (MAlonzo.Code.Axiom.Set.d_th_1414
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe MAlonzo.Code.Ledger.ScriptValidation.C_Vote_1398 (coe v3))
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_410
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1414
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                           () erased
                           (\ v3 ->
                              MAlonzo.Code.Ledger.GovernanceActions.d_voter_558 (coe v3))
                           (MAlonzo.Code.Ledger.Transaction.d_txvote_2334 (coe v2)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_558
                     (MAlonzo.Code.Axiom.Set.d_th_1414
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (\ v3 ->
                        let v4
                              = MAlonzo.Code.Ledger.GovernanceActions.d_policy_582 (coe v3) in
                        coe
                          (case coe v4 of
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                               -> coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.ScriptValidation.C_Propose_1400
                                          (coe v3))
                                       (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v5)))
                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
                             _ -> MAlonzo.RTE.mazUnreachableError))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_410
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1414
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2336 (coe v2))))))))
-- Ledger.Utxow.witsVKeyNeeded
d_witsVKeyNeeded_1700 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2282 -> [AgdaAny]
d_witsVKeyNeeded_1700 v0 ~v1 = du_witsVKeyNeeded_1700 v0
du_witsVKeyNeeded_1700 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2282 -> [AgdaAny]
du_witsVKeyNeeded_1700 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getVKeys_1628))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_380
                 (MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_1632 (coe v0)))
-- Ledger.Utxow.scriptsNeeded
d_scriptsNeeded_1702 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2282 -> [AgdaAny]
d_scriptsNeeded_1702 v0 ~v1 = du_scriptsNeeded_1702 v0
du_scriptsNeeded_1702 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2282 -> [AgdaAny]
du_scriptsNeeded_1702 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getScripts_1630))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_380
                 (MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_1632 (coe v0)))
-- Ledger.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1704 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__1704
  = C_UTXOW'45'inductive_1796 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxow._.txAD
d_txAD_1718 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  T_GeneralizeTel_9871 -> Maybe AgdaAny
d_txAD_1718 ~v0 ~v1 v2 = du_txAD_1718 v2
du_txAD_1718 :: T_GeneralizeTel_9871 -> Maybe AgdaAny
du_txAD_1718 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txAD_2392
      (coe d_'46'generalizedField'45'tx_9863 v0)
-- Ledger.Utxow._.body
d_body_1720 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  T_GeneralizeTel_9871 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2282
d_body_1720 ~v0 ~v1 v2 = du_body_1720 v2
du_body_1720 ::
  T_GeneralizeTel_9871 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2282
du_body_1720 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2386
      (coe d_'46'generalizedField'45'tx_9863 v0)
-- Ledger.Utxow._.wits
d_wits_1722 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  T_GeneralizeTel_9871 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2356
d_wits_1722 ~v0 ~v1 v2 = du_wits_1722 v2
du_wits_1722 ::
  T_GeneralizeTel_9871 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2356
du_wits_1722 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_wits_2388
      (coe d_'46'generalizedField'45'tx_9863 v0)
-- Ledger.Utxow._.txADhash
d_txADhash_1736 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  T_GeneralizeTel_9871 -> Maybe AgdaAny
d_txADhash_1736 ~v0 ~v1 v2 = du_txADhash_1736 v2
du_txADhash_1736 :: T_GeneralizeTel_9871 -> Maybe AgdaAny
du_txADhash_1736 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txADhash_2342
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2386
         (coe d_'46'generalizedField'45'tx_9863 v0))
-- Ledger.Utxow._.txid
d_txid_1744 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  T_GeneralizeTel_9871 -> AgdaAny
d_txid_1744 ~v0 ~v1 v2 = du_txid_1744 v2
du_txid_1744 :: T_GeneralizeTel_9871 -> AgdaAny
du_txid_1744 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2348
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2386
         (coe d_'46'generalizedField'45'tx_9863 v0))
-- Ledger.Utxow._.txvldt
d_txvldt_1756 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  T_GeneralizeTel_9871 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1756 ~v0 ~v1 v2 = du_txvldt_1756 v2
du_txvldt_1756 ::
  T_GeneralizeTel_9871 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_1756 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2328
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2386
         (coe d_'46'generalizedField'45'tx_9863 v0))
-- Ledger.Utxow._.scripts
d_scripts_1764 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  T_GeneralizeTel_9871 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_1764 ~v0 ~v1 v2 = du_scripts_1764 v2
du_scripts_1764 ::
  T_GeneralizeTel_9871 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_1764 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scripts_2368
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2388
         (coe d_'46'generalizedField'45'tx_9863 v0))
-- Ledger.Utxow._.scriptsP1
d_scriptsP1_1766 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  T_GeneralizeTel_9871 -> [MAlonzo.Code.Ledger.Script.T_Timelock_224]
d_scriptsP1_1766 ~v0 ~v1 v2 = du_scriptsP1_1766 v2
du_scriptsP1_1766 ::
  T_GeneralizeTel_9871 -> [MAlonzo.Code.Ledger.Script.T_Timelock_224]
du_scriptsP1_1766 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2374
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2388
         (coe d_'46'generalizedField'45'tx_9863 v0))
-- Ledger.Utxow._.vkSigs
d_vkSigs_1772 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  T_GeneralizeTel_9871 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_1772 ~v0 ~v1 v2 = du_vkSigs_1772 v2
du_vkSigs_1772 ::
  T_GeneralizeTel_9871 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_1772 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2366
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2388
         (coe d_'46'generalizedField'45'tx_9863 v0))
-- Ledger.Utxow._.utxo
d_utxo_1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  T_GeneralizeTel_9871 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1782 ~v0 ~v1 v2 = du_utxo_1782 v2
du_utxo_1782 ::
  T_GeneralizeTel_9871 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_1782 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1858
      (coe d_'46'generalizedField'45's_9865 v0)
-- Ledger.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_1812 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2376 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1848 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_1812 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_1812 v0 v2 v3
du_UTXOW'45'inductive'45'premises_1812 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2376 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1848 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_1812 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Axiom.Set.d_all'63'_1550
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                       (coe
                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_khs_192
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1028 (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_124
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_pkk_164
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1028 (coe v0)))))
                    erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                       (coe
                          (\ v4 ->
                             coe
                               MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_110
                               (MAlonzo.Code.Ledger.Crypto.d_pkk_164
                                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1028 (coe v0)))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_txidBytes_1946 v0
                                  (MAlonzo.Code.Ledger.Transaction.d_txid_2348
                                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2386 (coe v1))))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
                    v3))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_468
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_vkSigs_2366
                  (coe MAlonzo.Code.Ledger.Transaction.d_wits_2388 (coe v1)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Axiom.Set.d_all'63'_1550
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_238
                          (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1028 (coe v0))
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
                       erased
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                          (coe
                             MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_282
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1028 (coe v0))
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))
                             (coe
                                MAlonzo.Code.Axiom.Set.du_map_380
                                (MAlonzo.Code.Axiom.Set.d_th_1414
                                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                (MAlonzo.Code.Interface.Hashable.d_hash_18
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1028
                                            (coe v0)))))
                                (coe
                                   MAlonzo.Code.Interface.IsSet.du_dom_484
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1414
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_492)
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2366
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2388 (coe v1)))))
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_txvldt_2328
                                (coe MAlonzo.Code.Ledger.Transaction.d_body_2386 (coe v1)))))
                       v3))
               (coe
                  MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2374
                  (coe MAlonzo.Code.Ledger.Transaction.d_wits_2388 (coe v1))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Axiom.Set.d_all'63'_1550
                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                          (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1028 (coe v0))))
                          erased
                          (coe
                             MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                        erased
                                        (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                           (coe
                                              MAlonzo.Code.Ledger.Crypto.d_khs_192
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1028
                                                 (coe v0)))))
                                     (coe v4)
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_map_380
                                        (MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (MAlonzo.Code.Interface.Hashable.d_hash_18
                                           (coe
                                              MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
                                              (coe
                                                 MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1028
                                                    (coe v0)))))
                                        (coe
                                           MAlonzo.Code.Interface.IsSet.du_dom_484
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1414
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                           (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_492)
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_vkSigs_2366
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_wits_2388
                                                 (coe v1))))))))
                          v3))
                  (coe
                     du_witsVKeyNeeded_1700 v0
                     (MAlonzo.Code.Ledger.Utxo.d_utxo_1858 (coe v2))
                     (MAlonzo.Code.Ledger.Transaction.d_body_2386 (coe v1))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1028 (coe v0)))
                                erased
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                   (coe
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                              erased
                                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1028
                                                    (coe v0))))
                                           (coe v4)
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_map_380
                                              (MAlonzo.Code.Axiom.Set.d_th_1414
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (MAlonzo.Code.Interface.Hashable.d_hash_18
                                                 (coe
                                                    MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_474
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1028
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1520
                                                       (coe v0))))
                                              (MAlonzo.Code.Ledger.Transaction.d_scripts_2368
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_wits_2388
                                                    (coe v1)))))))
                                v3))
                        (coe
                           du_scriptsNeeded_1702 v0
                           (MAlonzo.Code.Ledger.Utxo.d_utxo_1858 (coe v2))
                           (MAlonzo.Code.Ledger.Transaction.d_body_2386 (coe v1))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1028 (coe v0)))
                                erased
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                   (coe
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                              erased
                                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1028
                                                    (coe v0))))
                                           (coe v4)
                                           (coe
                                              du_scriptsNeeded_1702 v0
                                              (MAlonzo.Code.Ledger.Utxo.d_utxo_1858 (coe v2))
                                              (MAlonzo.Code.Ledger.Transaction.d_body_2386
                                                 (coe v1))))))
                                v3))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_380
                           (MAlonzo.Code.Axiom.Set.d_th_1414
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (MAlonzo.Code.Interface.Hashable.d_hash_18
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_474
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1028 (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1520
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Transaction.d_scripts_2368
                              (coe MAlonzo.Code.Ledger.Transaction.d_wits_2388 (coe v1))))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                     (coe
                        MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_996 (coe v0)))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txADhash_2342
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2386 (coe v1)))
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                        MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                        MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                        (MAlonzo.Code.Interface.Hashable.d_hash_18
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_996 (coe v0))))
                        (MAlonzo.Code.Ledger.Transaction.d_txAD_2392 (coe v1))))))))
-- Ledger.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_9863 ::
  T_GeneralizeTel_9871 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2376
d_'46'generalizedField'45'tx_9863 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s
d_'46'generalizedField'45's_9865 ::
  T_GeneralizeTel_9871 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1848
d_'46'generalizedField'45's_9865 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_9867 ::
  T_GeneralizeTel_9871 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1838
d_'46'generalizedField'45'Γ_9867 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_9869 ::
  T_GeneralizeTel_9871 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1848
d_'46'generalizedField'45's''_9869
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.GeneralizeTel
d_GeneralizeTel_9871 a0 a1 = ()
data T_GeneralizeTel_9871
  = C_mkGeneralizeTel_9873 MAlonzo.Code.Ledger.Transaction.T_Tx_2376
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1848
                           MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1838
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1848
