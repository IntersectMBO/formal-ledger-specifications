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
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Gov
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Ledger.Utxow

-- _._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__22 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_824 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_888 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_792] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_888 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__20 = erased
-- _.CertEnv
d_CertEnv_60 a0 = ()
-- _.CertState
d_CertState_62 a0 = ()
-- _.GovProposal
d_GovProposal_220 a0 = ()
-- _.GovVote
d_GovVote_224 a0 = ()
-- _.PParams
d_PParams_296 a0 = ()
-- _.ScriptHash
d_ScriptHash_360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_360 = erased
-- _.Slot
d_Slot_408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_408 = erased
-- _.Tx
d_Tx_438 a0 = ()
-- _.TxBody
d_TxBody_440 a0 = ()
-- _.epoch
d_epoch_484 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_484 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0))
-- Ledger.Ledger._.EnactState
d_EnactState_1606 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1658 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_966 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1658 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1666 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1668 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 -> ()
d_GovState_1668 = erased
-- Ledger.Ledger._.UTxOState
d_UTxOState_1786 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1902 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.LEnv
d_LEnv_1960 a0 a1 = ()
data T_LEnv_1960
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1982 AgdaAny
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_228
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_788
                                                          Integer
-- Ledger.Ledger.LEnv.slot
d_slot_1972 :: T_LEnv_1960 -> AgdaAny
d_slot_1972 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1982 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_1974 :: T_LEnv_1960 -> Maybe AgdaAny
d_ppolicy_1974 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1982 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_1976 ::
  T_LEnv_1960 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_1976 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1982 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_1978 ::
  T_LEnv_1960 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
d_enactState_1978 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1982 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.treasury
d_treasury_1980 :: T_LEnv_1960 -> Integer
d_treasury_1980 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''737''7497'_1982 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_1984 a0 a1 = ()
data T_LState_1984
  = C_'10214'_'44'_'44'_'10215''737'_1998 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_888
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_1992 ::
  T_LState_1984 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812
d_utxoSt_1992 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1998 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_1994 ::
  T_LState_1984 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1994 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1998 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_1996 ::
  T_LState_1984 -> MAlonzo.Code.Ledger.Certs.T_CertState_888
d_certState_1996 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1998 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_2000 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2000 ~v0 ~v1 v2 = du_txgov_2000 v2
du_txgov_2000 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2624 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2000 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2684 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2682 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2066 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2066
  = C_LEDGER'45'V_2146 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2226 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5559 -> MAlonzo.Code.Ledger.Certs.T_CertState_888
d_certState_2070 ~v0 ~v1 v2 = du_certState_2070 v2
du_certState_2070 ::
  T_GeneralizeTel_5559 -> MAlonzo.Code.Ledger.Certs.T_CertState_888
du_certState_2070 v0
  = coe d_certState_1996 (coe d_'46'generalizedField'45's_5547 v0)
-- Ledger.Ledger._.govSt
d_govSt_2072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5559 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2072 ~v0 ~v1 v2 = du_govSt_2072 v2
du_govSt_2072 ::
  T_GeneralizeTel_5559 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2072 v0
  = coe d_govSt_1994 (coe d_'46'generalizedField'45's_5547 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5559 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812
d_utxoSt_2074 ~v0 ~v1 v2 = du_utxoSt_2074 v2
du_utxoSt_2074 ::
  T_GeneralizeTel_5559 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812
du_utxoSt_2074 v0
  = coe d_utxoSt_1992 (coe d_'46'generalizedField'45's_5547 v0)
-- Ledger.Ledger._.txcerts
d_txcerts_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5559 -> [MAlonzo.Code.Ledger.Certs.T_DCert_792]
d_txcerts_2096 ~v0 ~v1 v2 = du_txcerts_2096 v2
du_txcerts_2096 ::
  T_GeneralizeTel_5559 -> [MAlonzo.Code.Ledger.Certs.T_DCert_792]
du_txcerts_2096 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2678
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2736
         (coe d_'46'generalizedField'45'tx_5549 v0))
-- Ledger.Ledger._.txid
d_txid_2102 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5559 -> AgdaAny
d_txid_2102 ~v0 ~v1 v2 = du_txid_2102 v2
du_txid_2102 :: T_GeneralizeTel_5559 -> AgdaAny
du_txid_2102 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2698
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2736
         (coe d_'46'generalizedField'45'tx_5549 v0))
-- Ledger.Ledger._.txvote
d_txvote_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5559 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_694]
d_txvote_2116 ~v0 ~v1 v2 = du_txvote_2116 v2
du_txvote_2116 ::
  T_GeneralizeTel_5559 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_694]
du_txvote_2116 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2682
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2736
         (coe d_'46'generalizedField'45'tx_5549 v0))
-- Ledger.Ledger._.txwdrls
d_txwdrls_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5559 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2118 ~v0 ~v1 v2 = du_txwdrls_2118 v2
du_txwdrls_2118 ::
  T_GeneralizeTel_5559 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2118 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2680
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2736
         (coe d_'46'generalizedField'45'tx_5549 v0))
-- Ledger.Ledger._.enactState
d_enactState_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5559 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
d_enactState_2122 ~v0 ~v1 v2 = du_enactState_2122 v2
du_enactState_2122 ::
  T_GeneralizeTel_5559 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
du_enactState_2122 v0
  = coe d_enactState_1978 (coe d_'46'generalizedField'45'Γ_5551 v0)
-- Ledger.Ledger._.pparams
d_pparams_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5559 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2124 ~v0 ~v1 v2 = du_pparams_2124 v2
du_pparams_2124 ::
  T_GeneralizeTel_5559 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2124 v0
  = coe d_pparams_1976 (coe d_'46'generalizedField'45'Γ_5551 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2126 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5559 -> Maybe AgdaAny
d_ppolicy_2126 ~v0 ~v1 v2 = du_ppolicy_2126 v2
du_ppolicy_2126 :: T_GeneralizeTel_5559 -> Maybe AgdaAny
du_ppolicy_2126 v0
  = coe d_ppolicy_1974 (coe d_'46'generalizedField'45'Γ_5551 v0)
-- Ledger.Ledger._.slot
d_slot_2128 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5559 -> AgdaAny
d_slot_2128 ~v0 ~v1 v2 = du_slot_2128 v2
du_slot_2128 :: T_GeneralizeTel_5559 -> AgdaAny
du_slot_2128 v0
  = coe d_slot_1972 (coe d_'46'generalizedField'45'Γ_5551 v0)
-- Ledger.Ledger._.treasury
d_treasury_2130 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5559 -> Integer
d_treasury_2130 ~v0 ~v1 v2 = du_treasury_2130 v2
du_treasury_2130 :: T_GeneralizeTel_5559 -> Integer
du_treasury_2130 v0
  = coe d_treasury_1980 (coe d_'46'generalizedField'45'Γ_5551 v0)
-- Ledger.Ledger._.enactState
d_enactState_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5559 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
d_enactState_2136 ~v0 ~v1 v2 = du_enactState_2136 v2
du_enactState_2136 ::
  T_GeneralizeTel_5559 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
du_enactState_2136 v0
  = coe d_enactState_1978 (coe d_'46'generalizedField'45'Γ_5551 v0)
-- Ledger.Ledger._.pparams
d_pparams_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5559 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2138 ~v0 ~v1 v2 = du_pparams_2138 v2
du_pparams_2138 ::
  T_GeneralizeTel_5559 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2138 v0
  = coe d_pparams_1976 (coe d_'46'generalizedField'45'Γ_5551 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5559 -> Maybe AgdaAny
d_ppolicy_2140 ~v0 ~v1 v2 = du_ppolicy_2140 v2
du_ppolicy_2140 :: T_GeneralizeTel_5559 -> Maybe AgdaAny
du_ppolicy_2140 v0
  = coe d_ppolicy_1974 (coe d_'46'generalizedField'45'Γ_5551 v0)
-- Ledger.Ledger._.slot
d_slot_2142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5559 -> AgdaAny
d_slot_2142 ~v0 ~v1 v2 = du_slot_2142 v2
du_slot_2142 :: T_GeneralizeTel_5559 -> AgdaAny
du_slot_2142 v0
  = coe d_slot_1972 (coe d_'46'generalizedField'45'Γ_5551 v0)
-- Ledger.Ledger._.treasury
d_treasury_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5559 -> Integer
d_treasury_2144 ~v0 ~v1 v2 = du_treasury_2144 v2
du_treasury_2144 :: T_GeneralizeTel_5559 -> Integer
du_treasury_2144 v0
  = coe d_treasury_1980 (coe d_'46'generalizedField'45'Γ_5551 v0)
-- Ledger.Ledger._.certState
d_certState_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5979 -> MAlonzo.Code.Ledger.Certs.T_CertState_888
d_certState_2150 ~v0 ~v1 v2 = du_certState_2150 v2
du_certState_2150 ::
  T_GeneralizeTel_5979 -> MAlonzo.Code.Ledger.Certs.T_CertState_888
du_certState_2150 v0
  = coe d_certState_1996 (coe d_'46'generalizedField'45's_5971 v0)
-- Ledger.Ledger._.govSt
d_govSt_2152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5979 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2152 ~v0 ~v1 v2 = du_govSt_2152 v2
du_govSt_2152 ::
  T_GeneralizeTel_5979 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2152 v0
  = coe d_govSt_1994 (coe d_'46'generalizedField'45's_5971 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_2154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5979 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812
d_utxoSt_2154 ~v0 ~v1 v2 = du_utxoSt_2154 v2
du_utxoSt_2154 ::
  T_GeneralizeTel_5979 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812
du_utxoSt_2154 v0
  = coe d_utxoSt_1992 (coe d_'46'generalizedField'45's_5971 v0)
-- Ledger.Ledger._.enactState
d_enactState_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5979 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
d_enactState_2202 ~v0 ~v1 v2 = du_enactState_2202 v2
du_enactState_2202 ::
  T_GeneralizeTel_5979 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
du_enactState_2202 v0
  = coe d_enactState_1978 (coe d_'46'generalizedField'45'Γ_5975 v0)
-- Ledger.Ledger._.pparams
d_pparams_2204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5979 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2204 ~v0 ~v1 v2 = du_pparams_2204 v2
du_pparams_2204 ::
  T_GeneralizeTel_5979 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2204 v0
  = coe d_pparams_1976 (coe d_'46'generalizedField'45'Γ_5975 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5979 -> Maybe AgdaAny
d_ppolicy_2206 ~v0 ~v1 v2 = du_ppolicy_2206 v2
du_ppolicy_2206 :: T_GeneralizeTel_5979 -> Maybe AgdaAny
du_ppolicy_2206 v0
  = coe d_ppolicy_1974 (coe d_'46'generalizedField'45'Γ_5975 v0)
-- Ledger.Ledger._.slot
d_slot_2208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5979 -> AgdaAny
d_slot_2208 ~v0 ~v1 v2 = du_slot_2208 v2
du_slot_2208 :: T_GeneralizeTel_5979 -> AgdaAny
du_slot_2208 v0
  = coe d_slot_1972 (coe d_'46'generalizedField'45'Γ_5975 v0)
-- Ledger.Ledger._.treasury
d_treasury_2210 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5979 -> Integer
d_treasury_2210 ~v0 ~v1 v2 = du_treasury_2210 v2
du_treasury_2210 :: T_GeneralizeTel_5979 -> Integer
du_treasury_2210 v0
  = coe d_treasury_1980 (coe d_'46'generalizedField'45'Γ_5975 v0)
-- Ledger.Ledger._.enactState
d_enactState_2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5979 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
d_enactState_2216 ~v0 ~v1 v2 = du_enactState_2216 v2
du_enactState_2216 ::
  T_GeneralizeTel_5979 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
du_enactState_2216 v0
  = coe d_enactState_1978 (coe d_'46'generalizedField'45'Γ_5975 v0)
-- Ledger.Ledger._.pparams
d_pparams_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5979 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_2218 ~v0 ~v1 v2 = du_pparams_2218 v2
du_pparams_2218 ::
  T_GeneralizeTel_5979 -> MAlonzo.Code.Ledger.PParams.T_PParams_228
du_pparams_2218 v0
  = coe d_pparams_1976 (coe d_'46'generalizedField'45'Γ_5975 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2220 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5979 -> Maybe AgdaAny
d_ppolicy_2220 ~v0 ~v1 v2 = du_ppolicy_2220 v2
du_ppolicy_2220 :: T_GeneralizeTel_5979 -> Maybe AgdaAny
du_ppolicy_2220 v0
  = coe d_ppolicy_1974 (coe d_'46'generalizedField'45'Γ_5975 v0)
-- Ledger.Ledger._.slot
d_slot_2222 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5979 -> AgdaAny
d_slot_2222 ~v0 ~v1 v2 = du_slot_2222 v2
du_slot_2222 :: T_GeneralizeTel_5979 -> AgdaAny
du_slot_2222 v0
  = coe d_slot_1972 (coe d_'46'generalizedField'45'Γ_5975 v0)
-- Ledger.Ledger._.treasury
d_treasury_2224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_GeneralizeTel_5979 -> Integer
d_treasury_2224 ~v0 ~v1 v2 = du_treasury_2224 v2
du_treasury_2224 :: T_GeneralizeTel_5979 -> Integer
du_treasury_2224 v0
  = coe d_treasury_1980 (coe d_'46'generalizedField'45'Γ_5975 v0)
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1598 ->
  T_LEnv_1960 ->
  T_LState_1984 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2726] -> T_LState_1984 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2244 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5547 ::
  T_GeneralizeTel_5559 -> T_LState_1984
d_'46'generalizedField'45's_5547 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5549 ::
  T_GeneralizeTel_5559 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2726
d_'46'generalizedField'45'tx_5549 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5551 ::
  T_GeneralizeTel_5559 -> T_LEnv_1960
d_'46'generalizedField'45'Γ_5551 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5553 ::
  T_GeneralizeTel_5559 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812
d_'46'generalizedField'45'utxoSt''_5553
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_5555 ::
  T_GeneralizeTel_5559 -> MAlonzo.Code.Ledger.Certs.T_CertState_888
d_'46'generalizedField'45'certState''_5555
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_5557 ::
  T_GeneralizeTel_5559 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_5557
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5559 a0 a1 = ()
data T_GeneralizeTel_5559
  = C_mkGeneralizeTel_5561 T_LState_1984
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2726 T_LEnv_1960
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812
                           MAlonzo.Code.Ledger.Certs.T_CertState_888
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5971 ::
  T_GeneralizeTel_5979 -> T_LState_1984
d_'46'generalizedField'45's_5971 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5973 ::
  T_GeneralizeTel_5979 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2726
d_'46'generalizedField'45'tx_5973 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5975 ::
  T_GeneralizeTel_5979 -> T_LEnv_1960
d_'46'generalizedField'45'Γ_5975 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5977 ::
  T_GeneralizeTel_5979 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812
d_'46'generalizedField'45'utxoSt''_5977
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5979 a0 a1 = ()
data T_GeneralizeTel_5979
  = C_mkGeneralizeTel_5981 T_LState_1984
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2726 T_LEnv_1960
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1812
