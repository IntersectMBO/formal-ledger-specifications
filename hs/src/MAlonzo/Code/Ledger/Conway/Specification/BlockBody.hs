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
d_HasCast'45'HashProtected'45'MaybeScriptHash_252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_252 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_252
du_HasCast'45'HashProtected'45'MaybeScriptHash_252 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_252
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1084
-- _.HasTreasury-Acnt
d_HasTreasury'45'Acnt_338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_338 ~v0 = du_HasTreasury'45'Acnt_338
du_HasTreasury'45'Acnt_338 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_338
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_184
-- _.THash
d_THash_402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_402 = erased
-- _.Sig
d_Sig_572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Sig_572 = erased
-- _.Slot
d_Slot_574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_574 = erased
-- _.Tx
d_Tx_602 a0 = ()
-- _.VKey
d_VKey_636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKey_636 = erased
-- _.Acnt.reserves
d_reserves_866 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172 ->
  Integer
d_reserves_866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_180
      (coe v0)
-- _.Acnt.treasury
d_treasury_868 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_172 ->
  Integer
d_treasury_868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_178
      (coe v0)
-- _.Tx.body
d_body_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3386
d_body_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3578
      (coe v0)
-- _.Tx.isValid
d_isValid_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  Bool
d_isValid_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3584
      (coe v0)
-- _.Tx.txAD
d_txAD_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  Maybe AgdaAny
d_txAD_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3586
      (coe v0)
-- _.Tx.txsize
d_txsize_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  Integer
d_txsize_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3582
      (coe v0)
-- _.Tx.wits
d_wits_1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3544
d_wits_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3580
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState
d_EnactState_2018 a0 a1 = ()
-- Ledger.Conway.Specification.BlockBody._.HasPParams-EnactState
d_HasPParams'45'EnactState_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_432
d_HasPParams'45'EnactState_2030 ~v0 ~v1
  = du_HasPParams'45'EnactState_2030
du_HasPParams'45'EnactState_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_432
du_HasPParams'45'EnactState_2030
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1212
-- Ledger.Conway.Specification.BlockBody._.EnactState.cc
d_cc_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1180 (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.constitution
d_constitution_2070 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1182
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.pparams
d_pparams_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1186
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.pv
d_pv_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1184 (coe v0)
-- Ledger.Conway.Specification.BlockBody._.EnactState.withdrawals
d_withdrawals_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1188
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2888 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2084 = erased
-- Ledger.Conway.Specification.BlockBody._.HasCast-LEnv
d_HasCast'45'LEnv_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2090 ~v0 ~v1 = du_HasCast'45'LEnv_2090
du_HasCast'45'LEnv_2090 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2090
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2978
-- Ledger.Conway.Specification.BlockBody._.LState
d_LState_2134 a0 a1 = ()
-- Ledger.Conway.Specification.BlockBody._.LState.certState
d_certState_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1448
d_certState_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2926
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.LState.govSt
d_govSt_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2924
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.LState.utxoSt
d_utxoSt_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2914 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
d_utxoSt_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2922
      (coe v0)
-- Ledger.Conway.Specification.BlockBody._.BlocksMade
d_BlocksMade_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  ()
d_BlocksMade_2182 = erased
-- Ledger.Conway.Specification.BlockBody._.totExUnits
d_totExUnits_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  AgdaAny
d_totExUnits_2284 v0 ~v1 = du_totExUnits_2284 v0
du_totExUnits_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  AgdaAny
du_totExUnits_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_totExUnits_2440
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.BHBody
d_BHBody_2286 a0 a1 = ()
data T_BHBody_2286
  = C_constructor_2308 AgdaAny Integer AgdaAny AgdaAny Integer
-- Ledger.Conway.Specification.BlockBody.BHBody.bvkcold
d_bvkcold_2298 :: T_BHBody_2286 -> AgdaAny
d_bvkcold_2298 v0
  = case coe v0 of
      C_constructor_2308 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.bsize
d_bsize_2300 :: T_BHBody_2286 -> Integer
d_bsize_2300 v0
  = case coe v0 of
      C_constructor_2308 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.slot
d_slot_2302 :: T_BHBody_2286 -> AgdaAny
d_slot_2302 v0
  = case coe v0 of
      C_constructor_2308 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.bhash
d_bhash_2304 :: T_BHBody_2286 -> AgdaAny
d_bhash_2304 v0
  = case coe v0 of
      C_constructor_2308 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHBody.hBbsize
d_hBbsize_2306 :: T_BHBody_2286 -> Integer
d_hBbsize_2306 v0
  = case coe v0 of
      C_constructor_2308 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHeader
d_BHeader_2310 a0 a1 = ()
data T_BHeader_2310 = C_constructor_2320 T_BHBody_2286 AgdaAny
-- Ledger.Conway.Specification.BlockBody.BHeader.bhbody
d_bhbody_2316 :: T_BHeader_2310 -> T_BHBody_2286
d_bhbody_2316 v0
  = case coe v0 of
      C_constructor_2320 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.BHeader.bhsig
d_bhsig_2318 :: T_BHeader_2310 -> AgdaAny
d_bhsig_2318 v0
  = case coe v0 of
      C_constructor_2320 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block
d_Block_2322 a0 a1 = ()
data T_Block_2322
  = C_constructor_2348 T_BHeader_2310
                       [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566]
                       Integer AgdaAny
-- Ledger.Conway.Specification.BlockBody.Block.bheader
d_bheader_2336 :: T_Block_2322 -> T_BHeader_2310
d_bheader_2336 v0
  = case coe v0 of
      C_constructor_2348 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.ts
d_ts_2338 ::
  T_Block_2322 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566]
d_ts_2338 v0
  = case coe v0 of
      C_constructor_2348 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.bBodySize
d_bBodySize_2340 :: T_Block_2322 -> Integer
d_bBodySize_2340 v0
  = case coe v0 of
      C_constructor_2348 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.bBodyHash
d_bBodyHash_2342 :: T_Block_2322 -> AgdaAny
d_bBodyHash_2342 v0
  = case coe v0 of
      C_constructor_2348 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Block.≡-bBodySize
d_'8801''45'bBodySize_2344 ::
  T_Block_2322 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2344 = erased
-- Ledger.Conway.Specification.BlockBody.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2346 ::
  T_Block_2322 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2346 = erased
-- Ledger.Conway.Specification.BlockBody.BBodyEnv
d_BBodyEnv_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  ()
d_BBodyEnv_2350 = erased
-- Ledger.Conway.Specification.BlockBody.BBodyState
d_BBodyState_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  ()
d_BBodyState_2352 = erased
-- Ledger.Conway.Specification.BlockBody.incrBlocks
d_incrBlocks_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incrBlocks_2354 v0 ~v1 v2 v3 = du_incrBlocks_2354 v0 v2 v3
du_incrBlocks_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_incrBlocks_2354 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
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
d__'8866'_'8640''10631'_'44'BBODY'10632'__2360 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'BBODY'10632'__2360
  = C_BBODY'45'Block'45'Body_2386 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
