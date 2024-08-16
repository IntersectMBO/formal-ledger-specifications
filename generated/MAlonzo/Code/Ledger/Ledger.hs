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
d_GovProposal_216 a0 = ()
-- _.GovVote
d_GovVote_220 a0 = ()
-- _.PParams
d_PParams_292 a0 = ()
-- _.ScriptHash
d_ScriptHash_356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_356 = erased
-- _.Slot
d_Slot_368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_368 = erased
-- _.Tx
d_Tx_398 a0 = ()
-- _.TxBody
d_TxBody_400 a0 = ()
-- _.epoch
d_epoch_484 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_484 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))
-- Ledger.Ledger._.EnactState
d_EnactState_1602 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_960 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1654 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1662 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1664 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 -> ()
d_GovState_1664 = erased
-- Ledger.Ledger._.UTxOState
d_UTxOState_1782 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1898 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.LEnv
d_LEnv_1956 a0 a1 = ()
data T_LEnv_1956
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1978 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_228
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_784
                                                          Integer
-- Ledger.Ledger.LEnv.slot
d_slot_1968 :: T_LEnv_1956 -> AgdaAny
d_slot_1968 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1978 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_1970 :: T_LEnv_1956 -> Maybe AgdaAny
d_ppolicy_1970 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1978 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_1972 ::
  T_LEnv_1956 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_1972 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1978 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_1974 ::
  T_LEnv_1956 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_enactState_1974 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1978 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_1976 :: T_LEnv_1956 -> Integer
d_treasury_1976 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1978 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_1980 a0 a1 = ()
data T_LState_1980
  = C_'10214'_'44'_'44'_'10215''737'_1994 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1808
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_884
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_1988 ::
  T_LState_1980 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1808
d_utxoSt_1988 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1994 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_1990 ::
  T_LState_1980 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1990 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1994 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_1992 ::
  T_LState_1980 -> MAlonzo.Code.Ledger.Certs.T_CertState_884
d_certState_1992 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1994 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1996 ~v0 ~v1 v2 = du_txgov_1996 v2
du_txgov_1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1996 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__62
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2676 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2674 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2062 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2062
  = C_LEDGER'45'V_2142 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2222 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_2066 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5555 -> MAlonzo.Code.Ledger.Certs.T_CertState_884
d_certState_2066 ~v0 ~v1 v2 = du_certState_2066 v2
du_certState_2066 ::
  T_GeneralizeTel_5555 -> MAlonzo.Code.Ledger.Certs.T_CertState_884
du_certState_2066 v0
  = coe d_certState_1992 (coe d_'46'generalizedField'45's_5543 v0)
-- Ledger.Ledger._.govSt
d_govSt_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5555 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2068 ~v0 ~v1 v2 = du_govSt_2068 v2
du_govSt_2068 ::
  T_GeneralizeTel_5555 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2068 v0
  = coe d_govSt_1990 (coe d_'46'generalizedField'45's_5543 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5555 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1808
d_utxoSt_2070 ~v0 ~v1 v2 = du_utxoSt_2070 v2
du_utxoSt_2070 ::
  T_GeneralizeTel_5555 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1808
du_utxoSt_2070 v0
  = coe d_utxoSt_1988 (coe d_'46'generalizedField'45's_5543 v0)
-- Ledger.Ledger._.txcerts
d_txcerts_2092 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5555 -> [MAlonzo.Code.Ledger.Certs.T_DCert_788]
d_txcerts_2092 ~v0 ~v1 v2 = du_txcerts_2092 v2
du_txcerts_2092 ::
  T_GeneralizeTel_5555 -> [MAlonzo.Code.Ledger.Certs.T_DCert_788]
du_txcerts_2092 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2670
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_5545 v0))
-- Ledger.Ledger._.txid
d_txid_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5555 -> AgdaAny
d_txid_2098 ~v0 ~v1 v2 = du_txid_2098 v2
du_txid_2098 :: T_GeneralizeTel_5555 -> AgdaAny
du_txid_2098 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2690
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_5545 v0))
-- Ledger.Ledger._.txvote
d_txvote_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5555 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
d_txvote_2112 ~v0 ~v1 v2 = du_txvote_2112 v2
du_txvote_2112 ::
  T_GeneralizeTel_5555 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
du_txvote_2112 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2674
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_5545 v0))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2114 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5555 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2114 ~v0 ~v1 v2 = du_txwdrls_2114 v2
du_txwdrls_2114 ::
  T_GeneralizeTel_5555 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2114 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2672
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_5545 v0))
-- Ledger.Ledger._.enactState
d_enactState_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5555 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_enactState_2118 ~v0 ~v1 v2 = du_enactState_2118 v2
du_enactState_2118 ::
  T_GeneralizeTel_5555 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
du_enactState_2118 v0
  = coe d_enactState_1974 (coe d_'46'generalizedField'45'Γ_5547 v0)
-- Ledger.Ledger._.pparams
d_pparams_2120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5555 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2120 ~v0 ~v1 v2 = du_pparams_2120 v2
du_pparams_2120 ::
  T_GeneralizeTel_5555 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2120 v0
  = coe d_pparams_1972 (coe d_'46'generalizedField'45'Γ_5547 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5555 -> Maybe AgdaAny
d_ppolicy_2122 ~v0 ~v1 v2 = du_ppolicy_2122 v2
du_ppolicy_2122 :: T_GeneralizeTel_5555 -> Maybe AgdaAny
du_ppolicy_2122 v0
  = coe d_ppolicy_1970 (coe d_'46'generalizedField'45'Γ_5547 v0)
-- Ledger.Ledger._.slot
d_slot_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5555 -> AgdaAny
d_slot_2124 ~v0 ~v1 v2 = du_slot_2124 v2
du_slot_2124 :: T_GeneralizeTel_5555 -> AgdaAny
du_slot_2124 v0
  = coe d_slot_1968 (coe d_'46'generalizedField'45'Γ_5547 v0)
-- Ledger.Ledger._.treasury
d_treasury_2126 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5555 -> Integer
d_treasury_2126 ~v0 ~v1 v2 = du_treasury_2126 v2
du_treasury_2126 :: T_GeneralizeTel_5555 -> Integer
du_treasury_2126 v0
  = coe d_treasury_1976 (coe d_'46'generalizedField'45'Γ_5547 v0)
-- Ledger.Ledger._.enactState
d_enactState_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5555 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_enactState_2132 ~v0 ~v1 v2 = du_enactState_2132 v2
du_enactState_2132 ::
  T_GeneralizeTel_5555 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
du_enactState_2132 v0
  = coe d_enactState_1974 (coe d_'46'generalizedField'45'Γ_5547 v0)
-- Ledger.Ledger._.pparams
d_pparams_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5555 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2134 ~v0 ~v1 v2 = du_pparams_2134 v2
du_pparams_2134 ::
  T_GeneralizeTel_5555 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2134 v0
  = coe d_pparams_1972 (coe d_'46'generalizedField'45'Γ_5547 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5555 -> Maybe AgdaAny
d_ppolicy_2136 ~v0 ~v1 v2 = du_ppolicy_2136 v2
du_ppolicy_2136 :: T_GeneralizeTel_5555 -> Maybe AgdaAny
du_ppolicy_2136 v0
  = coe d_ppolicy_1970 (coe d_'46'generalizedField'45'Γ_5547 v0)
-- Ledger.Ledger._.slot
d_slot_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5555 -> AgdaAny
d_slot_2138 ~v0 ~v1 v2 = du_slot_2138 v2
du_slot_2138 :: T_GeneralizeTel_5555 -> AgdaAny
du_slot_2138 v0
  = coe d_slot_1968 (coe d_'46'generalizedField'45'Γ_5547 v0)
-- Ledger.Ledger._.treasury
d_treasury_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5555 -> Integer
d_treasury_2140 ~v0 ~v1 v2 = du_treasury_2140 v2
du_treasury_2140 :: T_GeneralizeTel_5555 -> Integer
du_treasury_2140 v0
  = coe d_treasury_1976 (coe d_'46'generalizedField'45'Γ_5547 v0)
-- Ledger.Ledger._.certState
d_certState_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5975 -> MAlonzo.Code.Ledger.Certs.T_CertState_884
d_certState_2146 ~v0 ~v1 v2 = du_certState_2146 v2
du_certState_2146 ::
  T_GeneralizeTel_5975 -> MAlonzo.Code.Ledger.Certs.T_CertState_884
du_certState_2146 v0
  = coe d_certState_1992 (coe d_'46'generalizedField'45's_5967 v0)
-- Ledger.Ledger._.govSt
d_govSt_2148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5975 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2148 ~v0 ~v1 v2 = du_govSt_2148 v2
du_govSt_2148 ::
  T_GeneralizeTel_5975 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2148 v0
  = coe d_govSt_1990 (coe d_'46'generalizedField'45's_5967 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5975 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1808
d_utxoSt_2150 ~v0 ~v1 v2 = du_utxoSt_2150 v2
du_utxoSt_2150 ::
  T_GeneralizeTel_5975 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1808
du_utxoSt_2150 v0
  = coe d_utxoSt_1988 (coe d_'46'generalizedField'45's_5967 v0)
-- Ledger.Ledger._.enactState
d_enactState_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5975 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_enactState_2198 ~v0 ~v1 v2 = du_enactState_2198 v2
du_enactState_2198 ::
  T_GeneralizeTel_5975 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
du_enactState_2198 v0
  = coe d_enactState_1974 (coe d_'46'generalizedField'45'Γ_5971 v0)
-- Ledger.Ledger._.pparams
d_pparams_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5975 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2200 ~v0 ~v1 v2 = du_pparams_2200 v2
du_pparams_2200 ::
  T_GeneralizeTel_5975 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2200 v0
  = coe d_pparams_1972 (coe d_'46'generalizedField'45'Γ_5971 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5975 -> Maybe AgdaAny
d_ppolicy_2202 ~v0 ~v1 v2 = du_ppolicy_2202 v2
du_ppolicy_2202 :: T_GeneralizeTel_5975 -> Maybe AgdaAny
du_ppolicy_2202 v0
  = coe d_ppolicy_1970 (coe d_'46'generalizedField'45'Γ_5971 v0)
-- Ledger.Ledger._.slot
d_slot_2204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5975 -> AgdaAny
d_slot_2204 ~v0 ~v1 v2 = du_slot_2204 v2
du_slot_2204 :: T_GeneralizeTel_5975 -> AgdaAny
du_slot_2204 v0
  = coe d_slot_1968 (coe d_'46'generalizedField'45'Γ_5971 v0)
-- Ledger.Ledger._.treasury
d_treasury_2206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5975 -> Integer
d_treasury_2206 ~v0 ~v1 v2 = du_treasury_2206 v2
du_treasury_2206 :: T_GeneralizeTel_5975 -> Integer
du_treasury_2206 v0
  = coe d_treasury_1976 (coe d_'46'generalizedField'45'Γ_5971 v0)
-- Ledger.Ledger._.enactState
d_enactState_2212 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5975 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_enactState_2212 ~v0 ~v1 v2 = du_enactState_2212 v2
du_enactState_2212 ::
  T_GeneralizeTel_5975 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
du_enactState_2212 v0
  = coe d_enactState_1974 (coe d_'46'generalizedField'45'Γ_5971 v0)
-- Ledger.Ledger._.pparams
d_pparams_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5975 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2214 ~v0 ~v1 v2 = du_pparams_2214 v2
du_pparams_2214 ::
  T_GeneralizeTel_5975 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2214 v0
  = coe d_pparams_1972 (coe d_'46'generalizedField'45'Γ_5971 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5975 -> Maybe AgdaAny
d_ppolicy_2216 ~v0 ~v1 v2 = du_ppolicy_2216 v2
du_ppolicy_2216 :: T_GeneralizeTel_5975 -> Maybe AgdaAny
du_ppolicy_2216 v0
  = coe d_ppolicy_1970 (coe d_'46'generalizedField'45'Γ_5971 v0)
-- Ledger.Ledger._.slot
d_slot_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5975 -> AgdaAny
d_slot_2218 ~v0 ~v1 v2 = du_slot_2218 v2
du_slot_2218 :: T_GeneralizeTel_5975 -> AgdaAny
du_slot_2218 v0
  = coe d_slot_1968 (coe d_'46'generalizedField'45'Γ_5971 v0)
-- Ledger.Ledger._.treasury
d_treasury_2220 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_GeneralizeTel_5975 -> Integer
d_treasury_2220 ~v0 ~v1 v2 = du_treasury_2220 v2
du_treasury_2220 :: T_GeneralizeTel_5975 -> Integer
du_treasury_2220 v0
  = coe d_treasury_1976 (coe d_'46'generalizedField'45'Γ_5971 v0)
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1594 ->
  T_LEnv_1956 ->
  T_LState_1980 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2718] -> T_LState_1980 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2240 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5543 ::
  T_GeneralizeTel_5555 -> T_LState_1980
d_'46'generalizedField'45's_5543 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5545 ::
  T_GeneralizeTel_5555 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2718
d_'46'generalizedField'45'tx_5545 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5547 ::
  T_GeneralizeTel_5555 -> T_LEnv_1956
d_'46'generalizedField'45'Γ_5547 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5549 ::
  T_GeneralizeTel_5555 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1808
d_'46'generalizedField'45'utxoSt''_5549
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_5551 ::
  T_GeneralizeTel_5555 -> MAlonzo.Code.Ledger.Certs.T_CertState_884
d_'46'generalizedField'45'certState''_5551
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_5553 ::
  T_GeneralizeTel_5555 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_5553
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5555 a0 a1 = ()
data T_GeneralizeTel_5555
  = C_mkGeneralizeTel_5557 T_LState_1980
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2718 T_LEnv_1956
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1808
                           MAlonzo.Code.Ledger.Certs.T_CertState_884
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5967 ::
  T_GeneralizeTel_5975 -> T_LState_1980
d_'46'generalizedField'45's_5967 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5969 ::
  T_GeneralizeTel_5975 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2718
d_'46'generalizedField'45'tx_5969 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5971 ::
  T_GeneralizeTel_5975 -> T_LEnv_1956
d_'46'generalizedField'45'Γ_5971 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5973 ::
  T_GeneralizeTel_5975 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1808
d_'46'generalizedField'45'utxoSt''_5973
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5975 a0 a1 = ()
data T_GeneralizeTel_5975
  = C_mkGeneralizeTel_5977 T_LState_1980
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2718 T_LEnv_1956
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1808
