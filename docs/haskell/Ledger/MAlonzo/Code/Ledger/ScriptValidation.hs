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

module MAlonzo.Code.Ledger.ScriptValidation where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.MOf
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.CostModel
d_CostModel_62 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CostModel_62 = erased
-- _.DCert
d_DCert_66 a0 = ()
-- _.T
d_T_76 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_T_76 = erased
-- _.THash
d_THash_78 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_78 = erased
-- _.Datum
d_Datum_82 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Datum_82 = erased
-- _.Dec-isScript
d_Dec'45'isScript_86 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_86 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_86
du_Dec'45'isScript_86 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_86
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_122
-- _.ExUnits
d_ExUnits_176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_176 = erased
-- _.GovProposal
d_GovProposal_196 a0 = ()
-- _.THash
d_THash_226 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_226 = erased
-- _.Language
d_Language_232 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Language_232 = erased
-- _.PlutusScript
d_PlutusScript_258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_258 = erased
-- _.PParams
d_PParams_268 a0 = ()
-- _.RdmrPtr
d_RdmrPtr_292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_RdmrPtr_292 = erased
-- _.Redeemer
d_Redeemer_294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Redeemer_294 = erased
-- _.RwdAddr
d_RwdAddr_308 a0 a1 a2 a3 = ()
-- _.Script
d_Script_316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_316 = erased
-- _.ScriptHash
d_ScriptHash_324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_324 = erased
-- _.Slot
d_Slot_334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_334 = erased
-- _.Tx
d_Tx_364 a0 = ()
-- _.TxBody
d_TxBody_366 a0 = ()
-- _.TxIn
d_TxIn_370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_370 = erased
-- _.TxOut
d_TxOut_372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_372 = erased
-- _.UTxO
d_UTxO_376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_376 = erased
-- _.Value
d_Value_392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_392 = erased
-- _.Voter
d_Voter_398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_398 = erased
-- _.Wdrl
d_Wdrl_400 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_400 = erased
-- _.evalTimelock
d_evalTimelock_454 a0 a1 a2 a3 = ()
-- Ledger.ScriptValidation.ScriptPurpose
d_ScriptPurpose_1388 a0 a1 = ()
data T_ScriptPurpose_1388
  = C_Cert_1390 MAlonzo.Code.Ledger.Deleg.T_DCert_634 |
    C_Rwrd_1392 MAlonzo.Code.Ledger.Address.T_RwdAddr_58 |
    C_Mint_1394 AgdaAny |
    C_Spend_1396 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Vote_1398 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Propose_1400 MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564
-- Ledger.ScriptValidation.rdptr
d_rdptr_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2282 ->
  T_ScriptPurpose_1388 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_1402 v0 v1 v2 v3
  = case coe v3 of
      C_Cert_1390 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Cert_10) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1372
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1400 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txcerts_2330 (coe v2)))
      C_Rwrd_1392 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Rewrd_12) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1374
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1400 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txwdrls_2332 (coe v2)))
      C_Mint_1394 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Mint_8) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1378
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1400 (coe v1)) v4
                (coe
                   MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
                   (MAlonzo.Code.Ledger.Transaction.d_mint_2326 (coe v2))))
      C_Spend_1396 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Spend_6) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1376
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1400 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txins_2320 (coe v2)))
      C_Vote_1398 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Vote_14) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1380
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1400 (coe v1)) v4
                (coe
                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                   () erased
                   (\ v5 ->
                      MAlonzo.Code.Ledger.GovernanceActions.d_voter_558 (coe v5))
                   (MAlonzo.Code.Ledger.Transaction.d_txvote_2334 (coe v2))))
      C_Propose_1400 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Propose_16) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1382
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1400 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txprop_2336 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.indexedRdmrs
d_indexedRdmrs_1474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2376 ->
  T_ScriptPurpose_1388 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_1474 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_36
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1334
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1414
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2372
                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_2388 (coe v2)))
              (coe v4)
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                       (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                       (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_992 (coe v0))))
                 (coe v4)
                 (let v5
                        = MAlonzo.Code.Axiom.Set.d_th_1414
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                  coe
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom_300 v5
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_468
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2372
                             (coe MAlonzo.Code.Ledger.Transaction.d_wits_2388 (coe v2)))))))))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         d_rdptr_1402 (coe v0) (coe v1)
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2386 (coe v2))
         (coe v3))
-- Ledger.ScriptValidation.getDatum
d_getDatum_1508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2376 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1388 -> [AgdaAny]
d_getDatum_1508 v0 ~v1 v2 v3 v4 = du_getDatum_1508 v0 v2 v3 v4
du_getDatum_1508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2376 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1388 -> [AgdaAny]
du_getDatum_1508 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v3 of
         C_Spend_1396 v5
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_36
                (coe
                   (\ v6 ->
                      case coe v6 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                          -> case coe v8 of
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                 -> case coe v10 of
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v11
                                        -> coe
                                             MAlonzo.Code.Data.Maybe.Base.du_maybe_36
                                             (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306)
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1334
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1414
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txdats_2370
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_wits_2388
                                                      (coe v1)))
                                                (coe v11)
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                      erased
                                                      (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                            (coe
                                                               MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Script.d_ps_414
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1520
                                                                     (coe v0)))))))
                                                   (coe v11)
                                                   (let v12
                                                          = MAlonzo.Code.Axiom.Set.d_th_1414
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Rel.du_dom_300 v12
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_468
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_txdats_2370
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_wits_2388
                                                                  (coe v1))))))))
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               _ -> MAlonzo.RTE.mazUnreachableError
                        _ -> MAlonzo.RTE.mazUnreachableError))
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1334
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1414
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe v2) (coe v5)
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                         (coe
                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_994 (coe v0))
                            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_992 (coe v0))))
                      (coe v5)
                      (let v6
                             = MAlonzo.Code.Axiom.Set.d_th_1414
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_300 v6
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_468 (coe v2))))))
         _ -> coe v4)
-- Ledger.ScriptValidation.TxInfo
d_TxInfo_1546 a0 a1 = ()
data T_TxInfo_1546
  = C_TxInfo'46'constructor_13915 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                                  [MAlonzo.Code.Ledger.Deleg.T_DCert_634]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
-- Ledger.ScriptValidation.TxInfo.realizedInputs
d_realizedInputs_1568 ::
  T_TxInfo_1546 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_1568 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13915 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txouts
d_txouts_1570 ::
  T_TxInfo_1546 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1570 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13915 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.fee
d_fee_1572 :: T_TxInfo_1546 -> AgdaAny
d_fee_1572 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13915 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.mint
d_mint_1574 :: T_TxInfo_1546 -> AgdaAny
d_mint_1574 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13915 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txcerts
d_txcerts_1576 ::
  T_TxInfo_1546 -> [MAlonzo.Code.Ledger.Deleg.T_DCert_634]
d_txcerts_1576 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13915 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txwdrls
d_txwdrls_1578 ::
  T_TxInfo_1546 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1578 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13915 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txvldt
d_txvldt_1580 ::
  T_TxInfo_1546 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1580 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13915 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.vkKey
d_vkKey_1582 :: T_TxInfo_1546 -> [AgdaAny]
d_vkKey_1582 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13915 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txdats
d_txdats_1584 ::
  T_TxInfo_1546 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_1584 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13915 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txid
d_txid_1586 :: T_TxInfo_1546 -> AgdaAny
d_txid_1586 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13915 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.txInfo
d_txInfo_1588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2376 -> T_TxInfo_1546
d_txInfo_1588 v0 ~v1 ~v2 ~v3 v4 v5 = du_txInfo_1588 v0 v4 v5
du_txInfo_1588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2376 -> T_TxInfo_1546
du_txInfo_1588 v0 v1 v2
  = coe
      C_TxInfo'46'constructor_13915
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
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txins_2320
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2386 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txouts_2322
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2386 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txfee_2324
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2386 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_mint_2326
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2386 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txcerts_2330
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2386 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2332
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2386 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txvldt_2328
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2386 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2352
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2386 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txdats_2370
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_2388 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txid_2348
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2386 (coe v2)))
-- Ledger.ScriptValidation.DelegateOrDeReg
d_DelegateOrDeReg_1704 a0 a1 a2 = ()
data T_DelegateOrDeReg_1704
  = C_delegate_1714 | C_dereg_1718 | C_regdrep_1726 |
    C_deregdrep_1730
-- Ledger.ScriptValidation.Dec-DelegateOrDeReg
d_Dec'45'DelegateOrDeReg_1732 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'DelegateOrDeReg_1732 ~v0 ~v1 v2
  = du_Dec'45'DelegateOrDeReg_1732 v2
du_Dec'45'DelegateOrDeReg_1732 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'DelegateOrDeReg_1732 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         MAlonzo.Code.Ledger.Deleg.C_delegate_636 v1 v2 v3 v4
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v5 v6 -> coe C_delegate_1714))
         MAlonzo.Code.Ledger.Deleg.C_dereg_638 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v2 -> coe C_dereg_1718))
         MAlonzo.Code.Ledger.Deleg.C_regpool_640 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Deleg.C_retirepool_642 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Deleg.C_regdrep_644 v1 v2 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v4 v5 -> coe C_regdrep_1726))
         MAlonzo.Code.Ledger.Deleg.C_deregdrep_646 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v2 -> coe C_deregdrep_1730))
         MAlonzo.Code.Ledger.Deleg.C_ccreghot_648 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.ScriptValidation.UTxOSH
d_UTxOSH_1754 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 -> ()
d_UTxOSH_1754 = erased
-- Ledger.ScriptValidation.scriptOutWithHash
d_scriptOutWithHash_1756 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutWithHash_1756 ~v0 ~v1 ~v2 v3
  = du_scriptOutWithHash_1756 v3
du_scriptOutWithHash_1756 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutWithHash_1756 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Interface.ToBool.du_if_then_else__46
             (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
             (coe
                MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_122
                (coe MAlonzo.Code.Ledger.Address.du_payCred_90 (coe v1)))
             (coe
                (\ v3 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
                        (coe
                           MAlonzo.Code.Ledger.Address.du_getScriptHash_148 (coe v1)
                           (coe v3)))))
             (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.scriptOutsWithHash
d_scriptOutsWithHash_1766 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutsWithHash_1766 ~v0 ~v1 v2
  = du_scriptOutsWithHash_1766 v2
du_scriptOutsWithHash_1766 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutsWithHash_1766 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1034
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (\ v1 v2 -> coe du_scriptOutWithHash_1756 v2) (coe v0)
-- Ledger.ScriptValidation.spendScripts
d_spendScripts_1770 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_spendScripts_1770 v0 ~v1 v2 v3 = du_spendScripts_1770 v0 v2 v3
du_spendScripts_1770 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_spendScripts_1770 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1574
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_994 (coe v0))
            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_992 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_484
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_492) (coe v2)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe C_Spend_1396 (coe v1))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1330
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1414
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (coe v2) (coe v1) (coe v3))))))
      (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.ScriptValidation.rwdScripts
d_rwdScripts_1778 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rwdScripts_1778 ~v0 ~v1 v2 = du_rwdScripts_1778 v2
du_rwdScripts_1778 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rwdScripts_1778 v0
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_122
         (coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v0)))
      (coe
         (\ v1 ->
            seq
              (coe v1)
              (case coe v0 of
                 MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_1089 v2 v3
                   -> case coe v3 of
                        MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe C_Rwrd_1392 (coe v0)) (coe v4))
                        _ -> MAlonzo.RTE.mazUnreachableError
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.ScriptValidation.certScripts
d_certScripts_1786 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certScripts_1786 ~v0 ~v1 v2 = du_certScripts_1786 v2
du_certScripts_1786 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certScripts_1786 v0
  = let v1
          = coe
              MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
              (coe du_Dec'45'DelegateOrDeReg_1732 (coe v0)) in
    coe
      (case coe v1 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
           -> if coe v2
                then coe
                       seq (coe v3)
                       (case coe v0 of
                          MAlonzo.Code.Ledger.Deleg.C_delegate_636 v4 v5 v6 v7
                            -> case coe v4 of
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                                   -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                                   -> coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe C_Cert_1390 (coe v0)) (coe v8))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          MAlonzo.Code.Ledger.Deleg.C_dereg_638 v4
                            -> case coe v4 of
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
                                   -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
                                   -> coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe C_Cert_1390 (coe v0)) (coe v5))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          MAlonzo.Code.Ledger.Deleg.C_regdrep_644 v4 v5 v6
                            -> case coe v4 of
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
                                   -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
                                   -> coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe C_Cert_1390 (coe v0)) (coe v7))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          MAlonzo.Code.Ledger.Deleg.C_deregdrep_646 v4
                            -> case coe v4 of
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
                                   -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
                                   -> coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe C_Cert_1390 (coe v0)) (coe v5))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError)
                else coe
                       seq (coe v3) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.ScriptValidation.scriptsNeeded
d_scriptsNeeded_1846 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2282 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_scriptsNeeded_1846 v0 ~v1 v2 v3 = du_scriptsNeeded_1846 v0 v2 v3
du_scriptsNeeded_1846 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2282 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_scriptsNeeded_1846 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_558
         (MAlonzo.Code.Axiom.Set.d_th_1414
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v3 ->
            coe
              du_spendScripts_1770 (coe v0) (coe v3)
              (coe du_scriptOutsWithHash_1766 (coe v1)))
         (MAlonzo.Code.Ledger.Transaction.d_txins_2320 (coe v2)))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1414
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_mapPartial_558
            (MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe du_rwdScripts_1778)
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
               MAlonzo.Code.Axiom.Set.du_mapPartial_558
               (MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe du_certScripts_1786)
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_410
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1414
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2330 (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_380
               (MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe C_Mint_1394 (coe v3)) (coe v3))
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1832 (coe v0))
                  (MAlonzo.Code.Ledger.Transaction.d_mint_2326 (coe v2))))))
-- Ledger.ScriptValidation.valContext
d_valContext_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  T_TxInfo_1546 -> T_ScriptPurpose_1388 -> AgdaAny
d_valContext_1902 v0 ~v1 v2 v3 = du_valContext_1902 v0 v2 v3
du_valContext_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_TxInfo_1546 -> T_ScriptPurpose_1388 -> AgdaAny
du_valContext_1902 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_222
      (MAlonzo.Code.Ledger.Script.d_ps_414
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1520 (coe v0)))
      erased
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
-- Ledger.ScriptValidation.collectPhaseTwoScriptInputs'
d_collectPhaseTwoScriptInputs''_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2376 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_collectPhaseTwoScriptInputs''_1908 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> let v8
                 = MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2418
                     (coe v0) (coe v7) (coe v3) in
           coe
             (case coe v8 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                  -> let v10
                           = coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30 (coe v9) in
                     coe
                       (let v11
                              = d_indexedRdmrs_1474 (coe v0) (coe v1) (coe v3) (coe v6) in
                        coe
                          (case coe v10 of
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v12
                               -> case coe v11 of
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v13
                                      -> case coe v13 of
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                             -> coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v9)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du__'43''43'__62
                                                           (coe
                                                              du_getDatum_1508 (coe v0) (coe v3)
                                                              (coe v4) (coe v6))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                              (coe v14)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                 (coe
                                                                    du_valContext_1902 (coe v0)
                                                                    (coe
                                                                       du_txInfo_1588 (coe v0)
                                                                       (coe v4) (coe v3))
                                                                    (coe v6))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe v15)
                                                           (coe
                                                              MAlonzo.Code.Ledger.PParams.d_costmdls_314
                                                              (coe v2)))))
                                           _ -> MAlonzo.RTE.mazUnreachableError
                                    _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                             _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v8
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2376 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1984 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (d_collectPhaseTwoScriptInputs''_1908
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_scriptsNeeded_1846 (coe v0) (coe v4)
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2386 (coe v3)))
-- Ledger.ScriptValidation.⟦_⟧,_,_,_
d_'10214'_'10215''44'_'44'_'44'__1992 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_'10214'_'10215''44'_'44'_'44'__1992 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1402 v0 v2 v1 v3 v4
-- Ledger.ScriptValidation.evalScripts
d_evalScripts_2002 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1384 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2376 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_2002 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> case coe v6 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> coe
                                  seq (coe v10)
                                  (coe
                                     MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                     (coe
                                        MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46
                                        (coe ())
                                        (coe
                                           MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_282
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1028
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2352
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_2386
                                                 (coe v2)))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txvldt_2328
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_2386
                                                 (coe v2)))
                                           (coe v8)))
                                     (coe d_evalScripts_2002 (coe v0) (coe v1) (coe v2) (coe v5)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                         (coe
                                            MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1402 v1 v12
                                            v8 v11 v9)
                                         (coe
                                            d_evalScripts_2002 (coe v0) (coe v1) (coe v2) (coe v5))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
