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
  MAlonzo.Code.Ledger.Certs.T_CertEnv_824 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_888 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_792] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_888 -> ()
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
d_epoch_480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_480 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0))
-- Ledger.Ledger._.EnactState
d_EnactState_1598 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_962 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1650 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1658 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1660 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 -> ()
d_GovState_1660 = erased
-- Ledger.Ledger._.UTxOState
d_UTxOState_1778 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1894 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.LEnv
d_LEnv_1952 a0 a1 = ()
data T_LEnv_1952
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1974 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_228
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_788
                                                          Integer
-- Ledger.Ledger.LEnv.slot
d_slot_1964 :: T_LEnv_1952 -> AgdaAny
d_slot_1964 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1974 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_1966 :: T_LEnv_1952 -> Maybe AgdaAny
d_ppolicy_1966 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1974 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_1968 ::
  T_LEnv_1952 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_1968 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1974 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_1970 ::
  T_LEnv_1952 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
d_enactState_1970 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1974 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_1972 :: T_LEnv_1952 -> Integer
d_treasury_1972 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1974 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_1976 a0 a1 = ()
data T_LState_1976
  = C_'10214'_'44'_'44'_'10215''737'_1990 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_888
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_1984 ::
  T_LState_1976 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
d_utxoSt_1984 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1990 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_1986 ::
  T_LState_1976 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1986 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1990 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_1988 ::
  T_LState_1976 -> MAlonzo.Code.Ledger.Certs.T_CertState_888
d_certState_1988 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1990 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1992 ~v0 ~v1 v2 = du_txgov_1992 v2
du_txgov_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2616 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1992 v0
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
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2058 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2058
  = C_LEDGER'45'V_2138 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2218 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5551 -> MAlonzo.Code.Ledger.Certs.T_CertState_888
d_certState_2062 ~v0 ~v1 v2 = du_certState_2062 v2
du_certState_2062 ::
  T_GeneralizeTel_5551 -> MAlonzo.Code.Ledger.Certs.T_CertState_888
du_certState_2062 v0
  = coe d_certState_1988 (coe d_'46'generalizedField'45's_5539 v0)
-- Ledger.Ledger._.govSt
d_govSt_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5551 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2064 ~v0 ~v1 v2 = du_govSt_2064 v2
du_govSt_2064 ::
  T_GeneralizeTel_5551 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2064 v0
  = coe d_govSt_1986 (coe d_'46'generalizedField'45's_5539 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_2066 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5551 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
d_utxoSt_2066 ~v0 ~v1 v2 = du_utxoSt_2066 v2
du_utxoSt_2066 ::
  T_GeneralizeTel_5551 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
du_utxoSt_2066 v0
  = coe d_utxoSt_1984 (coe d_'46'generalizedField'45's_5539 v0)
-- Ledger.Ledger._.txcerts
d_txcerts_2088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5551 -> [MAlonzo.Code.Ledger.Certs.T_DCert_792]
d_txcerts_2088 ~v0 ~v1 v2 = du_txcerts_2088 v2
du_txcerts_2088 ::
  T_GeneralizeTel_5551 -> [MAlonzo.Code.Ledger.Certs.T_DCert_792]
du_txcerts_2088 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2670
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_5541 v0))
-- Ledger.Ledger._.txid
d_txid_2094 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5551 -> AgdaAny
d_txid_2094 ~v0 ~v1 v2 = du_txid_2094 v2
du_txid_2094 :: T_GeneralizeTel_5551 -> AgdaAny
du_txid_2094 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2690
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_5541 v0))
-- Ledger.Ledger._.txvote
d_txvote_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5551 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_694]
d_txvote_2108 ~v0 ~v1 v2 = du_txvote_2108 v2
du_txvote_2108 ::
  T_GeneralizeTel_5551 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_694]
du_txvote_2108 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2674
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_5541 v0))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5551 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2110 ~v0 ~v1 v2 = du_txwdrls_2110 v2
du_txwdrls_2110 ::
  T_GeneralizeTel_5551 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2110 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2672
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2728
         (coe d_'46'generalizedField'45'tx_5541 v0))
-- Ledger.Ledger._.enactState
d_enactState_2114 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5551 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
d_enactState_2114 ~v0 ~v1 v2 = du_enactState_2114 v2
du_enactState_2114 ::
  T_GeneralizeTel_5551 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
du_enactState_2114 v0
  = coe d_enactState_1970 (coe d_'46'generalizedField'45'Γ_5543 v0)
-- Ledger.Ledger._.pparams
d_pparams_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5551 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2116 ~v0 ~v1 v2 = du_pparams_2116 v2
du_pparams_2116 ::
  T_GeneralizeTel_5551 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2116 v0
  = coe d_pparams_1968 (coe d_'46'generalizedField'45'Γ_5543 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5551 -> Maybe AgdaAny
d_ppolicy_2118 ~v0 ~v1 v2 = du_ppolicy_2118 v2
du_ppolicy_2118 :: T_GeneralizeTel_5551 -> Maybe AgdaAny
du_ppolicy_2118 v0
  = coe d_ppolicy_1966 (coe d_'46'generalizedField'45'Γ_5543 v0)
-- Ledger.Ledger._.slot
d_slot_2120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5551 -> AgdaAny
d_slot_2120 ~v0 ~v1 v2 = du_slot_2120 v2
du_slot_2120 :: T_GeneralizeTel_5551 -> AgdaAny
du_slot_2120 v0
  = coe d_slot_1964 (coe d_'46'generalizedField'45'Γ_5543 v0)
-- Ledger.Ledger._.treasury
d_treasury_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5551 -> Integer
d_treasury_2122 ~v0 ~v1 v2 = du_treasury_2122 v2
du_treasury_2122 :: T_GeneralizeTel_5551 -> Integer
du_treasury_2122 v0
  = coe d_treasury_1972 (coe d_'46'generalizedField'45'Γ_5543 v0)
-- Ledger.Ledger._.enactState
d_enactState_2128 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5551 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
d_enactState_2128 ~v0 ~v1 v2 = du_enactState_2128 v2
du_enactState_2128 ::
  T_GeneralizeTel_5551 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
du_enactState_2128 v0
  = coe d_enactState_1970 (coe d_'46'generalizedField'45'Γ_5543 v0)
-- Ledger.Ledger._.pparams
d_pparams_2130 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5551 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2130 ~v0 ~v1 v2 = du_pparams_2130 v2
du_pparams_2130 ::
  T_GeneralizeTel_5551 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2130 v0
  = coe d_pparams_1968 (coe d_'46'generalizedField'45'Γ_5543 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5551 -> Maybe AgdaAny
d_ppolicy_2132 ~v0 ~v1 v2 = du_ppolicy_2132 v2
du_ppolicy_2132 :: T_GeneralizeTel_5551 -> Maybe AgdaAny
du_ppolicy_2132 v0
  = coe d_ppolicy_1966 (coe d_'46'generalizedField'45'Γ_5543 v0)
-- Ledger.Ledger._.slot
d_slot_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5551 -> AgdaAny
d_slot_2134 ~v0 ~v1 v2 = du_slot_2134 v2
du_slot_2134 :: T_GeneralizeTel_5551 -> AgdaAny
du_slot_2134 v0
  = coe d_slot_1964 (coe d_'46'generalizedField'45'Γ_5543 v0)
-- Ledger.Ledger._.treasury
d_treasury_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5551 -> Integer
d_treasury_2136 ~v0 ~v1 v2 = du_treasury_2136 v2
du_treasury_2136 :: T_GeneralizeTel_5551 -> Integer
du_treasury_2136 v0
  = coe d_treasury_1972 (coe d_'46'generalizedField'45'Γ_5543 v0)
-- Ledger.Ledger._.certState
d_certState_2142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5971 -> MAlonzo.Code.Ledger.Certs.T_CertState_888
d_certState_2142 ~v0 ~v1 v2 = du_certState_2142 v2
du_certState_2142 ::
  T_GeneralizeTel_5971 -> MAlonzo.Code.Ledger.Certs.T_CertState_888
du_certState_2142 v0
  = coe d_certState_1988 (coe d_'46'generalizedField'45's_5963 v0)
-- Ledger.Ledger._.govSt
d_govSt_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5971 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2144 ~v0 ~v1 v2 = du_govSt_2144 v2
du_govSt_2144 ::
  T_GeneralizeTel_5971 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2144 v0
  = coe d_govSt_1986 (coe d_'46'generalizedField'45's_5963 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5971 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
d_utxoSt_2146 ~v0 ~v1 v2 = du_utxoSt_2146 v2
du_utxoSt_2146 ::
  T_GeneralizeTel_5971 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
du_utxoSt_2146 v0
  = coe d_utxoSt_1984 (coe d_'46'generalizedField'45's_5963 v0)
-- Ledger.Ledger._.enactState
d_enactState_2194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5971 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
d_enactState_2194 ~v0 ~v1 v2 = du_enactState_2194 v2
du_enactState_2194 ::
  T_GeneralizeTel_5971 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
du_enactState_2194 v0
  = coe d_enactState_1970 (coe d_'46'generalizedField'45'Γ_5967 v0)
-- Ledger.Ledger._.pparams
d_pparams_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5971 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2196 ~v0 ~v1 v2 = du_pparams_2196 v2
du_pparams_2196 ::
  T_GeneralizeTel_5971 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2196 v0
  = coe d_pparams_1968 (coe d_'46'generalizedField'45'Γ_5967 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5971 -> Maybe AgdaAny
d_ppolicy_2198 ~v0 ~v1 v2 = du_ppolicy_2198 v2
du_ppolicy_2198 :: T_GeneralizeTel_5971 -> Maybe AgdaAny
du_ppolicy_2198 v0
  = coe d_ppolicy_1966 (coe d_'46'generalizedField'45'Γ_5967 v0)
-- Ledger.Ledger._.slot
d_slot_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5971 -> AgdaAny
d_slot_2200 ~v0 ~v1 v2 = du_slot_2200 v2
du_slot_2200 :: T_GeneralizeTel_5971 -> AgdaAny
du_slot_2200 v0
  = coe d_slot_1964 (coe d_'46'generalizedField'45'Γ_5967 v0)
-- Ledger.Ledger._.treasury
d_treasury_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5971 -> Integer
d_treasury_2202 ~v0 ~v1 v2 = du_treasury_2202 v2
du_treasury_2202 :: T_GeneralizeTel_5971 -> Integer
du_treasury_2202 v0
  = coe d_treasury_1972 (coe d_'46'generalizedField'45'Γ_5967 v0)
-- Ledger.Ledger._.enactState
d_enactState_2208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5971 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
d_enactState_2208 ~v0 ~v1 v2 = du_enactState_2208 v2
du_enactState_2208 ::
  T_GeneralizeTel_5971 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
du_enactState_2208 v0
  = coe d_enactState_1970 (coe d_'46'generalizedField'45'Γ_5967 v0)
-- Ledger.Ledger._.pparams
d_pparams_2210 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5971 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2210 ~v0 ~v1 v2 = du_pparams_2210 v2
du_pparams_2210 ::
  T_GeneralizeTel_5971 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2210 v0
  = coe d_pparams_1968 (coe d_'46'generalizedField'45'Γ_5967 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2212 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5971 -> Maybe AgdaAny
d_ppolicy_2212 ~v0 ~v1 v2 = du_ppolicy_2212 v2
du_ppolicy_2212 :: T_GeneralizeTel_5971 -> Maybe AgdaAny
du_ppolicy_2212 v0
  = coe d_ppolicy_1966 (coe d_'46'generalizedField'45'Γ_5967 v0)
-- Ledger.Ledger._.slot
d_slot_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5971 -> AgdaAny
d_slot_2214 ~v0 ~v1 v2 = du_slot_2214 v2
du_slot_2214 :: T_GeneralizeTel_5971 -> AgdaAny
du_slot_2214 v0
  = coe d_slot_1964 (coe d_'46'generalizedField'45'Γ_5967 v0)
-- Ledger.Ledger._.treasury
d_treasury_2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_5971 -> Integer
d_treasury_2216 ~v0 ~v1 v2 = du_treasury_2216 v2
du_treasury_2216 :: T_GeneralizeTel_5971 -> Integer
du_treasury_2216 v0
  = coe d_treasury_1972 (coe d_'46'generalizedField'45'Γ_5967 v0)
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2236 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_LEnv_1952 ->
  T_LState_1976 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2718] -> T_LState_1976 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2236 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5539 ::
  T_GeneralizeTel_5551 -> T_LState_1976
d_'46'generalizedField'45's_5539 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5541 ::
  T_GeneralizeTel_5551 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2718
d_'46'generalizedField'45'tx_5541 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5543 ::
  T_GeneralizeTel_5551 -> T_LEnv_1952
d_'46'generalizedField'45'Γ_5543 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5545 ::
  T_GeneralizeTel_5551 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
d_'46'generalizedField'45'utxoSt''_5545
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_5547 ::
  T_GeneralizeTel_5551 -> MAlonzo.Code.Ledger.Certs.T_CertState_888
d_'46'generalizedField'45'certState''_5547
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_5549 ::
  T_GeneralizeTel_5551 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_5549
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5551 a0 a1 = ()
data T_GeneralizeTel_5551
  = C_mkGeneralizeTel_5553 T_LState_1976
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2718 T_LEnv_1952
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
                           MAlonzo.Code.Ledger.Certs.T_CertState_888
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5963 ::
  T_GeneralizeTel_5971 -> T_LState_1976
d_'46'generalizedField'45's_5963 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5965 ::
  T_GeneralizeTel_5971 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2718
d_'46'generalizedField'45'tx_5965 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5967 ::
  T_GeneralizeTel_5971 -> T_LEnv_1952
d_'46'generalizedField'45'Γ_5967 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5969 ::
  T_GeneralizeTel_5971 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
d_'46'generalizedField'45'utxoSt''_5969
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5971 a0 a1 = ()
data T_GeneralizeTel_5971
  = C_mkGeneralizeTel_5973 T_LState_1976
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2718 T_LEnv_1952
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
