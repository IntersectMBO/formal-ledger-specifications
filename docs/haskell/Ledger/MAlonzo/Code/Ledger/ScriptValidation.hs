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
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
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
d_DCert_68 a0 = ()
-- _.T
d_T_82 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_T_82 = erased
-- _.THash
d_THash_84 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_84 = erased
-- _.Datum
d_Datum_88 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Datum_88 = erased
-- _.Dec-isScript
d_Dec'45'isScript_92 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_92 ~v0 = du_Dec'45'isScript_92
du_Dec'45'isScript_92 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_92
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_152
-- _.ExUnits
d_ExUnits_192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_192 = erased
-- _.GovProposal
d_GovProposal_216 a0 = ()
-- _.THash
d_THash_248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_248 = erased
-- _.Language
d_Language_256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Language_256 = erased
-- _.PlutusScript
d_PlutusScript_282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_282 = erased
-- _.PParams
d_PParams_292 a0 = ()
-- _.RdmrPtr
d_RdmrPtr_324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_RdmrPtr_324 = erased
-- _.Redeemer
d_Redeemer_326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Redeemer_326 = erased
-- _.RwdAddr
d_RwdAddr_340 a0 = ()
-- _.Script
d_Script_348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_348 = erased
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
-- _.TxIn
d_TxIn_404 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_404 = erased
-- _.TxOut
d_TxOut_406 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_406 = erased
-- _.UTxO
d_UTxO_412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_412 = erased
-- _.Value
d_Value_430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_430 = erased
-- _.Voter
d_Voter_436 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_436 = erased
-- _.Wdrl
d_Wdrl_438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_438 = erased
-- _.evalTimelock
d_evalTimelock_496 a0 a1 a2 a3 = ()
-- Ledger.ScriptValidation.ScriptPurpose
d_ScriptPurpose_1590 a0 a1 = ()
data T_ScriptPurpose_1590
  = C_Cert_1592 MAlonzo.Code.Ledger.Certs.T_DCert_788 |
    C_Rwrd_1594 MAlonzo.Code.Ledger.Address.T_RwdAddr_70 |
    C_Mint_1596 AgdaAny |
    C_Spend_1598 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Vote_1600 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Propose_1602 MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708
-- Ledger.ScriptValidation.rdptr
d_rdptr_1604 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  T_ScriptPurpose_1590 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_1604 v0 v1 v2 v3
  = case coe v3 of
      C_Cert_1592 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Cert_10) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1574
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txcerts_2662 (coe v2)))
      C_Rwrd_1594 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Rewrd_12) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1576
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txwdrls_2664 (coe v2)))
      C_Mint_1596 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Mint_8) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1580
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602 (coe v1)) v4
                (coe
                   MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
                   (MAlonzo.Code.Ledger.Transaction.d_mint_2658 (coe v2))))
      C_Spend_1598 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Spend_6) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1578
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txins_2650 (coe v2)))
      C_Vote_1600 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Vote_14) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1582
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602 (coe v1)) v4
                (coe
                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                   () erased
                   (\ v5 ->
                      MAlonzo.Code.Ledger.GovernanceActions.d_voter_702 (coe v5))
                   (MAlonzo.Code.Ledger.Transaction.d_txvote_2666 (coe v2))))
      C_Propose_1602 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Propose_16) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1584
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txprop_2668 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.indexedRdmrs
d_indexedRdmrs_1680 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  T_ScriptPurpose_1590 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_1680 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_36
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1550
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2706
                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_2722 (coe v2)))
              (coe v4)
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                       (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                       (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128 (coe v0))))
                 (coe v4)
                 (let v5
                        = MAlonzo.Code.Axiom.Set.d_th_1430
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                  coe
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v5
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2706
                             (coe MAlonzo.Code.Ledger.Transaction.d_wits_2722 (coe v2)))))))))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         d_rdptr_1604 (coe v0) (coe v1)
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2))
         (coe v3))
-- Ledger.ScriptValidation.getDatum
d_getDatum_1714 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1590 -> [AgdaAny]
d_getDatum_1714 v0 ~v1 v2 v3 v4 = du_getDatum_1714 v0 v2 v3 v4
du_getDatum_1714 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1590 -> [AgdaAny]
du_getDatum_1714 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v3 of
         C_Spend_1598 v5
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_36
                (coe
                   (\ v6 ->
                      case coe v6 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                          -> case coe v8 of
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                 -> case coe v10 of
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                        -> case coe v11 of
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v13
                                               -> case coe v13 of
                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                      -> coe
                                                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                                                           (coe v14)
                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                      -> coe
                                                           MAlonzo.Code.Data.Maybe.Base.du_maybe_36
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_306)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1550
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2704
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_wits_2722
                                                                    (coe v1)))
                                                              (coe v14)
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                    erased
                                                                    (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_Data'688'_172
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Script.d_ps_428
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                                                                                   (coe v0)))))))
                                                                 (coe v14)
                                                                 (let v15
                                                                        = MAlonzo.Code.Axiom.Set.d_th_1430
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.Rel.du_dom_336
                                                                       v15
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_txdats_2704
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_wits_2722
                                                                                (coe v1))))))))
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                               -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               _ -> MAlonzo.RTE.mazUnreachableError
                        _ -> MAlonzo.RTE.mazUnreachableError))
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1550
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe v2) (coe v5)
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                         (coe
                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0))
                            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128 (coe v0))))
                      (coe v5)
                      (let v6
                             = MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v6
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v2))))))
         _ -> coe v4)
-- Ledger.ScriptValidation.TxInfo
d_TxInfo_1754 a0 a1 = ()
data T_TxInfo_1754
  = C_TxInfo'46'constructor_15645 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                                  [MAlonzo.Code.Ledger.Certs.T_DCert_788]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
-- Ledger.ScriptValidation.TxInfo.realizedInputs
d_realizedInputs_1776 ::
  T_TxInfo_1754 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_1776 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15645 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txouts
d_txouts_1778 ::
  T_TxInfo_1754 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1778 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15645 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.fee
d_fee_1780 :: T_TxInfo_1754 -> AgdaAny
d_fee_1780 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15645 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.mint
d_mint_1782 :: T_TxInfo_1754 -> AgdaAny
d_mint_1782 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15645 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txcerts
d_txcerts_1784 ::
  T_TxInfo_1754 -> [MAlonzo.Code.Ledger.Certs.T_DCert_788]
d_txcerts_1784 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15645 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txwdrls
d_txwdrls_1786 ::
  T_TxInfo_1754 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1786 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15645 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txvldt
d_txvldt_1788 ::
  T_TxInfo_1754 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1788 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15645 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.vkKey
d_vkKey_1790 :: T_TxInfo_1754 -> [AgdaAny]
d_vkKey_1790 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15645 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txdats
d_txdats_1792 ::
  T_TxInfo_1754 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_1792 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15645 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txid
d_txid_1794 :: T_TxInfo_1754 -> AgdaAny
d_txid_1794 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15645 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.txInfo
d_txInfo_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> T_TxInfo_1754
d_txInfo_1796 v0 ~v1 ~v2 ~v3 v4 v5 = du_txInfo_1796 v0 v4 v5
du_txInfo_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> T_TxInfo_1754
du_txInfo_1796 v0 v1 v2
  = coe
      C_TxInfo'46'constructor_15645
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1254
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txins_2650
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txouts_2654
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txfee_2656
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_mint_2658
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txcerts_2662
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2664
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txvldt_2660
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2686
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txdats_2704
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_2722 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txid_2682
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v2)))
-- Ledger.ScriptValidation.DelegateOrDeReg
d_DelegateOrDeReg_1920 a0 a1 a2 = ()
data T_DelegateOrDeReg_1920
  = C_delegate_1930 | C_dereg_1936 | C_regdrep_1944 |
    C_deregdrep_1948
-- Ledger.ScriptValidation.Dec-DelegateOrDeReg
d_Dec'45'DelegateOrDeReg_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'DelegateOrDeReg_1950 ~v0 ~v1 v2
  = du_Dec'45'DelegateOrDeReg_1950 v2
du_Dec'45'DelegateOrDeReg_1950 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'DelegateOrDeReg_1950 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_790 v1 v2 v3 v4
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v5 v6 -> coe C_delegate_1930))
         MAlonzo.Code.Ledger.Certs.C_dereg_792 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v3 v4 -> coe C_dereg_1936))
         MAlonzo.Code.Ledger.Certs.C_regpool_794 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Certs.C_retirepool_796 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Certs.C_regdrep_798 v1 v2 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v4 v5 -> coe C_regdrep_1944))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_800 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v2 -> coe C_deregdrep_1948))
         MAlonzo.Code.Ledger.Certs.C_ccreghot_802 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.ScriptValidation.UTxOSH
d_UTxOSH_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 -> ()
d_UTxOSH_1972 = erased
-- Ledger.ScriptValidation.scriptOutWithHash
d_scriptOutWithHash_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutWithHash_1974 ~v0 ~v1 ~v2 v3
  = du_scriptOutWithHash_1974 v3
du_scriptOutWithHash_1974 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutWithHash_1974 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Interface.ToBool.du_if_then_else__46
             (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
             (coe
                MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_152
                (coe MAlonzo.Code.Ledger.Address.du_payCred_102 (coe v1)))
             (coe
                (\ v3 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
                        (coe
                           MAlonzo.Code.Ledger.Address.du_getScriptHash_178 (coe v1)
                           (coe v3)))))
             (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.scriptOutsWithHash
d_scriptOutsWithHash_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutsWithHash_1984 ~v0 ~v1 v2
  = du_scriptOutsWithHash_1984 v2
du_scriptOutsWithHash_1984 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutsWithHash_1984 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1166
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (\ v1 v2 -> coe du_scriptOutWithHash_1974 v2) (coe v0)
-- Ledger.ScriptValidation.spendScripts
d_spendScripts_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_spendScripts_1988 v0 ~v1 v2 v3 = du_spendScripts_1988 v0 v2 v3
du_spendScripts_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_spendScripts_1988 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1630
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0))
            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_538
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546) (coe v2)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe C_Spend_1598 (coe v1))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1430
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (coe v2) (coe v1) (coe v3))))))
      (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.ScriptValidation.rwdScripts
d_rwdScripts_1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rwdScripts_1996 ~v0 ~v1 v2 = du_rwdScripts_1996 v2
du_rwdScripts_1996 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rwdScripts_1996 v0
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_152
         (coe MAlonzo.Code.Ledger.Address.d_stake_78 (coe v0)))
      (coe
         (\ v1 ->
            seq
              (coe v1)
              (case coe v0 of
                 MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_2437 v2 v3
                   -> case coe v3 of
                        MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v4
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe C_Rwrd_1594 (coe v0)) (coe v4))
                        _ -> MAlonzo.RTE.mazUnreachableError
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.ScriptValidation.certScripts
d_certScripts_2004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certScripts_2004 ~v0 ~v1 v2 = du_certScripts_2004 v2
du_certScripts_2004 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certScripts_2004 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Certs.C_delegate_790 v1 v2 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v5
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1592 (coe v0)) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_dereg_792 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v3
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1592 (coe v0)) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_regpool_794 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Certs.C_retirepool_796 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Certs.C_regdrep_798 v1 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v4
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1592 (coe v0)) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_deregdrep_800 v1
        -> case coe v1 of
             MAlonzo.Code.Ledger.Address.C_KeyHashObj_18 v2
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Ledger.Address.C_ScriptObj_20 v2
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1592 (coe v0)) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_ccreghot_802 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.scriptsNeeded
d_scriptsNeeded_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_scriptsNeeded_2064 v0 ~v1 v2 v3 = du_scriptsNeeded_2064 v0 v2 v3
du_scriptsNeeded_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_scriptsNeeded_2064 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_558
         (MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v3 ->
            coe
              du_spendScripts_1988 (coe v0) (coe v3)
              (coe du_scriptOutsWithHash_1984 (coe v1)))
         (MAlonzo.Code.Ledger.Transaction.d_txins_2650 (coe v2)))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_mapPartial_558
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe du_rwdScripts_1996)
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_538
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_542)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2664 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__662
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.du_mapPartial_558
               (MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe du_certScripts_2004)
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_410
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2662 (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_380
               (MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe C_Mint_1596 (coe v3)) (coe v3))
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0))
                  (MAlonzo.Code.Ledger.Transaction.d_mint_2658 (coe v2))))))
-- Ledger.ScriptValidation.valContext
d_valContext_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_TxInfo_1754 -> T_ScriptPurpose_1590 -> AgdaAny
d_valContext_2124 v0 ~v1 v2 v3 = du_valContext_2124 v0 v2 v3
du_valContext_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_TxInfo_1754 -> T_ScriptPurpose_1590 -> AgdaAny
du_valContext_2124 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_236
      (MAlonzo.Code.Ledger.Script.d_ps_428
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0)))
      erased
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
-- Ledger.ScriptValidation.collectPhaseTwoScriptInputs'
d_collectPhaseTwoScriptInputs''_2130 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_collectPhaseTwoScriptInputs''_2130 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                     (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                        (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))
                     v7
                     (coe
                        MAlonzo.Code.Axiom.Set.du_map_380
                        (MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                           (coe
                              MAlonzo.Code.Ledger.Transaction.du_m_2842 (coe v0) (coe v3)
                              (coe v4)))) in
           coe
             (case coe v8 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                  -> if coe v9
                       then case coe v10 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                -> let v12
                                         = coe
                                             MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1430
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.du_m_2842 (coe v0)
                                                (coe v3) (coe v4))
                                             (coe v7) (coe v11) in
                                   coe
                                     (let v13
                                            = coe
                                                MAlonzo.Code.Data.Sum.du_isInj'8322'_30 (coe v12) in
                                      coe
                                        (let v14
                                               = coe
                                                   MAlonzo.Code.Data.Maybe.Base.du_maybe_36
                                                   (coe
                                                      (\ v14 ->
                                                         coe
                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1550
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1430
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2706
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_wits_2722
                                                                 (coe v3)))
                                                           (coe v14)
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                 erased
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128
                                                                       (coe v0))))
                                                              (coe v14)
                                                              (let v15
                                                                     = MAlonzo.Code.Axiom.Set.d_th_1430
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.Rel.du_dom_336
                                                                    v15
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2706
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_wits_2722
                                                                             (coe v3)))))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                   (let v14
                                                          = MAlonzo.Code.Ledger.Transaction.d_body_2720
                                                              (coe v3) in
                                                    coe
                                                      (case coe v6 of
                                                         C_Cert_1592 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Cert_10)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1574
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txcerts_2662
                                                                      (coe v14)))
                                                         C_Rwrd_1594 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Rewrd_12)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1576
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txwdrls_2664
                                                                      (coe v14)))
                                                         C_Mint_1596 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Mint_8)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1580
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602
                                                                      (coe v1))
                                                                   v15
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104
                                                                         (coe v0))
                                                                      (MAlonzo.Code.Ledger.Transaction.d_mint_2658
                                                                         (coe v14))))
                                                         C_Spend_1598 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Spend_6)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1578
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txins_2650
                                                                      (coe v14)))
                                                         C_Vote_1600 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Vote_14)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1582
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602
                                                                      (coe v1))
                                                                   v15
                                                                   (coe
                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                      () erased () erased
                                                                      (\ v16 ->
                                                                         MAlonzo.Code.Ledger.GovernanceActions.d_voter_702
                                                                           (coe v16))
                                                                      (MAlonzo.Code.Ledger.Transaction.d_txvote_2666
                                                                         (coe v14))))
                                                         C_Propose_1602 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Propose_16)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1584
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txprop_2668
                                                                      (coe v14)))
                                                         _ -> MAlonzo.RTE.mazUnreachableError)) in
                                         coe
                                           (case coe v13 of
                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v15
                                                -> case coe v14 of
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v16
                                                       -> case coe v16 of
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                              -> coe
                                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v12)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Data.List.Base.du__'43''43'__62
                                                                            (coe
                                                                               du_getDatum_1714
                                                                               (coe v0) (coe v3)
                                                                               (coe v4) (coe v6))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                               (coe v17)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                  (coe
                                                                                     du_valContext_2124
                                                                                     (coe v0)
                                                                                     (coe
                                                                                        du_txInfo_1796
                                                                                        (coe v0)
                                                                                        (coe v4)
                                                                                        (coe v3))
                                                                                     (coe v6))
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe v18)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.PParams.d_costmdls_328
                                                                               (coe v2)))))
                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                     _ -> coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                              _ -> coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else (let v11
                                   = seq
                                       (coe v10)
                                       (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased) in
                             coe
                               (case coe v11 of
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                    -> let v13
                                             = coe
                                                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.du_m_2842
                                                    (coe v0) (coe v3) (coe v4))
                                                 (coe v7) (coe v12) in
                                       coe
                                         (let v14
                                                = coe
                                                    MAlonzo.Code.Data.Sum.du_isInj'8322'_30
                                                    (coe v13) in
                                          coe
                                            (let v15
                                                   = coe
                                                       MAlonzo.Code.Data.Maybe.Base.du_maybe_36
                                                       (coe
                                                          (\ v15 ->
                                                             coe
                                                               MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1550
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1430
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2706
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_wits_2722
                                                                     (coe v3)))
                                                               (coe v15)
                                                               (coe
                                                                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                     erased
                                                                     (coe
                                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128
                                                                           (coe v0))))
                                                                  (coe v15)
                                                                  (let v16
                                                                         = MAlonzo.Code.Axiom.Set.d_th_1430
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.Rel.du_dom_336
                                                                        v16
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2706
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_wits_2722
                                                                                 (coe v3)))))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                       (let v15
                                                              = MAlonzo.Code.Ledger.Transaction.d_body_2720
                                                                  (coe v3) in
                                                        coe
                                                          (case coe v6 of
                                                             C_Cert_1592 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Cert_10)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1574
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txcerts_2662
                                                                          (coe v15)))
                                                             C_Rwrd_1594 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Rewrd_12)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1576
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txwdrls_2664
                                                                          (coe v15)))
                                                             C_Mint_1596 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Mint_8)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1580
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602
                                                                          (coe v1))
                                                                       v16
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
                                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104
                                                                             (coe v0))
                                                                          (MAlonzo.Code.Ledger.Transaction.d_mint_2658
                                                                             (coe v15))))
                                                             C_Spend_1598 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Spend_6)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1578
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txins_2650
                                                                          (coe v15)))
                                                             C_Vote_1600 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Vote_14)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1582
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602
                                                                          (coe v1))
                                                                       v16
                                                                       (coe
                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                          () erased () erased
                                                                          (\ v17 ->
                                                                             MAlonzo.Code.Ledger.GovernanceActions.d_voter_702
                                                                               (coe v17))
                                                                          (MAlonzo.Code.Ledger.Transaction.d_txvote_2666
                                                                             (coe v15))))
                                                             C_Propose_1602 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Propose_16)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1584
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txprop_2668
                                                                          (coe v15)))
                                                             _ -> MAlonzo.RTE.mazUnreachableError)) in
                                             coe
                                               (case coe v14 of
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v16
                                                    -> case coe v15 of
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v17
                                                           -> case coe v17 of
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                  -> coe
                                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v13)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Data.List.Base.du__'43''43'__62
                                                                                (coe
                                                                                   du_getDatum_1714
                                                                                   (coe v0) (coe v3)
                                                                                   (coe v4)
                                                                                   (coe v6))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                   (coe v18)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         du_valContext_2124
                                                                                         (coe v0)
                                                                                         (coe
                                                                                            du_txInfo_1796
                                                                                            (coe v0)
                                                                                            (coe v4)
                                                                                            (coe
                                                                                               v3))
                                                                                         (coe v6))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe v19)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.PParams.d_costmdls_328
                                                                                   (coe v2)))))
                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                         _ -> coe
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                  _ -> coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                    -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_2206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_2206 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (d_collectPhaseTwoScriptInputs''_2130
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_scriptsNeeded_2064 (coe v0) (coe v4)
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v3)))
-- Ledger.ScriptValidation.⟦_⟧,_,_,_
d_'10214'_'10215''44'_'44'_'44'__2214 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_'10214'_'10215''44'_'44'_'44'__2214 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1604 v0 v2 v1 v3 v4
-- Ledger.ScriptValidation.evalScripts
d_evalScripts_2224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_2224 v0 v1 v2 v3
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
                                           MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_296
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2686
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_2720
                                                 (coe v2)))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txvldt_2660
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_2720
                                                 (coe v2)))
                                           (coe v8)))
                                     (coe d_evalScripts_2224 (coe v0) (coe v1) (coe v2) (coe v5)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                         (coe
                                            MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1604 v1 v12
                                            v8 v11 v9)
                                         (coe
                                            d_evalScripts_2224 (coe v0) (coe v1) (coe v2) (coe v5))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
