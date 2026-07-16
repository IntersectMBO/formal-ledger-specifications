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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.SubLevelTx
d_SubLevelTx_880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_880 = erased
-- _.TopLevelTx
d_TopLevelTx_900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_900 = erased
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._._⊢_⇀⦇_,SUBUTXO⦈_
d__'8866'_'8640''10631'_'44'SUBUTXO'10632'__2594 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2596 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2598 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv
d_SubUTxOEnv_2682 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv
d_UTxOEnv_2694 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOState
d_UTxOState_2698 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.allP2ScriptsWithContext
d_allP2ScriptsWithContext_2704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3096 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3070 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allP2ScriptsWithContext_2704 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allP2ScriptsWithContext_3552
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.allScripts
d_allScripts_2792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3102 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_2792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3124
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.isTopLevelValid
d_isTopLevelValid_2794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3102 ->
  Bool
d_isTopLevelValid_2794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_isTopLevelValid_3126
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.pparams
d_pparams_2796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_2796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3118
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.slot
d_slot_2798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3102 ->
  AgdaAny
d_slot_2798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3116
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.treasury
d_treasury_2800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3102 ->
  Integer
d_treasury_2800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3120
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.utxo₀
d_utxo'8320'_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3102 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_2802 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3122
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.allScripts
d_allScripts_2806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3070 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_2806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3096
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.legacyMode
d_legacyMode_2808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3070 ->
  Bool
d_legacyMode_2808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_legacyMode_3098
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.pools₀
d_pools'8320'_2810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3070 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools'8320'_2810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pools'8320'_3094
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.pparams
d_pparams_2812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3070 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_2812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3088
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.slot
d_slot_2814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3070 ->
  AgdaAny
d_slot_2814 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3086
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.treasury
d_treasury_2816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3070 ->
  Integer
d_treasury_2816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3090
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.utxo₀
d_utxo'8320'_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3070 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_2818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3092
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOState.donations
d_donations_2822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3130 ->
  Integer
d_donations_2822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3142
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOState.fees
d_fees_2824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3130 ->
  Integer
d_fees_2824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3140
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOState.utxo
d_utxo_2826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3138
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.evalP2Scripts
d_evalP2Scripts_2850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3096 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_2850 v0 ~v1 = du_evalP2Scripts_2850 v0
du_evalP2Scripts_2850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_2850 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3418
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational.Computational-SUBUTXO
d_Computational'45'SUBUTXO_2866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3096 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'SUBUTXO_2866 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2914 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof-aux
d_computeProof'45'aux_2886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3096 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof'45'aux_2886 v0 ~v1 v2 v3 v4 v5
  = du_computeProof'45'aux_2886 v0 v2 v3 v4 v5
du_computeProof'45'aux_2886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeProof'45'aux_2886 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
        -> if coe v5
             then case coe v6 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                             -> case coe v9 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                    -> case coe v11 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                           -> case coe v13 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                  -> case coe v15 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                         -> case coe v17 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                -> case coe v19 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                       -> case coe v21 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                              -> case coe v23 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v24 v25
                                                                                     -> case coe
                                                                                               v25 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                            -> coe
                                                                                                 seq
                                                                                                 (coe
                                                                                                    v27)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                       (let v28
                                                                                                              = MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_88 in
                                                                                                        coe
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                                                                             (coe
                                                                                                                v28)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_isTopLevelValid_3126
                                                                                                                (coe
                                                                                                                   v1))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Level.C_lift_20
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                             (coe
                                                                                                                (\ v29 ->
                                                                                                                   coe
                                                                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3302)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                        (let v30
                                                                                                                               = coe
                                                                                                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                   ()
                                                                                                                                   erased
                                                                                                                                   ()
                                                                                                                                   erased
                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                      (coe
                                                                                                                                         v0))
                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                      (coe
                                                                                                                                         v0)) in
                                                                                                                         coe
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                 erased
                                                                                                                                 v30)
                                                                                                                              (let v31
                                                                                                                                     = coe
                                                                                                                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                         ()
                                                                                                                                         erased
                                                                                                                                         ()
                                                                                                                                         erased
                                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                            (coe
                                                                                                                                               v0))
                                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                            (coe
                                                                                                                                               v0)) in
                                                                                                                               coe
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                       erased
                                                                                                                                       v31)
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3138
                                                                                                                                       (coe
                                                                                                                                          v2))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4038
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4408)
                                                                                                                                       v3)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_outs_3316
                                                                                                                                 (coe
                                                                                                                                    v3))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3140
                                                                                                                              (coe
                                                                                                                                 v2))
                                                                                                                           (coe
                                                                                                                              addInt
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3142
                                                                                                                                 (coe
                                                                                                                                    v2))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4446)
                                                                                                                                 v3))))))
                                                                                                             (coe
                                                                                                                (\ v29 ->
                                                                                                                   coe
                                                                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3302)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3138
                                                                                                                           (coe
                                                                                                                              v2))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3140
                                                                                                                              (coe
                                                                                                                                 v2))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3142
                                                                                                                              (coe
                                                                                                                                 v2))))))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_SUBUTXO_3598
                                                                                                          v7)))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v6)
                    (coe
                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                       (coe ("SUBUTXO" :: Data.Text.Text)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof
d_computeProof_2914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3096 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2914 v0 v1 v2 v3 v4
  = coe
      du_computeProof'45'aux_2886 (coe v0) (coe v2) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_SUBUTXO'45'premises_3600
               (coe v0) (coe v1) (coe v4) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.completeness
d_completeness_2918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3096 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3102 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T__'8866'_'8640''10631'_'44'SUBUTXO'10632'__3572 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2918 = erased
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational.Computational-UTXOS
d_Computational'45'UTXOS_2940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3096 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXOS_2940 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v2 v3 v4 -> coe du_computeProof_2964 (coe v0) (coe v1) v2 v4)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof-aux
d_computeProof'45'aux_2956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3096 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3070 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof'45'aux_2956 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_computeProof'45'aux_2956 v5
du_computeProof'45'aux_2956 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeProof'45'aux_2956 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v1 v2
        -> if coe v1
             then coe
                    seq (coe v2)
                    (coe
                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_UTXOS_3568)))
             else coe
                    seq (coe v2)
                    (coe
                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                       (coe
                          ("\172\nevalP2Scripts (allP2ScriptsWithContext \915 txTop) \8801\n.TransactionStructure.HasIsValidFlag.IsValidFlagOf\n(TransactionStructure.HasIsValidFlag-Tx txs) txTop"
                           ::
                           Data.Text.Text)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof
d_computeProof_2964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3096 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3070 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2964 v0 v1 v2 ~v3 v4
  = du_computeProof_2964 v0 v1 v2 v4
du_computeProof_2964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3096 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3070 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeProof_2964 v0 v1 v2 v3
  = coe
      du_computeProof'45'aux_2956
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
            (coe
               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3418
               v0
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allP2ScriptsWithContext_3552
                  (coe v0) (coe v1) (coe v2) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3680
               (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.completeness
d_completeness_2968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3096 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3070 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__3566 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2968 = erased
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational.Computational-UTXO
d_Computational'45'UTXO_2984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3096 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXO_2984 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_3076 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof-aux
d_computeProof'45'aux_3026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3096 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3070 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof'45'aux_3026 v0 ~v1 ~v2 v3 v4 v5 v6
  = du_computeProof'45'aux_3026 v0 v3 v4 v5 v6
du_computeProof'45'aux_3026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeProof'45'aux_3026 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v5
        -> case coe v3 of
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
               -> if coe v6
                    then case coe v7 of
                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                             -> case coe v8 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                    -> case coe v10 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                           -> case coe v12 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                                  -> case coe v14 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                         -> case coe v16 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                                -> case coe v18 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                       -> case coe v20 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                              -> case coe v22 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                                     -> case coe
                                                                                               v24 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                            -> case coe
                                                                                                      v26 of
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                                   -> case coe
                                                                                                             v28 of
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                          -> case coe
                                                                                                                    v30 of
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                                                                                 -> case coe
                                                                                                                           v32 of
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v33 v34
                                                                                                                        -> case coe
                                                                                                                                  v34 of
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                                                                               -> case coe
                                                                                                                                         v36 of
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v37 v38
                                                                                                                                      -> case coe
                                                                                                                                                v38 of
                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v39 v40
                                                                                                                                             -> case coe
                                                                                                                                                       v40 of
                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v41 v42
                                                                                                                                                    -> coe
                                                                                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                                                            (let v43
                                                                                                                                                                   = MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_88 in
                                                                                                                                                             coe
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                                                                                                                                  (coe
                                                                                                                                                                     v43)
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4358
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4372)
                                                                                                                                                                     v2)
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Level.C_lift_20
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                                                                  (coe
                                                                                                                                                                     (\ v44 ->
                                                                                                                                                                        coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3302)
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                             (let v45
                                                                                                                                                                                    = coe
                                                                                                                                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                        ()
                                                                                                                                                                                        erased
                                                                                                                                                                                        ()
                                                                                                                                                                                        erased
                                                                                                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                           (coe
                                                                                                                                                                                              v0))
                                                                                                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                           (coe
                                                                                                                                                                                              v0)) in
                                                                                                                                                                              coe
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                      erased
                                                                                                                                                                                      v45)
                                                                                                                                                                                   (let v46
                                                                                                                                                                                          = coe
                                                                                                                                                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                              ()
                                                                                                                                                                                              erased
                                                                                                                                                                                              ()
                                                                                                                                                                                              erased
                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v0))
                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v0)) in
                                                                                                                                                                                    coe
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                            erased
                                                                                                                                                                                            v46)
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3138
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v1))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4038
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4408)
                                                                                                                                                                                            v2)))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_outs_3316
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v2))))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                (coe
                                                                                                                                                                                   addInt
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_3910
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4380)
                                                                                                                                                                                      v2)
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3140
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v1)))
                                                                                                                                                                                (coe
                                                                                                                                                                                   addInt
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3142
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v1))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4446)
                                                                                                                                                                                      v2))))))
                                                                                                                                                                  (coe
                                                                                                                                                                     (\ v44 ->
                                                                                                                                                                        coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3302)
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                             (let v45
                                                                                                                                                                                    = coe
                                                                                                                                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                        ()
                                                                                                                                                                                        erased
                                                                                                                                                                                        ()
                                                                                                                                                                                        erased
                                                                                                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                           (coe
                                                                                                                                                                                              v0))
                                                                                                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                           (coe
                                                                                                                                                                                              v0)) in
                                                                                                                                                                              coe
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                      erased
                                                                                                                                                                                      v45)
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3138
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v1))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_3886
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4378)
                                                                                                                                                                                      v2)))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                (coe
                                                                                                                                                                                   addInt
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_cbalance_3328
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v0)
                                                                                                                                                                                      (let v45
                                                                                                                                                                                             = coe
                                                                                                                                                                                                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                 ()
                                                                                                                                                                                                 erased
                                                                                                                                                                                                 ()
                                                                                                                                                                                                 erased
                                                                                                                                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       v0))
                                                                                                                                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       v0)) in
                                                                                                                                                                                       coe
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                               erased
                                                                                                                                                                                               v45)
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3138
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v1))
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_3886
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4378)
                                                                                                                                                                                               v2))))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3140
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v1)))
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3142
                                                                                                                                                                                   (coe
                                                                                                                                                                                      v1))))))))
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_UTXO_3632
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                  (coe
                                                                                                                                                                     v9)
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                     (coe
                                                                                                                                                                        v11)
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                        (coe
                                                                                                                                                                           v13)
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                           (coe
                                                                                                                                                                              v15)
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                              (coe
                                                                                                                                                                                 v17)
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v19)
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                    (coe
                                                                                                                                                                                       v21)
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                       (coe
                                                                                                                                                                                          v23)
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                          (coe
                                                                                                                                                                                             v25)
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v27)
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v29)
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v31)
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v33)
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            v35)
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               v37)
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                  v39)
                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                     v41)
                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        v42)
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                           v5))))))))))))))))))))))
                                                                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe
                           seq (coe v7)
                           (coe
                              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                              (coe ("UTXO" :: Data.Text.Text)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v5
        -> coe
             MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
             (coe ("UTXO" :: Data.Text.Text))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof
d_computeProof_3076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3096 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3070 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3076 v0 v1 v2 v3 v4
  = coe
      du_computeProof'45'aux_3026 (coe v0) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTXO'45'premises_3634
               (coe v0) (coe v1) (coe v4) (coe v2) (coe v3))))
      (coe du_computeProof_2964 (coe v0) (coe v1) (coe v2) (coe v4))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.completeness
d_completeness_3080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3096 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3070 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3130 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__3602 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3080 = erased
