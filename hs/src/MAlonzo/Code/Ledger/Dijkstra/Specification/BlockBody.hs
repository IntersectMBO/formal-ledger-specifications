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
d_Sig_876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Sig_876 = erased
-- _.Slot
d_Slot_880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_880 = erased
-- _.TopLevelTx
d_TopLevelTx_918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_918 = erased
-- _.VKey
d_VKey_970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_VKey_970 = erased
-- _.Acnt.reserves
d_reserves_1264 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  Integer
d_reserves_1264 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_204
      (coe v0)
-- _.Acnt.treasury
d_treasury_1266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  Integer
d_treasury_1266 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_202
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState
d_EnactState_2692 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.cc
d_cc_2742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1336 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.constitution
d_constitution_2744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1338
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.pparams
d_pparams_2746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.pv
d_pv_2748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1340 (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EnactState.withdrawals
d_withdrawals_2750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1324 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1344
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3884 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2758 = erased
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState
d_LedgerState_2826 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.certState
d_certState_2880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1580
d_certState_2880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3936
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.govSt
d_govSt_2882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3934
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.LedgerState.utxoSt
d_utxoSt_2884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3924 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3290
d_utxoSt_2884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3932
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EBCert
d_EBCert_2908 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody._.EBCert.sig
d_sig_2914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  AgdaAny
d_sig_2914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1652
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.EBCert.signers
d_signers_2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  [Integer]
d_signers_2916 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1650
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody._.BlocksMade
d_BlocksMade_2922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_BlocksMade_2922 = erased
-- Ledger.Dijkstra.Specification.BlockBody._.totExUnits
d_totExUnits_3024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842 ->
  AgdaAny
d_totExUnits_3024 v0 ~v1 = du_totExUnits_3024 v0
du_totExUnits_3024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842 ->
  AgdaAny
du_totExUnits_3024 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3216
      (coe v0) v2
-- Ledger.Dijkstra.Specification.BlockBody._.RBHeaderHash
d_RBHeaderHash_3030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_RBHeaderHash_3030 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Announcement
d_Announcement_3032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_Announcement_3032 = erased
-- Ledger.Dijkstra.Specification.BlockBody.BHBody
d_BHBody_3034 a0 a1 = ()
data T_BHBody_3034
  = C_constructor_3064 AgdaAny Integer AgdaAny AgdaAny Integer
                       (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) Bool
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bvkcold
d_bvkcold_3050 :: T_BHBody_3034 -> AgdaAny
d_bvkcold_3050 v0
  = case coe v0 of
      C_constructor_3064 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bsize
d_bsize_3052 :: T_BHBody_3034 -> Integer
d_bsize_3052 v0
  = case coe v0 of
      C_constructor_3064 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.slot
d_slot_3054 :: T_BHBody_3034 -> AgdaAny
d_slot_3054 v0
  = case coe v0 of
      C_constructor_3064 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.bhash
d_bhash_3056 :: T_BHBody_3034 -> AgdaAny
d_bhash_3056 v0
  = case coe v0 of
      C_constructor_3064 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.hBbsize
d_hBbsize_3058 :: T_BHBody_3034 -> Integer
d_hBbsize_3058 v0
  = case coe v0 of
      C_constructor_3064 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.announcedEB
d_announcedEB_3060 ::
  T_BHBody_3034 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_announcedEB_3060 v0
  = case coe v0 of
      C_constructor_3064 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHBody.certifiedEB
d_certifiedEB_3062 :: T_BHBody_3034 -> Bool
d_certifiedEB_3062 v0
  = case coe v0 of
      C_constructor_3064 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHeader
d_BHeader_3066 a0 a1 = ()
data T_BHeader_3066 = C_constructor_3076 T_BHBody_3034 AgdaAny
-- Ledger.Dijkstra.Specification.BlockBody.BHeader.bhbody
d_bhbody_3072 :: T_BHeader_3066 -> T_BHBody_3034
d_bhbody_3072 v0
  = case coe v0 of
      C_constructor_3076 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.BHeader.bhsig
d_bhsig_3074 :: T_BHeader_3066 -> AgdaAny
d_bhsig_3074 v0
  = case coe v0 of
      C_constructor_3076 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block
d_Block_3078 a0 a1 = ()
data T_Block_3078
  = C_constructor_3112 T_BHeader_3066 AgdaAny
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842]
                       (Maybe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644)
                       Integer AgdaAny
-- Ledger.Dijkstra.Specification.BlockBody.Block.bheader
d_bheader_3096 :: T_Block_3078 -> T_BHeader_3066
d_bheader_3096 v0
  = case coe v0 of
      C_constructor_3112 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.bHeaderHash
d_bHeaderHash_3098 :: T_Block_3078 -> AgdaAny
d_bHeaderHash_3098 v0
  = case coe v0 of
      C_constructor_3112 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.ts
d_ts_3100 ::
  T_Block_3078 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842]
d_ts_3100 v0
  = case coe v0 of
      C_constructor_3112 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.ebCert
d_ebCert_3102 ::
  T_Block_3078 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644
d_ebCert_3102 v0
  = case coe v0 of
      C_constructor_3112 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.bBodySize
d_bBodySize_3104 :: T_Block_3078 -> Integer
d_bBodySize_3104 v0
  = case coe v0 of
      C_constructor_3112 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.bBodyHash
d_bBodyHash_3106 :: T_Block_3078 -> AgdaAny
d_bBodyHash_3106 v0
  = case coe v0 of
      C_constructor_3112 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Block.≡-bBodySize
d_'8801''45'bBodySize_3108 ::
  T_Block_3078 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_3108 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Block.≡-bBodyHash
d_'8801''45'bBodyHash_3110 ::
  T_Block_3078 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_3110 = erased
-- Ledger.Dijkstra.Specification.BlockBody.BBodyEnv
d_BBodyEnv_3114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_BBodyEnv_3114 = erased
-- Ledger.Dijkstra.Specification.BlockBody.BBodyState
d_BBodyState_3116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_BBodyState_3116 = erased
-- Ledger.Dijkstra.Specification.BlockBody.incrBlocks
d_incrBlocks_3118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_3118 v0 ~v1 v2 v3 = du_incrBlocks_3118 v0 v2 v3
du_incrBlocks_3118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_3118 v0 v1 v2
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
               (coe v0))))
      v2
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_singleton'7504'_836
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v1) (coe (1 :: Integer)))
-- Ledger.Dijkstra.Specification.BlockBody.certifiedBit
d_certifiedBit_3124 :: T_Block_3078 -> Bool
d_certifiedBit_3124 v0
  = coe
      d_certifiedEB_3062
      (coe d_bhbody_3072 (coe d_bheader_3096 (coe v0)))
-- Ledger.Dijkstra.Specification.BlockBody.ValidLeiosBlock
d_ValidLeiosBlock_3128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_Block_3078 -> ()
d_ValidLeiosBlock_3128 = erased
-- Ledger.Dijkstra.Specification.BlockBody._.valid
d_valid_3136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_Block_3078 ->
  Bool ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842] ->
  ()
d_valid_3136 = erased
-- Ledger.Dijkstra.Specification.BlockBody.ValidLeiosBlock?
d_ValidLeiosBlock'63'_3146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_Block_3078 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_ValidLeiosBlock'63'_3146 ~v0 ~v1 v2
  = du_ValidLeiosBlock'63'_3146 v2
du_ValidLeiosBlock'63'_3146 ::
  T_Block_3078 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_ValidLeiosBlock'63'_3146 v0
  = let v1 = d_ebCert_3102 (coe v0) in
    coe
      (let v2 = d_ts_3100 (coe v0) in
       coe
         (case coe v1 of
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
              -> case coe v2 of
                   []
                     -> let v4
                              = MAlonzo.Code.Data.Bool.Properties.d__'8799'__3196
                                  (coe
                                     d_certifiedEB_3062
                                     (coe d_bhbody_3072 (coe d_bheader_3096 (coe v0))))
                                  (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10) in
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
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                             _ -> MAlonzo.RTE.mazUnreachableError)
                   (:) v4 v5
                     -> coe
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                          (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                   _ -> MAlonzo.RTE.mazUnreachableError
            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
              -> coe
                   MAlonzo.Code.Data.Bool.Properties.d__'8799'__3196
                   (coe
                      d_certifiedEB_3062
                      (coe d_bhbody_3072 (coe d_bheader_3096 (coe v0))))
                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.BlockBody.Dec-ValidLeiosBlock
d_Dec'45'ValidLeiosBlock_3176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  T_Block_3078 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidLeiosBlock_3176 ~v0 ~v1 v2
  = du_Dec'45'ValidLeiosBlock_3176 v2
du_Dec'45'ValidLeiosBlock_3176 ::
  T_Block_3078 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidLeiosBlock_3176 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe du_ValidLeiosBlock'63'_3146 (coe v0))
-- Ledger.Dijkstra.Specification.BlockBody._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__3180 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'BBODY'10632'__3180
  = C_BBODY'45'Block'45'Body_3206 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
