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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Hashable-Script
d_Hashable'45'Script_622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
         (coe v0))
-- _.PlutusV1
d_PlutusV1_734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV1_734 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_482
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe v1)))
-- _.PlutusV2
d_PlutusV2_736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV2_736 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_484
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe v1)))
-- _.PlutusV3
d_PlutusV3_738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV3_738 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_486
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe v1)))
-- _.PlutusV4
d_PlutusV4_740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_PlutusV4_740 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe v1)))
-- _.SubLevelTx
d_SubLevelTx_874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_874 = erased
-- _.TopLevelTx
d_TopLevelTx_894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_894 = erased
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._._⊢_⇀⦇_,SUBUTXOW⦈_
d__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__2610 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2612 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv
d_SubUTxOEnv_2798 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv
d_UTxOEnv_2810 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOState
d_UTxOState_2814 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.accountBalances
d_accountBalances_2924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3074 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_accountBalances_2924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_accountBalances_3102
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.allScripts
d_allScripts_2926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3074 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_2926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3100
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.isTopLevelValid
d_isTopLevelValid_2928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3074 ->
  Bool
d_isTopLevelValid_2928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_isTopLevelValid_3098
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.pparams
d_pparams_2930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_2930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3092
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.slot
d_slot_2932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3074 ->
  AgdaAny
d_slot_2932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3090
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.treasury
d_treasury_2934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3074 ->
  Integer
d_treasury_2934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3094
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.utxo₀
d_utxo'8320'_2936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3074 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_2936 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3096
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.accountBalances
d_accountBalances_2940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3042 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_accountBalances_2940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_accountBalances_3070
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.allScripts
d_allScripts_2942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3042 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_2942 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3068
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.depositsChange
d_depositsChange_2944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3042 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_DepositsChange_3030
d_depositsChange_2944 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_depositsChange_3066
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.pparams
d_pparams_2946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3042 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_2946 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3060
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.slot
d_slot_2948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3042 ->
  AgdaAny
d_slot_2948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3058
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.treasury
d_treasury_2950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3042 ->
  Integer
d_treasury_2950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3062
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.utxo₀
d_utxo'8320'_2952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3042 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_2952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3064
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOState.donations
d_donations_2956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3106 ->
  Integer
d_donations_2956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3118
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOState.fees
d_fees_2958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3106 ->
  Integer
d_fees_2958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3116
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOState.utxo
d_utxo_2960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3106 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3114
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational.Computational-SUBUTXOW
d_Computational'45'SUBUTXOW_2980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3056 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'SUBUTXOW_2980 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_3052 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.computeProof-aux
d_computeProof'45'aux_3020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3056 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3622 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof'45'aux_3020 v0 v1 v2 v3 v4 v5
  = case coe v5 of
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
                                                                              -> case coe v24 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                     -> case coe
                                                                                               v26 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                            -> case coe
                                                                                                      v28 of
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                   -> coe
                                                                                                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.ComputationalRelation.du_Functor'45'ComputationResult_138)
                                                                                                        ()
                                                                                                        erased
                                                                                                        ()
                                                                                                        erased
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_74)
                                                                                                           (coe
                                                                                                              (\ v31
                                                                                                                 v32 ->
                                                                                                                 coe
                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.C_SUBUTXOW_3294
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
                                                                                                                                                          v30)
                                                                                                                                                       (coe
                                                                                                                                                          v32))))))))))))))))
                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.Properties.Computational.d_computeProof_2906
                                                                                                           (coe
                                                                                                              v0)
                                                                                                           (coe
                                                                                                              v1)
                                                                                                           (coe
                                                                                                              v2)
                                                                                                           (coe
                                                                                                              v3)
                                                                                                           (coe
                                                                                                              v4))
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
                       (coe ("SUBUTXOW" :: Data.Text.Text)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.computeProof
d_computeProof_3052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3056 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3622 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3052 v0 v1 v2 v3 v4
  = coe
      d_computeProof'45'aux_3020 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.d_SUBUTXOW'45'premises_3562
               (coe v0) (coe v1) (coe v4) (coe v2))))
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.completeness-aux
d_completeness'45'aux_3058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3056 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3622 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.T__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3162 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness'45'aux_3058 = erased
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.completeness
d_completeness_3098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3056 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3622 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.T__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3162 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3098 = erased
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational.Computational-UTXOW
d_Computational'45'UTXOW_3100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3056 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXOW_3100 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_3290 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.V1,V2,V3∩V4⊆∅
d_V1'44'V2'44'V3'8745'V4'8838''8709'_3134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3056 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3042 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3622 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_V1'44'V2'44'V3'8745'V4'8838''8709'_3134 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                          ~v6
  = du_V1'44'V2'44'V3'8745'V4'8838''8709'_3134
du_V1'44'V2'44'V3'8745'V4'8838''8709'_3134 ::
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_V1'44'V2'44'V3'8745'V4'8838''8709'_3134
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.DecV3
d_DecV3_3232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3056 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3042 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3622 ->
  ()
d_DecV3_3232 = erased
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.computeProof-aux
d_computeProof'45'aux_3238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3056 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3042 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3622 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof'45'aux_3238 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v5 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
        -> if coe v8
             then coe
                    seq (coe v9)
                    (case coe v6 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                         -> if coe v10
                              then case coe v11 of
                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
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
                                                                                                             -> coe
                                                                                                                  MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Interface.ComputationalRelation.du_Functor'45'ComputationResult_138)
                                                                                                                  ()
                                                                                                                  erased
                                                                                                                  ()
                                                                                                                  erased
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_74)
                                                                                                                     (coe
                                                                                                                        (\ v33
                                                                                                                           v34 ->
                                                                                                                           coe
                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.C_UTXOW'45'legacy_3556
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
                                                                                                                                                                 v32)
                                                                                                                                                              (coe
                                                                                                                                                                 v34)))))))))))))))
                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.Properties.Computational.d_computeProof_3092
                                                                                                                     (coe
                                                                                                                        v0)
                                                                                                                     (coe
                                                                                                                        v1)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                        (coe
                                                                                                                           v2)
                                                                                                                        (coe
                                                                                                                           v10))
                                                                                                                     (coe
                                                                                                                        v3)
                                                                                                                     (coe
                                                                                                                        v4))
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
                                     seq (coe v11)
                                     (coe
                                        MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                        (coe ("UTXOW" :: Data.Text.Text)))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             else coe
                    seq (coe v9)
                    (case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                         -> if coe v10
                              then case coe v11 of
                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
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
                                                                                                             -> coe
                                                                                                                  MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Interface.ComputationalRelation.du_Functor'45'ComputationResult_138)
                                                                                                                  ()
                                                                                                                  erased
                                                                                                                  ()
                                                                                                                  erased
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_74)
                                                                                                                     (coe
                                                                                                                        (\ v33
                                                                                                                           v34 ->
                                                                                                                           coe
                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.C_UTXOW'45'normal_3426
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
                                                                                                                                                                 v32)
                                                                                                                                                              (coe
                                                                                                                                                                 v34)))))))))))))))
                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.Properties.Computational.d_computeProof_3092
                                                                                                                     (coe
                                                                                                                        v0)
                                                                                                                     (coe
                                                                                                                        v1)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                        (coe
                                                                                                                           v2)
                                                                                                                        (coe
                                                                                                                           v8))
                                                                                                                     (coe
                                                                                                                        v3)
                                                                                                                     (coe
                                                                                                                        v4))
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
                                     seq (coe v11)
                                     (coe
                                        MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                        (coe ("UTXOW" :: Data.Text.Text)))
                       _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.computeProof
d_computeProof_3290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3056 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3042 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3622 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3290 v0 v1 v2 v3 v4
  = coe
      d_computeProof'45'aux_3238 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
            (coe
               MAlonzo.Code.Axiom.Set.d_any'63'_1666
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased erased
               (coe
                  MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72
                  (coe
                     (\ v5 ->
                        coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_466
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                   (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_516
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                   (coe v0)))
                             v5)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_fromList_456
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_482
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_484
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_486
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                               (coe v0))))
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
            (coe
               MAlonzo.Code.Axiom.Set.du_mapPartial_604
               (MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_674)
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                       (coe
                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased
                          (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                (coe v0)))
                          v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.d_toSet_526
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_mapPartial_604
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_map_426
                                (MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_credsNeeded_3264
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3064
                                      (coe v2))
                                   (coe v4))))))
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3068
                     (coe v2))))))
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.du_UTXOW'45'legacy'45'premises_3560
               (coe v0) (coe v4) (coe v2))))
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.du_UTXOW'45'normal'45'premises_3558
               (coe v0) (coe v4) (coe v2))))
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.completeness-aux
d_completeness'45'aux_3300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3056 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3042 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3622 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.T__'8866'_'8640''10631'_'44'UTXOW'10632'__3296 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness'45'aux_3300 = erased
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.completeness
d_completeness_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3056 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3042 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3622 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3106 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.T__'8866'_'8640''10631'_'44'UTXOW'10632'__3296 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3380 = erased
