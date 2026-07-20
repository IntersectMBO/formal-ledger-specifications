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
d__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__2622 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2624 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv
d_SubUTxOEnv_2800 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv
d_UTxOEnv_2812 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOState
d_UTxOState_2816 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.allScripts
d_allScripts_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3104 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_2910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3126
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.isTopLevelValid
d_isTopLevelValid_2912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3104 ->
  Bool
d_isTopLevelValid_2912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_isTopLevelValid_3128
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.pparams
d_pparams_2914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_2914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3120
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.slot
d_slot_2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3104 ->
  AgdaAny
d_slot_2916 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3118
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.treasury
d_treasury_2918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3104 ->
  Integer
d_treasury_2918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3122
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.SubUTxOEnv.utxo₀
d_utxo'8320'_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_2920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3124
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.allScripts
d_allScripts_2924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3072 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_2924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3098
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.legacyMode
d_legacyMode_2926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3072 ->
  Bool
d_legacyMode_2926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_legacyMode_3100
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.pools₀
d_pools'8320'_2928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3072 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools'8320'_2928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pools'8320'_3096
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.pparams
d_pparams_2930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3072 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_2930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3090
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.slot
d_slot_2932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3072 ->
  AgdaAny
d_slot_2932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3088
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.treasury
d_treasury_2934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3072 ->
  Integer
d_treasury_2934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3092
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOEnv.utxo₀
d_utxo'8320'_2936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3072 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_2936 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3094
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOState.donations
d_donations_2940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3132 ->
  Integer
d_donations_2940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3144
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOState.fees
d_fees_2942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3132 ->
  Integer
d_fees_2942 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3142
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.UTxOState.utxo
d_utxo_2944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3132 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2944 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3140
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational.Computational-SUBUTXOW
d_Computational'45'SUBUTXOW_2964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3098 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'SUBUTXOW_2964 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_3036 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.computeProof-aux
d_computeProof'45'aux_3004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3098 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof'45'aux_3004 v0 v1 v2 v3 v4 v5
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
                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.C_SUBUTXOW_3302
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
                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.Properties.Computational.d_computeProof_2916
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
d_computeProof_3036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3098 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3036 v0 v1 v2 v3 v4
  = coe
      d_computeProof'45'aux_3004 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.d_SUBUTXOW'45'premises_3590
               (coe v0) (coe v1) (coe v4) (coe v2))))
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.completeness-aux
d_completeness'45'aux_3042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3098 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.T__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3170 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness'45'aux_3042 = erased
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.completeness
d_completeness_3082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3098 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.T__'8866'_'8640''10631'_'44'SUBUTXOW'10632'__3170 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3082 = erased
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational.Computational-UTXOW
d_Computational'45'UTXOW_3084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3098 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXOW_3084 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_3200 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.computeProof-aux
d_computeProof'45'aux_3128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3098 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3072 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof'45'aux_3128 v0 v1 v2 v3 v4 v5 v6
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
                                                                                                                                   (\ v38
                                                                                                                                      v39 ->
                                                                                                                                      coe
                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.C_UTXOW'45'legacy_3584
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
                                                                                                                                                                                        v37)
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v39)))))))))))))))))))
                                                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.Properties.Computational.d_computeProof_3078
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
                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.C_UTXOW'45'normal_3444
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
                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.Properties.Computational.d_computeProof_3078
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
d_computeProof_3200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3098 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3072 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3200 v0 v1 v2 v3 v4
  = coe
      d_computeProof'45'aux_3128 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.d_UTXOW'45'legacy'45'premises_3588
               (coe v0) (coe v1) (coe v4) (coe v2))))
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.d_UTXOW'45'normal'45'premises_3586
               (coe v0) (coe v1) (coe v4) (coe v2))))
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.completeness-aux
d_completeness'45'aux_3208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3098 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3072 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.T__'8866'_'8640''10631'_'44'UTXOW'10632'__3304 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness'45'aux_3208 = erased
-- Ledger.Dijkstra.Specification.Utxow.Properties.Computational._.go.completeness
d_completeness_3296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3098 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3072 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3132 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxow.T__'8866'_'8640''10631'_'44'UTXOW'10632'__3304 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3296 = erased
