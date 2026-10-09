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

module MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _._≥ᵉ_
d__'8805''7497'__22 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__22 = erased
-- _.Acnt
d_Acnt_40 a0 = ()
-- _.THash
d_THash_672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_THash_672 = erased
-- _.Sig
d_Sig_878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Sig_878 = erased
-- _.Slot
d_Slot_882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_882 = erased
-- _.TopLevelTx
d_TopLevelTx_920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_920 = erased
-- _.VKey
d_VKey_972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKey_972 = erased
-- _.Acnt.reserves
d_reserves_1268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  Integer
d_reserves_1268 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_204
      (coe v0)
-- _.Acnt.treasury
d_treasury_1270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  Integer
d_treasury_1270 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_202
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState
d_EnactState_2696 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.cc
d_cc_2746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1340 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.constitution
d_constitution_2748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.pparams
d_pparams_2750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.pv
d_pv_2752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1344 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.withdrawals
d_withdrawals_2754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1348
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3888 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2762 = erased
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState
d_LedgerState_2830 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.certState
d_certState_2884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1584
d_certState_2884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.govSt
d_govSt_2886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2886 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3938
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.utxoSt
d_utxoSt_2888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3294
d_utxoSt_2888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3936
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EBCert
d_EBCert_2912 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.EBCert.sig
d_sig_2918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  AgdaAny
d_sig_2918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1656
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EBCert.signers
d_signers_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648 ->
  [Integer]
d_signers_2920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1654
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.Announcement
d_Announcement_2924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  ()
d_Announcement_2924 = erased
-- Ledger.Dijkstra.Specification.BlockBody._.EndorserBlock
d_EndorserBlock_2926 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.EndorserBlock.ebTxRefs
d_ebTxRefs_2932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ebTxRefs_2932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.BlocksMade
d_BlocksMade_2938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  ()
d_BlocksMade_2938 = erased
-- Ledger.Dijkstra.Specification.BlockBody._.totExUnits
d_totExUnits_3040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850 ->
  AgdaAny
d_totExUnits_3040 v0 ~v1 = du_totExUnits_3040 v0
du_totExUnits_3040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850 ->
  AgdaAny
du_totExUnits_3040 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3220
      (coe v0) v2
-- Ledger.Dijkstra.Specification.BlockBody._.RBHeaderHash
d_RBHeaderHash_3044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  ()
d_RBHeaderHash_3044 = erased
-- Ledger.Dijkstra.Specification.BlockBody.BHBody
d_BHBody_3046 a0 a1 = ()
data T_BHBody_3046
  = C_constructor_3076 AgdaAny Integer AgdaAny AgdaAny Integer
                       (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) Bool
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bvkcold
d_bvkcold_3062 :: T_BHBody_3046 -> AgdaAny
d_bvkcold_3062 v0
  = case coe v0 of
      C_constructor_3076 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bsize
d_bsize_3064 :: T_BHBody_3046 -> Integer
d_bsize_3064 v0
  = case coe v0 of
      C_constructor_3076 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.slot
d_slot_3066 :: T_BHBody_3046 -> AgdaAny
d_slot_3066 v0
  = case coe v0 of
      C_constructor_3076 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bhash
d_bhash_3068 :: T_BHBody_3046 -> AgdaAny
d_bhash_3068 v0
  = case coe v0 of
      C_constructor_3076 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.hBbsize
d_hBbsize_3070 :: T_BHBody_3046 -> Integer
d_hBbsize_3070 v0
  = case coe v0 of
      C_constructor_3076 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.announcedEB
d_announcedEB_3072 ::
  T_BHBody_3046 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_3072 v0
  = case coe v0 of
      C_constructor_3076 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.certifiedEB
d_certifiedEB_3074 :: T_BHBody_3046 -> Bool
d_certifiedEB_3074 v0
  = case coe v0 of
      C_constructor_3076 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHeader
d_BHeader_3078 a0 a1 = ()
data T_BHeader_3078 = C_constructor_3088 T_BHBody_3046 AgdaAny
-- Ledger.Dijkstra.Specification.BlockBody.BHeader.bhbody
d_bhbody_3084 :: T_BHeader_3078 -> T_BHBody_3046
d_bhbody_3084 v0
  = case coe v0 of
      C_constructor_3088 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHeader.bhsig
d_bhsig_3086 :: T_BHeader_3078 -> AgdaAny
d_bhsig_3086 v0
  = case coe v0 of
      C_constructor_3088 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.CertifiedEB
d_CertifiedEB_3090 a0 a1 = ()
data T_CertifiedEB_3090
  = C_constructor_3104 MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850]
-- Ledger.Dijkstra.Specification.BlockBody.CertifiedEB.cert
d_cert_3098 ::
  T_CertifiedEB_3090 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1648
d_cert_3098 v0
  = case coe v0 of
      C_constructor_3104 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.CertifiedEB.eb
d_eb_3100 ::
  T_CertifiedEB_3090 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22
d_eb_3100 v0
  = case coe v0 of
      C_constructor_3104 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.CertifiedEB.closure
d_closure_3102 ::
  T_CertifiedEB_3090 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850]
d_closure_3102 v0
  = case coe v0 of
      C_constructor_3104 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block
d_Block_3106 a0 a1 = ()
data T_Block_3106
  = C_constructor_3140 T_BHeader_3078 AgdaAny
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850]
                       (Maybe T_CertifiedEB_3090) Integer AgdaAny
-- Ledger.Dijkstra.Specification.BlockBody.Block.bheader
d_bheader_3124 :: T_Block_3106 -> T_BHeader_3078
d_bheader_3124 v0
  = case coe v0 of
      C_constructor_3140 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.bHeaderHash
d_bHeaderHash_3126 :: T_Block_3106 -> AgdaAny
d_bHeaderHash_3126 v0
  = case coe v0 of
      C_constructor_3140 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.ts
d_ts_3128 ::
  T_Block_3106 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850]
d_ts_3128 v0
  = case coe v0 of
      C_constructor_3140 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.ebCert
d_ebCert_3130 :: T_Block_3106 -> Maybe T_CertifiedEB_3090
d_ebCert_3130 v0
  = case coe v0 of
      C_constructor_3140 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.bBodySize
d_bBodySize_3132 :: T_Block_3106 -> Integer
d_bBodySize_3132 v0
  = case coe v0 of
      C_constructor_3140 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.bBodyHash
d_bBodyHash_3134 :: T_Block_3106 -> AgdaAny
d_bBodyHash_3134 v0
  = case coe v0 of
      C_constructor_3140 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.≡-bBodySize
d_'8801''45'bBodySize_3136 ::
  T_Block_3106 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_3136 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Block.≡-bBodyHash
d_'8801''45'bBodyHash_3138 ::
  T_Block_3106 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_3138 = erased
-- Ledger.Dijkstra.Specification.BlockBody.BBodyEnv
d_BBodyEnv_3142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  ()
d_BBodyEnv_3142 = erased
-- Ledger.Dijkstra.Specification.BlockBody.BBodyState
d_BBodyState_3144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  ()
d_BBodyState_3144 = erased
-- Ledger.Dijkstra.Specification.BlockBody.incrBlocks
d_incrBlocks_3146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_3146 v0 ~v1 v2 v3 = du_incrBlocks_3146 v0 v2 v3
du_incrBlocks_3146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_3146 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
               (coe v0))))
      v2
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_singleton'7504'_836
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v1) (coe (1 :: Integer)))
-- Ledger.Dijkstra.Specification.BlockBody.leiosBodyChecks
d_leiosBodyChecks_3152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  Bool ->
  Maybe T_CertifiedEB_3090 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  ()
d_leiosBodyChecks_3152 = erased
-- Ledger.Dijkstra.Specification.BlockBody.leiosBodyChecks?
d_leiosBodyChecks'63'_3166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  Bool ->
  Maybe T_CertifiedEB_3090 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_leiosBodyChecks'63'_3166 ~v0 ~v1 v2 v3 v4
  = du_leiosBodyChecks'63'_3166 v2 v3 v4
du_leiosBodyChecks'63'_3166 ::
  Bool ->
  Maybe T_CertifiedEB_3090 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_leiosBodyChecks'63'_3166 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
        -> case coe v2 of
             []
               -> let v4
                        = MAlonzo.Code.Data.Bool.Properties.d__'8799'__3196
                            (coe v0) (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10) in
                  coe
                    (case coe v4 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                         -> if coe v5
                              then case coe v6 of
                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                                       -> coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                            (coe v5)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe v7) erased))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              else coe
                                     seq (coe v6)
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                        (coe v5)
                                        (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             (:) v4 v5
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Data.Bool.Properties.d__'8799'__3196 (coe v0)
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Dec-leiosBodyChecks
d_Dec'45'leiosBodyChecks_3194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3268 ->
  Bool ->
  Maybe T_CertifiedEB_3090 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'leiosBodyChecks_3194 ~v0 ~v1 v2 v3 v4
  = du_Dec'45'leiosBodyChecks_3194 v2 v3 v4
du_Dec'45'leiosBodyChecks_3194 ::
  Bool ->
  Maybe T_CertifiedEB_3090 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3850] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'leiosBodyChecks_3194 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe du_leiosBodyChecks'63'_3166 (coe v0) (coe v1) (coe v2))
-- Ledger.Dijkstra.Specification.BlockBody._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__3196 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'BBODY'10632'__3196
  = C_BBODY'45'Block'45'Body_3222 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
