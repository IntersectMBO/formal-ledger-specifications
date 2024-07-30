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

module MAlonzo.Code.Ledger.Ledger where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Gov
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Ledger.Utxow

-- _._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__20 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_820 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_884 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_788] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_884 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__20 = erased
-- _.CertEnv
d_CertEnv_56 a0 = ()
-- _.CertState
d_CertState_58 a0 = ()
-- _.GovProposal
d_GovProposal_212 a0 = ()
-- _.GovVote
d_GovVote_216 a0 = ()
-- _.PParams
d_PParams_288 a0 = ()
-- _.ScriptHash
d_ScriptHash_352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_352 = erased
-- _.Slot
d_Slot_364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_364 = erased
-- _.Tx
d_Tx_394 a0 = ()
-- _.TxBody
d_TxBody_396 a0 = ()
-- _.epoch
d_epoch_476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_476 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))
-- Ledger.Ledger._.EnactState
d_EnactState_1572 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1624 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_958 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1624 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1632 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 -> ()
d_GovState_1634 = erased
-- Ledger.Ledger._.UTxOState
d_UTxOState_1752 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1868 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.LEnv
d_LEnv_1926 a0 a1 = ()
data T_LEnv_1926
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1948 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_228
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_784
                                                          Integer
-- Ledger.Ledger.LEnv.slot
d_slot_1938 :: T_LEnv_1926 -> AgdaAny
d_slot_1938 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1948 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_1940 :: T_LEnv_1926 -> Maybe AgdaAny
d_ppolicy_1940 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1948 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_1942 ::
  T_LEnv_1926 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_1942 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1948 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_1944 ::
  T_LEnv_1926 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_enactState_1944 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1948 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_1946 :: T_LEnv_1926 -> Integer
d_treasury_1946 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1948 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_1950 a0 a1 = ()
data T_LState_1950
  = C_'10214'_'44'_'44'_'10215''737'_1964 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_884
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_1958 ::
  T_LState_1950 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778
d_utxoSt_1958 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1964 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_1960 ::
  T_LState_1950 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1960 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1964 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_1962 ::
  T_LState_1950 -> MAlonzo.Code.Ledger.Certs.T_CertState_884
d_certState_1962 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1964 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1966 ~v0 ~v1 v2 = du_txgov_1966 v2
du_txgov_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1966 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__62
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2644 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2642 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2032 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2032
  = C_LEDGER'45'V_2112 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2192 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5517 -> MAlonzo.Code.Ledger.Certs.T_CertState_884
d_certState_2036 ~v0 ~v1 v2 = du_certState_2036 v2
du_certState_2036 ::
  T_GeneralizeTel_5517 -> MAlonzo.Code.Ledger.Certs.T_CertState_884
du_certState_2036 v0
  = coe d_certState_1962 (coe d_'46'generalizedField'45's_5505 v0)
-- Ledger.Ledger._.govSt
d_govSt_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5517 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2038 ~v0 ~v1 v2 = du_govSt_2038 v2
du_govSt_2038 ::
  T_GeneralizeTel_5517 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2038 v0
  = coe d_govSt_1960 (coe d_'46'generalizedField'45's_5505 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_2040 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5517 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778
d_utxoSt_2040 ~v0 ~v1 v2 = du_utxoSt_2040 v2
du_utxoSt_2040 ::
  T_GeneralizeTel_5517 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778
du_utxoSt_2040 v0
  = coe d_utxoSt_1958 (coe d_'46'generalizedField'45's_5505 v0)
-- Ledger.Ledger._.txcerts
d_txcerts_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5517 -> [MAlonzo.Code.Ledger.Certs.T_DCert_788]
d_txcerts_2062 ~v0 ~v1 v2 = du_txcerts_2062 v2
du_txcerts_2062 ::
  T_GeneralizeTel_5517 -> [MAlonzo.Code.Ledger.Certs.T_DCert_788]
du_txcerts_2062 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2638
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2696
         (coe d_'46'generalizedField'45'tx_5507 v0))
-- Ledger.Ledger._.txid
d_txid_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5517 -> AgdaAny
d_txid_2068 ~v0 ~v1 v2 = du_txid_2068 v2
du_txid_2068 :: T_GeneralizeTel_5517 -> AgdaAny
du_txid_2068 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2658
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2696
         (coe d_'46'generalizedField'45'tx_5507 v0))
-- Ledger.Ledger._.txvote
d_txvote_2082 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5517 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
d_txvote_2082 ~v0 ~v1 v2 = du_txvote_2082 v2
du_txvote_2082 ::
  T_GeneralizeTel_5517 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
du_txvote_2082 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2642
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2696
         (coe d_'46'generalizedField'45'tx_5507 v0))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2084 ~v0 ~v1 v2 = du_txwdrls_2084 v2
du_txwdrls_2084 ::
  T_GeneralizeTel_5517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2084 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2640
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2696
         (coe d_'46'generalizedField'45'tx_5507 v0))
-- Ledger.Ledger._.enactState
d_enactState_2088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5517 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_enactState_2088 ~v0 ~v1 v2 = du_enactState_2088 v2
du_enactState_2088 ::
  T_GeneralizeTel_5517 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
du_enactState_2088 v0
  = coe d_enactState_1944 (coe d_'46'generalizedField'45'Γ_5509 v0)
-- Ledger.Ledger._.pparams
d_pparams_2090 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5517 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2090 ~v0 ~v1 v2 = du_pparams_2090 v2
du_pparams_2090 ::
  T_GeneralizeTel_5517 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2090 v0
  = coe d_pparams_1942 (coe d_'46'generalizedField'45'Γ_5509 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2092 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5517 -> Maybe AgdaAny
d_ppolicy_2092 ~v0 ~v1 v2 = du_ppolicy_2092 v2
du_ppolicy_2092 :: T_GeneralizeTel_5517 -> Maybe AgdaAny
du_ppolicy_2092 v0
  = coe d_ppolicy_1940 (coe d_'46'generalizedField'45'Γ_5509 v0)
-- Ledger.Ledger._.slot
d_slot_2094 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5517 -> AgdaAny
d_slot_2094 ~v0 ~v1 v2 = du_slot_2094 v2
du_slot_2094 :: T_GeneralizeTel_5517 -> AgdaAny
du_slot_2094 v0
  = coe d_slot_1938 (coe d_'46'generalizedField'45'Γ_5509 v0)
-- Ledger.Ledger._.treasury
d_treasury_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5517 -> Integer
d_treasury_2096 ~v0 ~v1 v2 = du_treasury_2096 v2
du_treasury_2096 :: T_GeneralizeTel_5517 -> Integer
du_treasury_2096 v0
  = coe d_treasury_1946 (coe d_'46'generalizedField'45'Γ_5509 v0)
-- Ledger.Ledger._.enactState
d_enactState_2102 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5517 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_enactState_2102 ~v0 ~v1 v2 = du_enactState_2102 v2
du_enactState_2102 ::
  T_GeneralizeTel_5517 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
du_enactState_2102 v0
  = coe d_enactState_1944 (coe d_'46'generalizedField'45'Γ_5509 v0)
-- Ledger.Ledger._.pparams
d_pparams_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5517 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2104 ~v0 ~v1 v2 = du_pparams_2104 v2
du_pparams_2104 ::
  T_GeneralizeTel_5517 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2104 v0
  = coe d_pparams_1942 (coe d_'46'generalizedField'45'Γ_5509 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5517 -> Maybe AgdaAny
d_ppolicy_2106 ~v0 ~v1 v2 = du_ppolicy_2106 v2
du_ppolicy_2106 :: T_GeneralizeTel_5517 -> Maybe AgdaAny
du_ppolicy_2106 v0
  = coe d_ppolicy_1940 (coe d_'46'generalizedField'45'Γ_5509 v0)
-- Ledger.Ledger._.slot
d_slot_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5517 -> AgdaAny
d_slot_2108 ~v0 ~v1 v2 = du_slot_2108 v2
du_slot_2108 :: T_GeneralizeTel_5517 -> AgdaAny
du_slot_2108 v0
  = coe d_slot_1938 (coe d_'46'generalizedField'45'Γ_5509 v0)
-- Ledger.Ledger._.treasury
d_treasury_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5517 -> Integer
d_treasury_2110 ~v0 ~v1 v2 = du_treasury_2110 v2
du_treasury_2110 :: T_GeneralizeTel_5517 -> Integer
du_treasury_2110 v0
  = coe d_treasury_1946 (coe d_'46'generalizedField'45'Γ_5509 v0)
-- Ledger.Ledger._.certState
d_certState_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5937 -> MAlonzo.Code.Ledger.Certs.T_CertState_884
d_certState_2116 ~v0 ~v1 v2 = du_certState_2116 v2
du_certState_2116 ::
  T_GeneralizeTel_5937 -> MAlonzo.Code.Ledger.Certs.T_CertState_884
du_certState_2116 v0
  = coe d_certState_1962 (coe d_'46'generalizedField'45's_5929 v0)
-- Ledger.Ledger._.govSt
d_govSt_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5937 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2118 ~v0 ~v1 v2 = du_govSt_2118 v2
du_govSt_2118 ::
  T_GeneralizeTel_5937 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2118 v0
  = coe d_govSt_1960 (coe d_'46'generalizedField'45's_5929 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_2120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5937 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778
d_utxoSt_2120 ~v0 ~v1 v2 = du_utxoSt_2120 v2
du_utxoSt_2120 ::
  T_GeneralizeTel_5937 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778
du_utxoSt_2120 v0
  = coe d_utxoSt_1958 (coe d_'46'generalizedField'45's_5929 v0)
-- Ledger.Ledger._.enactState
d_enactState_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5937 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_enactState_2168 ~v0 ~v1 v2 = du_enactState_2168 v2
du_enactState_2168 ::
  T_GeneralizeTel_5937 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
du_enactState_2168 v0
  = coe d_enactState_1944 (coe d_'46'generalizedField'45'Γ_5933 v0)
-- Ledger.Ledger._.pparams
d_pparams_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5937 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2170 ~v0 ~v1 v2 = du_pparams_2170 v2
du_pparams_2170 ::
  T_GeneralizeTel_5937 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2170 v0
  = coe d_pparams_1942 (coe d_'46'generalizedField'45'Γ_5933 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5937 -> Maybe AgdaAny
d_ppolicy_2172 ~v0 ~v1 v2 = du_ppolicy_2172 v2
du_ppolicy_2172 :: T_GeneralizeTel_5937 -> Maybe AgdaAny
du_ppolicy_2172 v0
  = coe d_ppolicy_1940 (coe d_'46'generalizedField'45'Γ_5933 v0)
-- Ledger.Ledger._.slot
d_slot_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5937 -> AgdaAny
d_slot_2174 ~v0 ~v1 v2 = du_slot_2174 v2
du_slot_2174 :: T_GeneralizeTel_5937 -> AgdaAny
du_slot_2174 v0
  = coe d_slot_1938 (coe d_'46'generalizedField'45'Γ_5933 v0)
-- Ledger.Ledger._.treasury
d_treasury_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5937 -> Integer
d_treasury_2176 ~v0 ~v1 v2 = du_treasury_2176 v2
du_treasury_2176 :: T_GeneralizeTel_5937 -> Integer
du_treasury_2176 v0
  = coe d_treasury_1946 (coe d_'46'generalizedField'45'Γ_5933 v0)
-- Ledger.Ledger._.enactState
d_enactState_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5937 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_enactState_2182 ~v0 ~v1 v2 = du_enactState_2182 v2
du_enactState_2182 ::
  T_GeneralizeTel_5937 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
du_enactState_2182 v0
  = coe d_enactState_1944 (coe d_'46'generalizedField'45'Γ_5933 v0)
-- Ledger.Ledger._.pparams
d_pparams_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5937 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2184 ~v0 ~v1 v2 = du_pparams_2184 v2
du_pparams_2184 ::
  T_GeneralizeTel_5937 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2184 v0
  = coe d_pparams_1942 (coe d_'46'generalizedField'45'Γ_5933 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5937 -> Maybe AgdaAny
d_ppolicy_2186 ~v0 ~v1 v2 = du_ppolicy_2186 v2
du_ppolicy_2186 :: T_GeneralizeTel_5937 -> Maybe AgdaAny
du_ppolicy_2186 v0
  = coe d_ppolicy_1940 (coe d_'46'generalizedField'45'Γ_5933 v0)
-- Ledger.Ledger._.slot
d_slot_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5937 -> AgdaAny
d_slot_2188 ~v0 ~v1 v2 = du_slot_2188 v2
du_slot_2188 :: T_GeneralizeTel_5937 -> AgdaAny
du_slot_2188 v0
  = coe d_slot_1938 (coe d_'46'generalizedField'45'Γ_5933 v0)
-- Ledger.Ledger._.treasury
d_treasury_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_5937 -> Integer
d_treasury_2190 ~v0 ~v1 v2 = du_treasury_2190 v2
du_treasury_2190 :: T_GeneralizeTel_5937 -> Integer
du_treasury_2190 v0
  = coe d_treasury_1946 (coe d_'46'generalizedField'45'Γ_5933 v0)
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2210 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_LEnv_1926 ->
  T_LState_1950 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2686] -> T_LState_1950 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2210 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5505 ::
  T_GeneralizeTel_5517 -> T_LState_1950
d_'46'generalizedField'45's_5505 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5507 ::
  T_GeneralizeTel_5517 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2686
d_'46'generalizedField'45'tx_5507 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5509 ::
  T_GeneralizeTel_5517 -> T_LEnv_1926
d_'46'generalizedField'45'Γ_5509 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5511 ::
  T_GeneralizeTel_5517 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778
d_'46'generalizedField'45'utxoSt''_5511
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_5513 ::
  T_GeneralizeTel_5517 -> MAlonzo.Code.Ledger.Certs.T_CertState_884
d_'46'generalizedField'45'certState''_5513
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_5515 ::
  T_GeneralizeTel_5517 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_5515
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5517 a0 a1 = ()
data T_GeneralizeTel_5517
  = C_mkGeneralizeTel_5519 T_LState_1950
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2686 T_LEnv_1926
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778
                           MAlonzo.Code.Ledger.Certs.T_CertState_884
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5929 ::
  T_GeneralizeTel_5937 -> T_LState_1950
d_'46'generalizedField'45's_5929 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5931 ::
  T_GeneralizeTel_5937 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2686
d_'46'generalizedField'45'tx_5931 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5933 ::
  T_GeneralizeTel_5937 -> T_LEnv_1926
d_'46'generalizedField'45'Γ_5933 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5935 ::
  T_GeneralizeTel_5937 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778
d_'46'generalizedField'45'utxoSt''_5935
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5937 a0 a1 = ()
data T_GeneralizeTel_5937
  = C_mkGeneralizeTel_5939 T_LState_1950
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2686 T_LEnv_1926
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778
