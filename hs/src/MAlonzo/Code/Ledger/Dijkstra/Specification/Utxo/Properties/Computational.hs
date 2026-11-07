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
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Decidable.WithoutK
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
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
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances
import qualified MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError

-- _.Dec-isVKey
d_Dec'45'isVKey_122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_122 ~v0 = du_Dec'45'isVKey_122
du_Dec'45'isVKey_122 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_122
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_286
-- _.SubLevelTx
d_SubLevelTx_906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_906 = erased
-- _.TopLevelTx
d_TopLevelTx_926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_926 = erased
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._._⊢_⇀⦇_,SUBUTXO⦈_
d__'8866'_'8640''10631'_'44'SUBUTXO'10632'__2688 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2690 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2692 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.Dec-inInterval
d_Dec'45'inInterval_2696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2696 v0 ~v1 = du_Dec'45'inInterval_2696 v0
du_Dec'45'inInterval_2696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2696 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_Dec'45'inInterval_3570
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv
d_SubUTxOEnv_2780 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv
d_UTxOEnv_2792 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOState
d_UTxOState_2796 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.allP2ScriptsWithContext
d_allP2ScriptsWithContext_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allP2ScriptsWithContext_2802 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allP2ScriptsWithContext_3772
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.allScripts
d_allScripts_2894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3292 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_2894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3322
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.isTopLevelValid
d_isTopLevelValid_2896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3292 ->
  Bool
d_isTopLevelValid_2896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_isTopLevelValid_3324
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.pState₀
d_pState'8320'_2898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3292 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574
d_pState'8320'_2898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pState'8320'_3318
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.pparams
d_pparams_2900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3292 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_pparams_2900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3312
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.prevDCerts
d_prevDCerts_2902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3292 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494]
d_prevDCerts_2902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_prevDCerts_3320
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.slot
d_slot_2904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3292 ->
  AgdaAny
d_slot_2904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3310
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.treasury
d_treasury_2906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3292 ->
  Integer
d_treasury_2906 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3314
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.utxo₀
d_utxo'8320'_2908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3292 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_2908 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3316
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.allScripts
d_allScripts_2912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3260 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_2912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3286
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.legacyMode
d_legacyMode_2914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3260 ->
  Bool
d_legacyMode_2914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_legacyMode_3288
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.pState₀
d_pState'8320'_2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574
d_pState'8320'_2916 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pState'8320'_3284
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.pparams
d_pparams_2918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_pparams_2918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3278
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.slot
d_slot_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3260 ->
  AgdaAny
d_slot_2920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3276
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.treasury
d_treasury_2922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3260 ->
  Integer
d_treasury_2922 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3280
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.utxo₀
d_utxo'8320'_2924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_2924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3282
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOState.donations
d_donations_2928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3328 ->
  Integer
d_donations_2928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3340
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOState.fees
d_fees_2930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3328 ->
  Integer
d_fees_2930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3338
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOState.utxo
d_utxo_2932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3336
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.evalP2Scripts
d_evalP2Scripts_2956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_2956 v0 ~v1 = du_evalP2Scripts_2956 v0
du_evalP2Scripts_2956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_2956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3602
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational.Computational-SUBUTXO
d_Computational'45'SUBUTXO_2974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_264
d_Computational'45'SUBUTXO_2974 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_444
      (d_computeProof_3022 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof-aux
d_computeProof'45'aux_2994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3292 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof'45'aux_2994 v0 ~v1 v2 v3 v4 v5
  = du_computeProof'45'aux_2994 v0 v2 v3 v4 v5
du_computeProof'45'aux_2994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3292 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeProof'45'aux_2994 v0 v1 v2 v3 v4
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
                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_isTopLevelValid_3324
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
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3504)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                        (let v30
                                                                                                                               = coe
                                                                                                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                   ()
                                                                                                                                   erased
                                                                                                                                   ()
                                                                                                                                   erased
                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                                                                                      (coe
                                                                                                                                         v0))
                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                                                                                      (coe
                                                                                                                                         v0)) in
                                                                                                                         coe
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1052
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
                                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                                                                                            (coe
                                                                                                                                               v0))
                                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                                                                                            (coe
                                                                                                                                               v0)) in
                                                                                                                               coe
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
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
                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3336
                                                                                                                                       (coe
                                                                                                                                          v2))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4254
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4650)
                                                                                                                                       v3)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_outs_3518
                                                                                                                                 (coe
                                                                                                                                    v3))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3338
                                                                                                                              (coe
                                                                                                                                 v2))
                                                                                                                           (coe
                                                                                                                              addInt
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3340
                                                                                                                                 (coe
                                                                                                                                    v2))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_38
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4688)
                                                                                                                                 v3))))))
                                                                                                             (coe
                                                                                                                (\ v29 ->
                                                                                                                   coe
                                                                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3504)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3336
                                                                                                                           (coe
                                                                                                                              v2))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3338
                                                                                                                              (coe
                                                                                                                                 v2))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3340
                                                                                                                              (coe
                                                                                                                                 v2))))))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_SUBUTXO_3818
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
d_computeProof_3022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3292 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3022 v0 v1 v2 v3 v4
  = coe
      du_computeProof'45'aux_2994 (coe v0) (coe v2) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_SUBUTXO'45'premises_3820
               (coe v0) (coe v1) (coe v4) (coe v2) (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.completeness
d_completeness_3026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3292 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T__'8866'_'8640''10631'_'44'SUBUTXO'10632'__3792 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3026 = erased
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational.Computational-UTXOS
d_Computational'45'UTXOS_3048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_264
d_Computational'45'UTXOS_3048 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_444
      (\ v2 v3 v4 -> coe du_computeProof_3072 (coe v0) (coe v1) v2 v4)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof-aux
d_computeProof'45'aux_3064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3260 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof'45'aux_3064 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_computeProof'45'aux_3064 v5
du_computeProof'45'aux_3064 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeProof'45'aux_3064 v0
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_UTXOS_3788)))
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
d_computeProof_3072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3260 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3072 v0 v1 v2 ~v3 v4
  = du_computeProof_3072 v0 v1 v2 v4
du_computeProof_3072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeProof_3072 v0 v1 v2 v3
  = coe
      du_computeProof'45'aux_3064
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
            (coe
               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3602
               v0
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allP2ScriptsWithContext_3772
                  (coe v0) (coe v1) (coe v2) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3896
               (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.completeness
d_completeness_3076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3260 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__3786 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3076 = erased
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational.Computational-UTXO
d_Computational'45'UTXO_3092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_264
d_Computational'45'UTXO_3092 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_444
      (d_computeProof_3186 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof-aux
d_computeProof'45'aux_3134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof'45'aux_3134 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v7
        -> case coe v5 of
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
               -> if coe v8
                    then case coe v9 of
                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v10
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
                                                                              -> case coe v24 of
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
                                                                                                                                             -> case coe
                                                                                                                                                       v42 of
                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v43 v44
                                                                                                                                                    -> case coe
                                                                                                                                                              v44 of
                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v45 v46
                                                                                                                                                           -> coe
                                                                                                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                                                                   (let v47
                                                                                                                                                                          = MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_88 in
                                                                                                                                                                    coe
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                                                                                                                                         (coe
                                                                                                                                                                            v47)
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4594
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4608)
                                                                                                                                                                            v4)
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Level.C_lift_20
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                                                                         (coe
                                                                                                                                                                            (\ v48 ->
                                                                                                                                                                               coe
                                                                                                                                                                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3504)
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                    (let v49
                                                                                                                                                                                           = coe
                                                                                                                                                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                               ()
                                                                                                                                                                                               erased
                                                                                                                                                                                               ()
                                                                                                                                                                                               erased
                                                                                                                                                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v0))
                                                                                                                                                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v0)) in
                                                                                                                                                                                     coe
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1052
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                             erased
                                                                                                                                                                                             v49)
                                                                                                                                                                                          (let v50
                                                                                                                                                                                                 = coe
                                                                                                                                                                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                     ()
                                                                                                                                                                                                     erased
                                                                                                                                                                                                     ()
                                                                                                                                                                                                     erased
                                                                                                                                                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                                                                                                                                                        (coe
                                                                                                                                                                                                           v0))
                                                                                                                                                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                                                                                                                                                        (coe
                                                                                                                                                                                                           v0)) in
                                                                                                                                                                                           coe
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                   erased
                                                                                                                                                                                                   v50)
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3336
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v3))
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4254
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4650)
                                                                                                                                                                                                   v4)))
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_outs_3518
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v4))))
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                       (coe
                                                                                                                                                                                          addInt
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4130
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4616)
                                                                                                                                                                                             v4)
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3338
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v3)))
                                                                                                                                                                                       (coe
                                                                                                                                                                                          addInt
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3340
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v3))
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_38
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4688)
                                                                                                                                                                                             v4))))))
                                                                                                                                                                         (coe
                                                                                                                                                                            (\ v48 ->
                                                                                                                                                                               coe
                                                                                                                                                                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3504)
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                    (let v49
                                                                                                                                                                                           = coe
                                                                                                                                                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                               ()
                                                                                                                                                                                               erased
                                                                                                                                                                                               ()
                                                                                                                                                                                               erased
                                                                                                                                                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v0))
                                                                                                                                                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v0)) in
                                                                                                                                                                                     coe
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1644
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                             erased
                                                                                                                                                                                             v49)
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3336
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v3))
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4106
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4614)
                                                                                                                                                                                             v4)))
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                       (coe
                                                                                                                                                                                          addInt
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_cbalance_3530
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v0)
                                                                                                                                                                                             (let v49
                                                                                                                                                                                                    = coe
                                                                                                                                                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                        ()
                                                                                                                                                                                                        erased
                                                                                                                                                                                                        ()
                                                                                                                                                                                                        erased
                                                                                                                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                                                                                                                                                           (coe
                                                                                                                                                                                                              v0))
                                                                                                                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                                                                                                                                                           (coe
                                                                                                                                                                                                              v0)) in
                                                                                                                                                                                              coe
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739'__1636
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                      erased
                                                                                                                                                                                                      v49)
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3336
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v3))
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4106
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4614)
                                                                                                                                                                                                      v4))))
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3338
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v3)))
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3340
                                                                                                                                                                                          (coe
                                                                                                                                                                                             v3))))))))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_UTXO_3850
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
                                                                                                                                                                                                                            v43)
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               v45)
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  v46)
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                     v7)))))))))))))))))))))))
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
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe
                           seq (coe v9)
                           (coe
                              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                              (let v10
                                     = coe
                                         MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1266
                                                  (coe
                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                     () erased () erased
                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                        (coe v0))
                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4254
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4650)
                                                  v4)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                                         erased in
                               coe
                                 (case coe v10 of
                                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v11
                                      -> coe
                                           ("\172\n.TransactionStructure.HasSpendInputs.SpendInputsOf\n(TransactionStructure.HasSpendInputs-Tx txs) txTop\n\8802\n.Class.HasEmptySet.HasEmptySet.\8709\n(Class.HasEmptySet.HasEmptySet-Set\n (.Axiom.Set.Theory\7496.th List-Model\7496))"
                                            ::
                                            Data.Text.Text)
                                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v11
                                      -> let v12
                                               = coe
                                                   MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         (\ v12 ->
                                                            coe
                                                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                              (coe
                                                                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                 () erased () erased
                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                    (coe v0))
                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                    (coe v0)))
                                                              (coe v12)
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_dom_588
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                 (coe
                                                                    MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3282
                                                                    (coe v2)))))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du__'8746'__708
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4254
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4650)
                                                            v4)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3954
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                               (coe v4)))))
                                                   erased in
                                         coe
                                           (case coe v12 of
                                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                -> coe
                                                     ("\172\n(HasSubset-Set HasSubset.\8838\n (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  .TransactionStructure.HasSpendInputs.SpendInputsOf\n  (TransactionStructure.HasSpendInputs-Tx txs) txTop)\n (.TransactionStructure.HasCollateralInputs.CollateralInputsOf\n  (TransactionStructure.HasCollateralInputs-TopLevelTx txs) txTop))\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.TransactionStructure.HasUTxO.UTxOOf\n  (Ledger.Dijkstra.Specification.Utxo.HasUTxO-UTxOEnv txs abs) \915))"
                                                      ::
                                                      Data.Text.Text)
                                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                -> let v14
                                                         = coe
                                                             MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                (coe
                                                                   (\ v14 ->
                                                                      coe
                                                                        MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                        (coe
                                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                           () erased () erased
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                              (coe v0))
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                              (coe v0)))
                                                                        (coe v14)
                                                                        (coe
                                                                           MAlonzo.Code.Class.IsSet.du_dom_588
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                           (coe
                                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3282
                                                                              (coe v2)))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4274
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4654)
                                                                   v4))
                                                             erased in
                                                   coe
                                                     (case coe v14 of
                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v15
                                                          -> coe
                                                               ("\172\n(HasSubset-Set HasSubset.\8838\n .TransactionStructure.HasReferenceInputs.ReferenceInputsOf\n (TransactionStructure.HasReferenceInputs-Tx txs) txTop)\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.TransactionStructure.HasUTxO.UTxOOf\n  (Ledger.Dijkstra.Specification.Utxo.HasUTxO-UTxOEnv txs abs) \915))"
                                                                ::
                                                                Data.Text.Text)
                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v15
                                                          -> let v16
                                                                   = coe
                                                                       MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                          (coe
                                                                             (\ v16 ->
                                                                                coe
                                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                  (coe
                                                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                     () erased ()
                                                                                     erased
                                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                                        (coe v0))
                                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                                        (coe v0)))
                                                                                  (coe v16)
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.IsSet.du_dom_588
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3336
                                                                                        (coe v3)))))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4254
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4650)
                                                                             v4))
                                                                       erased in
                                                             coe
                                                               (case coe v16 of
                                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v17
                                                                    -> coe
                                                                         ("\172\n(HasSubset-Set HasSubset.\8838\n .TransactionStructure.HasSpendInputs.SpendInputsOf\n (TransactionStructure.HasSpendInputs-Tx txs) txTop)\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.TransactionStructure.HasUTxO.UTxOOf\n  (Ledger.Dijkstra.Specification.Utxo.HasUTxO-UTxOState txs abs) s\8320))"
                                                                          ::
                                                                          Data.Text.Text)
                                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v17
                                                                    -> let v18
                                                                             = coe
                                                                                 MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_Dec'45'inInterval_3570
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3276
                                                                                       (coe v2))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3966
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                                                          (coe
                                                                                             v4))))
                                                                                 erased in
                                                                       coe
                                                                         (case coe v18 of
                                                                            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v19
                                                                              -> coe
                                                                                   ("\172\nLedger.Dijkstra.Specification.Utxo.inInterval txs abs\n(.Ledger.Dijkstra.Specification.Utxo.HasSlot.SlotOf\n (Ledger.Dijkstra.Specification.Utxo.HasSlot-UTxOEnv txs abs) \915)\n(.TransactionStructure.HasValidInterval.ValidIntervalOf\n (TransactionStructure.HasValidInterval-Tx txs) txTop)"
                                                                                    ::
                                                                                    Data.Text.Text)
                                                                            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v19
                                                                              -> let v20
                                                                                       = coe
                                                                                           MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_minfee_3534
                                                                                                 (coe
                                                                                                    v0)
                                                                                                 (coe
                                                                                                    v1)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3278
                                                                                                    (coe
                                                                                                       v2))
                                                                                                 (coe
                                                                                                    v4)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3282
                                                                                                    (coe
                                                                                                       v2)))
                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3962
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                                                                    (coe
                                                                                                       v4))))
                                                                                           erased in
                                                                                 coe
                                                                                   (case coe v20 of
                                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v21
                                                                                        -> coe
                                                                                             ("\172\n(\8469-hasPreorder HasPreorder.\8804\n Ledger.Dijkstra.Specification.Utxo.minfee txs abs\n (.Ledger.Dijkstra.Specification.PParams.HasPParams.PParamsOf\n  (Ledger.Dijkstra.Specification.Utxo.HasPParams-UTxOEnv txs abs) \915)\n txTop\n (.TransactionStructure.HasUTxO.UTxOOf\n  (Ledger.Dijkstra.Specification.Utxo.HasUTxO-UTxOEnv txs abs) \915))\n(.TransactionStructure.HasTxFees.TxFeesOf\n (TransactionStructure.HasTxFees-TopLevelTx txs) txTop)"
                                                                                              ::
                                                                                              Data.Text.Text)
                                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v21
                                                                                        -> let v22
                                                                                                 = coe
                                                                                                     MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                                                                                              (coe
                                                                                                                 v0))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4294
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4658)
                                                                                                              v4))
                                                                                                        (coe
                                                                                                           (0 ::
                                                                                                              Integer)))
                                                                                                     erased in
                                                                                           coe
                                                                                             (case coe
                                                                                                     v22 of
                                                                                                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v23
                                                                                                  -> coe
                                                                                                       ("\172\n.Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.coin\n(.TransactionStructure.tokenAlgebra txs)\n(.TransactionStructure.HasMintedValue.MintedValueOf\n (TransactionStructure.HasMintedValue-Tx txs) txTop)\n\8801 0"
                                                                                                        ::
                                                                                                        Data.Text.Text)
                                                                                                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v23
                                                                                                  -> let v24
                                                                                                           = coe
                                                                                                               MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                                                                                                        (coe
                                                                                                                           v0)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_consumedBatch_3720
                                                                                                                     (coe
                                                                                                                        v0)
                                                                                                                     (coe
                                                                                                                        v4)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3282
                                                                                                                        (coe
                                                                                                                           v2)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_producedBatch_3744
                                                                                                                     (coe
                                                                                                                        v0)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3278
                                                                                                                        (coe
                                                                                                                           v2))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1584
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pState'8320'_3284
                                                                                                                           (coe
                                                                                                                              v2)))
                                                                                                                     (coe
                                                                                                                        v4)))
                                                                                                               erased in
                                                                                                     coe
                                                                                                       (case coe
                                                                                                               v24 of
                                                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v25
                                                                                                            -> coe
                                                                                                                 ("\172\nLedger.Dijkstra.Specification.Utxo.consumedBatch txs abs\n(.Ledger.Dijkstra.Specification.PParams.HasPParams.PParamsOf\n (Ledger.Dijkstra.Specification.Utxo.HasPParams-UTxOEnv txs abs) \915)\ntxTop\n(.TransactionStructure.HasUTxO.UTxOOf\n (Ledger.Dijkstra.Specification.Utxo.HasUTxO-UTxOEnv txs abs) \915)\n\8801\nLedger.Dijkstra.Specification.Utxo.producedBatch txs abs\n(.Ledger.Dijkstra.Specification.PParams.HasPParams.PParamsOf\n (Ledger.Dijkstra.Specification.Utxo.HasPParams-UTxOEnv txs abs) \915)\n(.Ledger.Dijkstra.Specification.Certs.HasPools.PoolsOf\n (Ledger.Dijkstra.Specification.Certs.HasPools-PState\n  (TransactionStructure.govStructure txs))\n (.Ledger.Dijkstra.Specification.Certs.HasPState.PStateOf\n  (Ledger.Dijkstra.Specification.Utxo.HasPState-UTxOEnv txs abs) \915))\ntxTop"
                                                                                                                  ::
                                                                                                                  Data.Text.Text)
                                                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v25
                                                                                                            -> let v26
                                                                                                                     = coe
                                                                                                                         MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_legacyMode_3288
                                                                                                                                  (coe
                                                                                                                                     v2))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                                                                                                                     (coe
                                                                                                                                        v0)))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_consumedLegacy_3728
                                                                                                                                  (coe
                                                                                                                                     v0)
                                                                                                                                  (coe
                                                                                                                                     v4)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3282
                                                                                                                                     (coe
                                                                                                                                        v2)))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_producedLegacy_3752
                                                                                                                                  (coe
                                                                                                                                     v0)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3278
                                                                                                                                     (coe
                                                                                                                                        v2))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1584
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pState'8320'_3284
                                                                                                                                        (coe
                                                                                                                                           v2)))
                                                                                                                                  (coe
                                                                                                                                     v4))))
                                                                                                                         erased in
                                                                                                               coe
                                                                                                                 (case coe
                                                                                                                         v26 of
                                                                                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v27
                                                                                                                      -> coe
                                                                                                                           ("\172\n((z\n  : .Ledger.Dijkstra.Specification.Utxo.HasLegacyMode.LegacyModeOf\n    (Ledger.Dijkstra.Specification.Utxo.HasLegacyMode-UTxOEnv txs abs)\n    \915\n    \8801 true) \8594\n Ledger.Dijkstra.Specification.Utxo.consumedLegacy txs abs\n (.Ledger.Dijkstra.Specification.PParams.HasPParams.PParamsOf\n  (Ledger.Dijkstra.Specification.Utxo.HasPParams-UTxOEnv txs abs) \915)\n txTop\n (.TransactionStructure.HasUTxO.UTxOOf\n  (Ledger.Dijkstra.Specification.Utxo.HasUTxO-UTxOEnv txs abs) \915)\n \8801\n Ledger.Dijkstra.Specification.Utxo.producedLegacy txs abs\n (.Ledger.Dijkstra.Specification.PParams.HasPParams.PParamsOf\n  (Ledger.Dijkstra.Specification.Utxo.HasPParams-UTxOEnv txs abs) \915)\n (.Ledger.Dijkstra.Specification.Certs.HasPools.PoolsOf\n  (Ledger.Dijkstra.Specification.Certs.HasPools-PState\n   (TransactionStructure.govStructure txs))\n  (.Ledger.Dijkstra.Specification.Certs.HasPState.PStateOf\n   (Ledger.Dijkstra.Specification.Utxo.HasPState-UTxOEnv txs abs) \915))\n txTop)"
                                                                                                                            ::
                                                                                                                            Data.Text.Text)
                                                                                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v27
                                                                                                                      -> let v28
                                                                                                                               = coe
                                                                                                                                   MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3894
                                                                                                                                         (coe
                                                                                                                                            v4))
                                                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_412
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3278
                                                                                                                                            (coe
                                                                                                                                               v2))))
                                                                                                                                   erased in
                                                                                                                         coe
                                                                                                                           (case coe
                                                                                                                                   v28 of
                                                                                                                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v29
                                                                                                                                -> coe
                                                                                                                                     ("\172\n(\8469-hasPreorder HasPreorder.\8804\n .TransactionStructure.HasSize.SizeOf\n (TransactionStructure.HasSize-Tx txs) txTop)\n(.Ledger.Dijkstra.Specification.PParams.PParams.maxTxSize\n (.Ledger.Dijkstra.Specification.PParams.HasPParams.PParamsOf\n  (Ledger.Dijkstra.Specification.Utxo.HasPParams-UTxOEnv txs abs) \915))"
                                                                                                                                      ::
                                                                                                                                      Data.Text.Text)
                                                                                                                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v29
                                                                                                                                -> let v30
                                                                                                                                         = coe
                                                                                                                                             MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_totalRefScriptsSize_3246
                                                                                                                                                   (coe
                                                                                                                                                      v0)
                                                                                                                                                   (coe
                                                                                                                                                      v1)
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3282
                                                                                                                                                      (coe
                                                                                                                                                         v2))
                                                                                                                                                   (coe
                                                                                                                                                      v4))
                                                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_464
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3278
                                                                                                                                                      (coe
                                                                                                                                                         v2))))
                                                                                                                                             erased in
                                                                                                                                   coe
                                                                                                                                     (case coe
                                                                                                                                             v30 of
                                                                                                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v31
                                                                                                                                          -> coe
                                                                                                                                               ("\172\n(\8469-hasPreorder HasPreorder.\8804\n Ledger.Dijkstra.Specification.Utxo.totalRefScriptsSize txs abs\n (.TransactionStructure.HasUTxO.UTxOOf\n  (Ledger.Dijkstra.Specification.Utxo.HasUTxO-UTxOEnv txs abs) \915)\n txTop)\n(.Ledger.Dijkstra.Specification.PParams.PParams.maxRefScriptSizePerTx\n (.Ledger.Dijkstra.Specification.PParams.HasPParams.PParamsOf\n  (Ledger.Dijkstra.Specification.Utxo.HasPParams-UTxOEnv txs abs) \915))"
                                                                                                                                                ::
                                                                                                                                                Data.Text.Text)
                                                                                                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v31
                                                                                                                                          -> let v32
                                                                                                                                                   = coe
                                                                                                                                                       MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8804''7497''7512''45'Dec_478
                                                                                                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                                                                                                                                                (coe
                                                                                                                                                                   v0)))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totalExUnits_3230
                                                                                                                                                             (coe
                                                                                                                                                                v0)
                                                                                                                                                             (coe
                                                                                                                                                                v4))
                                                                                                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_416
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3278
                                                                                                                                                                (coe
                                                                                                                                                                   v2))))
                                                                                                                                                       erased in
                                                                                                                                             coe
                                                                                                                                               (case coe
                                                                                                                                                       v32 of
                                                                                                                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v33
                                                                                                                                                    -> coe
                                                                                                                                                         ("\172\n(.Ledger.Dijkstra.Specification.Script.Base.ScriptStructure.ps\n (.TransactionStructure.scriptStructure txs)\n Ledger.Dijkstra.Specification.Script.Base.PlutusStructure.\8804\7497\7512\n Ledger.Dijkstra.Specification.Utxo.totalExUnits txs abs txTop)\n(.Ledger.Dijkstra.Specification.PParams.PParams.maxTxExUnits\n (.Ledger.Dijkstra.Specification.PParams.HasPParams.PParamsOf\n  (Ledger.Dijkstra.Specification.Utxo.HasPParams-UTxOEnv txs abs) \915))"
                                                                                                                                                          ::
                                                                                                                                                          Data.Text.Text)
                                                                                                                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v33
                                                                                                                                                    -> let v34
                                                                                                                                                             = coe
                                                                                                                                                                 MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1266
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                   ()
                                                                                                                                                                                   erased
                                                                                                                                                                                   ()
                                                                                                                                                                                   erased
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                      ()
                                                                                                                                                                                      erased
                                                                                                                                                                                      ()
                                                                                                                                                                                      erased
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                                                                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v0)))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                      ()
                                                                                                                                                                                      erased
                                                                                                                                                                                      ()
                                                                                                                                                                                      erased
                                                                                                                                                                                      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        v0))))))
                                                                                                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v0)))))))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_4014
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3892
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v4))))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'Any_22
                                                                                                                                                                          (coe
                                                                                                                                                                             (\ v34 ->
                                                                                                                                                                                coe
                                                                                                                                                                                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1266
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                           ()
                                                                                                                                                                                           erased
                                                                                                                                                                                           ()
                                                                                                                                                                                           erased
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                              ()
                                                                                                                                                                                              erased
                                                                                                                                                                                              ()
                                                                                                                                                                                              erased
                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v0)))
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                              ()
                                                                                                                                                                                              erased
                                                                                                                                                                                              ()
                                                                                                                                                                                              erased
                                                                                                                                                                                              (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_446
                                                                                                                                                                                                       (coe
                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                v0))))))
                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                                                                                                                                                                                       (coe
                                                                                                                                                                                                          v0)))))))
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_4014
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3892
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 v34))))
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)))
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3984
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                                                                                                                                                (coe
                                                                                                                                                                                   v4)))))
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                          (coe
                                                                                                                                                                             (\ v34 ->
                                                                                                                                                                                coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_286
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_254
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v34)))))
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Class.IsSet.du_range_590
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'__1636
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                   erased
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v0))
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v0))))
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3282
                                                                                                                                                                                   (coe
                                                                                                                                                                                      v2))
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3954
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v4))))))
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                                (coe
                                                                                                                                                                                   (\ v34 ->
                                                                                                                                                                                      coe
                                                                                                                                                                                        MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 v0)))
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v34)
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_coinPolicies_3672
                                                                                                                                                                                           (coe
                                                                                                                                                                                              v0))))
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v0))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_balance_3524
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v0)
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1636
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                            erased
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v0))
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v0))))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3282
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v2))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3954
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v4)))))))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                                (coe
                                                                                                                                                                                   (\ v34 ->
                                                                                                                                                                                      coe
                                                                                                                                                                                        MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 v0)))
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v34)
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                                                                                                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 v0))
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_balance_3524
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 v0)
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1636
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                    erased
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                                                                                                                       (coe
                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             v0))
                                                                                                                                                                                                       (coe
                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             v0))))
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3282
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       v2))
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3954
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                                                                                                                                                                       (coe
                                                                                                                                                                                                          v4))))))))
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_coinPolicies_3672
                                                                                                                                                                                   (coe
                                                                                                                                                                                      v0))))
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                                                                                                                                (mulInt
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3962
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v4)))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_480
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3278
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v2))))
                                                                                                                                                                                (mulInt
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                                                                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v0))
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_balance_3524
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v0)
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1636
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                               erased
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        v0))
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        v0))))
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3282
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v2))
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3954
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v4))))))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      (100 ::
                                                                                                                                                                                         Integer))))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1266
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                         ()
                                                                                                                                                                                         erased
                                                                                                                                                                                         ()
                                                                                                                                                                                         erased
                                                                                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v0))
                                                                                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v0))))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3954
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v4)))
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))))))
                                                                                                                                                                 erased in
                                                                                                                                                       coe
                                                                                                                                                         (case coe
                                                                                                                                                                 v34 of
                                                                                                                                                            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v35
                                                                                                                                                              -> coe
                                                                                                                                                                   ("\172\n((z\n  : (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Map.\738)\n    (.TransactionStructure.HasRedeemers.RedeemersOf\n     (TransactionStructure.HasRedeemers-Tx txs) txTop)\n    \8802\n    .Class.HasEmptySet.HasEmptySet.\8709\n    (Class.HasEmptySet.HasEmptySet-Set\n     (.Axiom.Set.Theory\7496.th List-Model\7496))\n    \8846\n    Data.List.Relation.Unary.Any.Any\n    (\955 txSub \8594\n       (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Map.\738)\n       (.TransactionStructure.HasRedeemers.RedeemersOf\n        (TransactionStructure.HasRedeemers-Tx txs) txSub)\n       \8802\n       .Class.HasEmptySet.HasEmptySet.\8709\n       (Class.HasEmptySet.HasEmptySet-Set\n        (.Axiom.Set.Theory\7496.th List-Model\7496)))\n    (.TransactionStructure.HasSubTransactions.SubTransactionsOf\n     (TransactionStructure.HasSubTransactions-TopLevelTx txs) txTop)) \8594\n Ledger.Dijkstra.Specification.Utxo.collateralCheck txs abs\n (.Ledger.Dijkstra.Specification.PParams.HasPParams.PParamsOf\n  (Ledger.Dijkstra.Specification.Utxo.HasPParams-UTxOEnv txs abs) \915)\n txTop\n (.TransactionStructure.HasUTxO.UTxOOf\n  (Ledger.Dijkstra.Specification.Utxo.HasUTxO-UTxOEnv txs abs) \915))"
                                                                                                                                                                    ::
                                                                                                                                                                    Data.Text.Text)
                                                                                                                                                            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v35
                                                                                                                                                              -> let v36
                                                                                                                                                                       = coe
                                                                                                                                                                           MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                              (coe
                                                                                                                                                                                 (\ v36 ->
                                                                                                                                                                                    coe
                                                                                                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
                                                                                                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v0))
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                                                                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v0))
                                                                                                                                                                                         (mulInt
                                                                                                                                                                                            (coe
                                                                                                                                                                                               addInt
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  (160 ::
                                                                                                                                                                                                     Integer))
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_utxoEntrySize_3256
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v0)
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        v36))))
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_458
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3278
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v2)))))
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4724
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v36)))))
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4474
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4706)
                                                                                                                                                                                    v4)))
                                                                                                                                                                           erased in
                                                                                                                                                                 coe
                                                                                                                                                                   (case coe
                                                                                                                                                                           v36 of
                                                                                                                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v37
                                                                                                                                                                        -> coe
                                                                                                                                                                             ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 .patternInTele0 \8594\n   (.TransactionStructure.tokenAlgebra txs\n    Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.\8804\7511\n    .Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.inject\n    (.TransactionStructure.tokenAlgebra txs)\n    ((addNat HasAdd.+ 160)\n     (Ledger.Dijkstra.Specification.Utxo.utxoEntrySize txs abs\n      (.proj\8322 .patternInTele0))\n     *\n     .Ledger.Dijkstra.Specification.PParams.PParams.coinsPerUTxOByte\n     (.Ledger.Dijkstra.Specification.PParams.HasPParams.PParamsOf\n      (Ledger.Dijkstra.Specification.Utxo.HasPParams-UTxOEnv txs abs)\n      \915)))\n   (TransactionStructure.txOutToValue txs (.proj\8322 .patternInTele0)))\n\8739\n.TransactionStructure.HasTxOuts.TxOutsOf\n(TransactionStructure.HasTxOuts-Tx txs) txTop\n\8739"
                                                                                                                                                                              ::
                                                                                                                                                                              Data.Text.Text)
                                                                                                                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v37
                                                                                                                                                                        -> let v38
                                                                                                                                                                                 = coe
                                                                                                                                                                                     MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                                        (coe
                                                                                                                                                                                           (\ v38 ->
                                                                                                                                                                                              coe
                                                                                                                                                                                                MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_serializedSize_3300
                                                                                                                                                                                                   v1
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4724
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            v38))))
                                                                                                                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_420
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3278
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v2)))))
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4474
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4706)
                                                                                                                                                                                              v4)))
                                                                                                                                                                                     erased in
                                                                                                                                                                           coe
                                                                                                                                                                             (case coe
                                                                                                                                                                                     v38 of
                                                                                                                                                                                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v39
                                                                                                                                                                                  -> coe
                                                                                                                                                                                       ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 .patternInTele0 \8594\n   (\8469-hasPreorder HasPreorder.\8804\n    .AbstractFunctions.serializedSize abs\n    (TransactionStructure.txOutToValue txs (.proj\8322 .patternInTele0)))\n   (.Ledger.Dijkstra.Specification.PParams.PParams.maxValSize\n    (.Ledger.Dijkstra.Specification.PParams.HasPParams.PParamsOf\n     (Ledger.Dijkstra.Specification.Utxo.HasPParams-UTxOEnv txs abs)\n     \915)))\n\8739\n.TransactionStructure.HasTxOuts.TxOutsOf\n(TransactionStructure.HasTxOuts-Tx txs) txTop\n\8739"
                                                                                                                                                                                        ::
                                                                                                                                                                                        Data.Text.Text)
                                                                                                                                                                                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v39
                                                                                                                                                                                  -> let v40
                                                                                                                                                                                           = coe
                                                                                                                                                                                               MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     (\ v40 ->
                                                                                                                                                                                                        coe
                                                                                                                                                                                                          MAlonzo.Code.Class.Decidable.WithoutK.du_Dec'45''8846'All_42
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             (\ v41 ->
                                                                                                                                                                                                                MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             (\ v41 ->
                                                                                                                                                                                                                coe
                                                                                                                                                                                                                  MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                                                                                                                                                                  (MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                        v41))
                                                                                                                                                                                                                  (64 ::
                                                                                                                                                                                                                     Integer)))
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                v40))))
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     MAlonzo.Code.Class.IsSet.du_range_590
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                        (coe
                                                                                                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4474
                                                                                                                                                                                                        (coe
                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4706)
                                                                                                                                                                                                        v4)))
                                                                                                                                                                                               erased in
                                                                                                                                                                                     coe
                                                                                                                                                                                       (case coe
                                                                                                                                                                                               v40 of
                                                                                                                                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v41
                                                                                                                                                                                            -> coe
                                                                                                                                                                                                 ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 .patternInTele0 \8594\n   Sum.All (const \8868)\n   (\955 a\8321 \8594\n      (\8469-hasPreorder HasPreorder.\8804\n       .Ledger.Core.Specification.Address.HasAttrSize.AttrSizeOf\n       (Ledger.Core.Specification.Address.HasAttrSize-BootstrapAddr\n        (.Ledger.Core.Specification.Epoch.GlobalConstants.Network\n         (.TransactionStructure.globalConstants txs))\n        (.Ledger.Core.Specification.Crypto.isHashableSet.THash\n         (.Ledger.Core.Specification.Crypto.CryptoStructure.khs\n          (.TransactionStructure.cryptoStructure txs)))\n        (.Ledger.Core.Specification.Crypto.CryptoStructure.ScriptHash\n         (.TransactionStructure.cryptoStructure txs)))\n       a\8321)\n      64)\n   (.proj\8321 .patternInTele0))\n(Class.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.TransactionStructure.HasTxOuts.TxOutsOf\n  (TransactionStructure.HasTxOuts-Tx txs) txTop))"
                                                                                                                                                                                                  ::
                                                                                                                                                                                                  Data.Text.Text)
                                                                                                                                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v41
                                                                                                                                                                                            -> let v42
                                                                                                                                                                                                     = coe
                                                                                                                                                                                                         MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               (\ v42 ->
                                                                                                                                                                                                                  coe
                                                                                                                                                                                                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             v0)))
                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_258
                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             v42)))
                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             v0)))))
                                                                                                                                                                                                            (coe
                                                                                                                                                                                                               MAlonzo.Code.Class.IsSet.du_range_590
                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                  MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4474
                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4706)
                                                                                                                                                                                                                  v4)))
                                                                                                                                                                                                         erased in
                                                                                                                                                                                               coe
                                                                                                                                                                                                 (case coe
                                                                                                                                                                                                         v42 of
                                                                                                                                                                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v43
                                                                                                                                                                                                      -> coe
                                                                                                                                                                                                           ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 .patternInTele0 \8594\n   Ledger.Core.Specification.Address.netId\n   (.Ledger.Core.Specification.Epoch.GlobalConstants.Network\n    (.TransactionStructure.globalConstants txs))\n   (.Ledger.Core.Specification.Crypto.isHashableSet.THash\n    (.Ledger.Core.Specification.Crypto.CryptoStructure.khs\n     (.TransactionStructure.cryptoStructure txs)))\n   (.Ledger.Core.Specification.Crypto.CryptoStructure.ScriptHash\n    (.TransactionStructure.cryptoStructure txs))\n   (.proj\8321 .patternInTele0)\n   \8801\n   .Ledger.Core.Specification.Epoch.GlobalConstants.NetworkId\n   (.TransactionStructure.globalConstants txs))\n(Class.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.TransactionStructure.HasTxOuts.TxOutsOf\n  (TransactionStructure.HasTxOuts-Tx txs) txTop))"
                                                                                                                                                                                                            ::
                                                                                                                                                                                                            Data.Text.Text)
                                                                                                                                                                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v43
                                                                                                                                                                                                      -> let v44
                                                                                                                                                                                                               = coe
                                                                                                                                                                                                                   MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3976
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               v4)))
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  v0))))
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               v0))))
                                                                                                                                                                                                                   erased in
                                                                                                                                                                                                         coe
                                                                                                                                                                                                           (case coe
                                                                                                                                                                                                                   v44 of
                                                                                                                                                                                                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v45
                                                                                                                                                                                                                -> coe
                                                                                                                                                                                                                     ("\172\n(.Ledger.Core.Specification.Address.HasMaybeNetworkId.MaybeNetworkIdOf\n (TransactionStructure.HasMaybeNetworkId-Tx txs) txTop\n ~\n just\n (.Ledger.Core.Specification.Epoch.GlobalConstants.NetworkId\n  (.TransactionStructure.globalConstants txs)))"
                                                                                                                                                                                                                      ::
                                                                                                                                                                                                                      Data.Text.Text)
                                                                                                                                                                                                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v45
                                                                                                                                                                                                                -> coe
                                                                                                                                                                                                                     ("\172\n(.TransactionStructure.HasCurrentTreasury.CurrentTreasuryOf\n (TransactionStructure.HasCurrentTreasury-Tx txs) txTop\n ~\n just\n (.HasTreasury.TreasuryOf\n  (Ledger.Dijkstra.Specification.Utxo.HasTreasury-UTxOEnv txs abs)\n  \915))"
                                                                                                                                                                                                                      ::
                                                                                                                                                                                                                      Data.Text.Text)
                                                                                                                                                                                                              _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                              _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                  _ -> MAlonzo.RTE.mazUnreachableError)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                              _ -> MAlonzo.RTE.mazUnreachableError)
                                    _ -> MAlonzo.RTE.mazUnreachableError)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v7
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof
d_computeProof_3186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3186 v0 v1 v2 v3 v4
  = coe
      d_computeProof'45'aux_3134 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_UTXO'45'premises_3852
               (coe v0) (coe v1) (coe v4) (coe v2) (coe v3))))
      (coe du_computeProof_3072 (coe v0) (coe v1) (coe v2) (coe v4))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.completeness
d_completeness_3190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__3822 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3190 = erased
