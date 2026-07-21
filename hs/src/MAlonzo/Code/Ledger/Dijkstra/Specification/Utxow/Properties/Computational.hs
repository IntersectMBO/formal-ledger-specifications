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
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.SubLevelTx
d_SubLevelTx_882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_882 = erased
-- _.TopLevelTx
d_TopLevelTx_902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_902 = erased
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._._⊢_⇀⦇_,SUBUTXOW⦈_
d__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__2624 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2626 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv
d_SubUTxOEnv_2810 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv
d_UTxOEnv_2822 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOState
d_UTxOState_2826 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.allScripts
d_allScripts_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3108 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_2920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3130
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.isTopLevelValid
d_isTopLevelValid_2922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3108 ->
  Bool
d_isTopLevelValid_2922 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_isTopLevelValid_3132
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.pparams
d_pparams_2924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3108 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_2924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3124
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.slot
d_slot_2926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3108 ->
  AgdaAny
d_slot_2926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3122
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.treasury
d_treasury_2928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3108 ->
  Integer
d_treasury_2928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3126
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.utxo₀
d_utxo'8320'_2930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3108 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_2930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3128
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.allScripts
d_allScripts_2934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3076 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_2934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3102
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.legacyMode
d_legacyMode_2936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3076 ->
  Bool
d_legacyMode_2936 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_legacyMode_3104
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.pools₀
d_pools'8320'_2938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools'8320'_2938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pools'8320'_3100
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.pparams
d_pparams_2940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3076 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_2940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3094
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.slot
d_slot_2942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3076 ->
  AgdaAny
d_slot_2942 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3092
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.treasury
d_treasury_2944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3076 ->
  Integer
d_treasury_2944 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3096
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.utxo₀
d_utxo'8320'_2946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_2946 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3098
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOState.donations
d_donations_2950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3136 ->
  Integer
d_donations_2950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3148
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOState.fees
d_fees_2952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3136 ->
  Integer
d_fees_2952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3146
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOState.utxo
d_utxo_2954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3136 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2954 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3144
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational.Computational-SUBUTXOW
d_Computational'45'SUBUTXOW_2974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'SUBUTXOW_2974 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_3046 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.computeProof-aux
d_computeProof'45'aux_3014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3108 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3136 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3656 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof'45'aux_3014 v0 v1 v2 v3 v4 v5
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
                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.C_SUBUTXOW_3792
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
                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.Properties.Computational.d_computeProof_2918
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
d_computeProof_3046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3108 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3136 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3656 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3046 v0 v1 v2 v3 v4
  = coe
      d_computeProof'45'aux_3014 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.d_SUBUTXOW'45'premises_4082
               (coe v0) (coe v1) (coe v4) (coe v2))))
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.completeness-aux
d_completeness'45'aux_3052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3108 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3136 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3656 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3136 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.T__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3660 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness'45'aux_3052 = erased
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.completeness
d_completeness_3092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3108 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3136 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3656 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3136 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.T__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3660 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3092 = erased
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational.Computational-UTXOW
d_Computational'45'UTXOW_3094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXOW_3094 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_3212 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.computeProof-aux
d_computeProof'45'aux_3138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3076 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3136 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3656 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof'45'aux_3138 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
        -> if coe v7
             then case coe v8 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
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
                                                                              -> case coe v25 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                     -> case coe
                                                                                               v27 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v28 v29
                                                                                            -> case coe
                                                                                                      v29 of
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v30 v31
                                                                                                   -> case coe
                                                                                                             v31 of
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v32 v33
                                                                                                          -> case coe
                                                                                                                    v33 of
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v34 v35
                                                                                                                 -> case coe
                                                                                                                           v35 of
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v36 v37
                                                                                                                        -> case coe
                                                                                                                                  v37 of
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v38 v39
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
                                                                                                                                          (\ v40
                                                                                                                                             v41 ->
                                                                                                                                             coe
                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.C_UTXOW'45'legacy_4076
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                  (coe
                                                                                                                                                     v10)
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                     (coe
                                                                                                                                                        v12)
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                        (coe
                                                                                                                                                           v14)
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                           (coe
                                                                                                                                                              v16)
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                              (coe
                                                                                                                                                                 v18)
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                 (coe
                                                                                                                                                                    v20)
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                    (coe
                                                                                                                                                                       v22)
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                       (coe
                                                                                                                                                                          v24)
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                          (coe
                                                                                                                                                                             v26)
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                             (coe
                                                                                                                                                                                v28)
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                (coe
                                                                                                                                                                                   v30)
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                   (coe
                                                                                                                                                                                      v32)
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v34)
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v36)
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v38)
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v39)
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v41))))))))))))))))))))
                                                                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.Properties.Computational.d_computeProof_3080
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
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v8)
                    (case coe v6 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                         -> if coe v9
                              then case coe v10 of
                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
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
                                                                                               -> case coe
                                                                                                         v27 of
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v28 v29
                                                                                                      -> case coe
                                                                                                                v29 of
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v30 v31
                                                                                                             -> case coe
                                                                                                                       v31 of
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v32 v33
                                                                                                                    -> case coe
                                                                                                                              v33 of
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v34 v35
                                                                                                                           -> case coe
                                                                                                                                     v35 of
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v36 v37
                                                                                                                                  -> case coe
                                                                                                                                            v37 of
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v38 v39
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
                                                                                                                                                    (\ v40
                                                                                                                                                       v41 ->
                                                                                                                                                       coe
                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.C_UTXOW'45'normal_3934
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                            (coe
                                                                                                                                                               v12)
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                               (coe
                                                                                                                                                                  v14)
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                  (coe
                                                                                                                                                                     v16)
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                     (coe
                                                                                                                                                                        v18)
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                        (coe
                                                                                                                                                                           v20)
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                           (coe
                                                                                                                                                                              v22)
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                              (coe
                                                                                                                                                                                 v24)
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v26)
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                    (coe
                                                                                                                                                                                       v28)
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                       (coe
                                                                                                                                                                                          v30)
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                          (coe
                                                                                                                                                                                             v32)
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v34)
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v36)
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v38)
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v39)
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v41)))))))))))))))))))
                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.Properties.Computational.d_computeProof_3080
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
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              else coe
                                     seq (coe v10)
                                     (coe
                                        MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                        (coe ("UTXOW" :: Data.Text.Text)))
                       _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.computeProof
d_computeProof_3212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3076 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3136 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3656 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3212 v0 v1 v2 v3 v4
  = coe
      d_computeProof'45'aux_3138 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.d_UTXOW'45'legacy'45'premises_4080
               (coe v0) (coe v1) (coe v4) (coe v2))))
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.d_UTXOW'45'normal'45'premises_4078
               (coe v0) (coe v1) (coe v4) (coe v2))))
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.completeness-aux
d_completeness'45'aux_3220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3076 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3136 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3656 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3136 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.T__'8866'_'8640''10631'_'44'UTXOW'10632'__3794 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness'45'aux_3220 = erased
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.completeness
d_completeness_3310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3100 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3076 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3136 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3656 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3136 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.T__'8866'_'8640''10631'_'44'UTXOW'10632'__3794 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3310 = erased
