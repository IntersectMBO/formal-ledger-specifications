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

module MAlonzo.Code.Ledger.Conway.Specification.BlockBody where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- _._≥ᵉ_
d__'8805''7497'__22 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__22 = erased
-- _.Acnt
d_Acnt_36 a0 = ()
-- _.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_260 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_260
du_HasCast'45'HashProtected'45'MaybeScriptHash_260 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_260
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1100
-- _.HasTreasury-Acnt
d_HasTreasury'45'Acnt_352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_82
d_HasTreasury'45'Acnt_352 ~v0 = du_HasTreasury'45'Acnt_352
du_HasTreasury'45'Acnt_352 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_82
du_HasTreasury'45'Acnt_352
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_200
-- _.THash
d_THash_424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_424 = erased
-- _.Sig
d_Sig_594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Sig_594 = erased
-- _.Slot
d_Slot_596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_596 = erased
-- _.Tx
d_Tx_626 a0 = ()
-- _.VKey
d_VKey_660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKey_660 = erased
-- _.Acnt.reserves
d_reserves_886 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_reserves_886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
      (coe v0)
-- _.Acnt.treasury
d_treasury_888 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_treasury_888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
      (coe v0)
-- _.Tx.body
d_body_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3642 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3442
d_body_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3654
      (coe v0)
-- _.Tx.isValid
d_isValid_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3642 ->
  Bool
d_isValid_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3660
      (coe v0)
-- _.Tx.txAD
d_txAD_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3642 ->
  Maybe AgdaAny
d_txAD_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3662
      (coe v0)
-- _.Tx.txsize
d_txsize_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3642 ->
  Integer
d_txsize_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3658
      (coe v0)
-- _.Tx.wits
d_wits_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3642 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3620
d_wits_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3656
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState
d_EnactState_2060 a0 a1 = ()
-- Ledger.Conway.Specification.BlockBody._.HasPParams-EnactState
d_HasPParams'45'EnactState_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'EnactState_2072 ~v0 ~v1
  = du_HasPParams'45'EnactState_2072
du_HasPParams'45'EnactState_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'EnactState_2072
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1228
-- Ledger.Conway.Specification.BlockBody._.EnactState.cc
d_cc_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1196 (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.constitution
d_constitution_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1198
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.pparams
d_pparams_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1202
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.pv
d_pv_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1200 (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.withdrawals
d_withdrawals_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1204
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2942 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3642] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2126 = erased
-- Ledger.Conway.Specification.BlockBody._.HasCast-LEnv
d_HasCast'45'LEnv_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2132 ~v0 ~v1 = du_HasCast'45'LEnv_2132
du_HasCast'45'LEnv_2132 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2132
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_3032
-- Ledger.Conway.Specification.BlockBody._.LState
d_LState_2176 a0 a1 = ()
-- Ledger.Conway.Specification.BlockBody._.LState.certState
d_certState_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1464
d_certState_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2980
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.LState.govSt
d_govSt_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2978
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.LState.utxoSt
d_utxoSt_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508
d_utxoSt_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2976
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.BlocksMade
d_BlocksMade_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  ()
d_BlocksMade_2224 = erased
-- Ledger.Conway.Specification.BlockBody._.totExUnits
d_totExUnits_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3642 ->
  AgdaAny
d_totExUnits_2326 v0 ~v1 = du_totExUnits_2326 v0
du_totExUnits_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3642 ->
  AgdaAny
du_totExUnits_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_totExUnits_2474
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.BHBody
d_BHBody_2328 a0 a1 = ()
data T_BHBody_2328
  = C_constructor_2350 AgdaAny Integer AgdaAny AgdaAny Integer
-- Ledger.Conway.Specification.BlockBody.BHBody.bvkcold
d_bvkcold_2340 :: T_BHBody_2328 -> AgdaAny
d_bvkcold_2340 v0
  = case coe v0 of
      C_constructor_2350 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.bsize
d_bsize_2342 :: T_BHBody_2328 -> Integer
d_bsize_2342 v0
  = case coe v0 of
      C_constructor_2350 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.slot
d_slot_2344 :: T_BHBody_2328 -> AgdaAny
d_slot_2344 v0
  = case coe v0 of
      C_constructor_2350 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.bhash
d_bhash_2346 :: T_BHBody_2328 -> AgdaAny
d_bhash_2346 v0
  = case coe v0 of
      C_constructor_2350 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.hBbsize
d_hBbsize_2348 :: T_BHBody_2328 -> Integer
d_hBbsize_2348 v0
  = case coe v0 of
      C_constructor_2350 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHeader
d_BHeader_2352 a0 a1 = ()
data T_BHeader_2352 = C_constructor_2362 T_BHBody_2328 AgdaAny
-- Ledger.Conway.Specification.BlockBody.BHeader.bhbody
d_bhbody_2358 :: T_BHeader_2352 -> T_BHBody_2328
d_bhbody_2358 v0
  = case coe v0 of
      C_constructor_2362 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHeader.bhsig
d_bhsig_2360 :: T_BHeader_2352 -> AgdaAny
d_bhsig_2360 v0
  = case coe v0 of
      C_constructor_2362 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block
d_Block_2364 a0 a1 = ()
data T_Block_2364
  = C_constructor_2390 T_BHeader_2352
                       [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3642]
                       Integer AgdaAny
-- Ledger.Conway.Specification.BlockBody.Block.bheader
d_bheader_2378 :: T_Block_2364 -> T_BHeader_2352
d_bheader_2378 v0
  = case coe v0 of
      C_constructor_2390 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.ts
d_ts_2380 ::
  T_Block_2364 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3642]
d_ts_2380 v0
  = case coe v0 of
      C_constructor_2390 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.bBodySize
d_bBodySize_2382 :: T_Block_2364 -> Integer
d_bBodySize_2382 v0
  = case coe v0 of
      C_constructor_2390 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.bBodyHash
d_bBodyHash_2384 :: T_Block_2364 -> AgdaAny
d_bBodyHash_2384 v0
  = case coe v0 of
      C_constructor_2390 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.≡-bBodySize
d_'8801''45'bBodySize_2386 ::
  T_Block_2364 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2386 = erased
-- Ledger.Conway.Specification.BlockBody.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2388 ::
  T_Block_2364 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2388 = erased
-- Ledger.Conway.Specification.BlockBody.BBodyEnv
d_BBodyEnv_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  ()
d_BBodyEnv_2392 = erased
-- Ledger.Conway.Specification.BlockBody.BBodyState
d_BBodyState_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  ()
d_BBodyState_2394 = erased
-- Ledger.Conway.Specification.BlockBody.incrBlocks
d_incrBlocks_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2514 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2396 v0 ~v1 v2 v3 = du_incrBlocks_2396 v0 v2 v3
du_incrBlocks_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2396 v0 v1 v2
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
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1412
               (coe v0))))
      v2
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_singleton'7504'_836
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v1) (coe (1 :: Integer)))
-- Ledger.Conway.Specification.BlockBody._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2402 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'BBODY'10632'__2402
  = C_BBODY'45'Block'45'Body_2428 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
