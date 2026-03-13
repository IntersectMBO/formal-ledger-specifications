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

module MAlonzo.Code.Ledger.Conway.Specification.BlockBody.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.BlockBody
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger.Properties.Computational
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Ledger.Conway.Specification.BlockBody.Properties.Computational._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__1984 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.BBodyEnv
d_BBodyEnv_1988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  ()
d_BBodyEnv_1988 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.BBodyState
d_BBodyState_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  ()
d_BBodyState_1990 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block
d_Block_2000 a0 a1 = ()
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.bBodyHash
d_bBodyHash_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  AgdaAny
d_bBodyHash_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2324
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.bBodySize
d_bBodySize_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  Integer
d_bBodySize_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2322
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.bheader
d_bheader_2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2292
d_bheader_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2318
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.ts
d_ts_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530]
d_ts_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2320
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2038 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.≡-bBodySize
d_'8801''45'bBodySize_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2040 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Computational-LEDGER
d_Computational'45'LEDGER_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_2130 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.Properties.Computational.d_Computational'45'LEDGER_2926
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.completeness
d_completeness_2328 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2328 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.computeProof
d_computeProof_2334 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2334 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational.BBODY-computeProof
d_BBODY'45'computeProof_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_BBODY'45'computeProof_2354 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> let v7
                 = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_240
                        (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1978
                              (coe v0)))
                        (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_352
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1168
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))))
                        (coe
                           MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                           (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1978
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_totExUnits_2422
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2320
                              (coe v4)))) in
           coe
             (case coe v7 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                  -> if coe v8
                       then case coe v9 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v10
                                -> coe
                                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                     (coe
                                        MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                     () erased () erased
                                     (coe
                                        MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                        (coe
                                           MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_776
                                           (coe
                                              MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_740)
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Ledger.Properties.Computational.d_Computational'45'LEDGER_2926
                                              (coe v0) (coe v1))
                                           (coe
                                              MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
                                           (coe
                                              MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732))
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2966)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2284
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2298
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2318
                                                       (coe v4))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1066)
                                                    (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1164
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v2))))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_430
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1194)
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v2)))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Prelude.Base.d_TreasuryOf_88
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_184)
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             (coe v2))))))))
                                        v5
                                        (MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2320
                                           (coe v4)))
                                     (\ v11 ->
                                        case coe v11 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                            -> coe
                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe v12)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2336
                                                          (coe v0)
                                                          (coe
                                                             MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                             (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1358
                                                                      (coe v0))))
                                                             (MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2280
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2298
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2318
                                                                      (coe v4)))))
                                                          (coe v6)))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.BlockBody.C_BBODY'45'Block'45'Body_2368
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          erased
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             erased
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe v10) (coe v13))))))
                                          _ -> MAlonzo.RTE.mazUnreachableError)
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v9)
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                 (coe
                                    MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                    ("\172 (" :: Data.Text.Text)
                                    (coe
                                       MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                       (coe
                                          MAlonzo.Code.Class.Show.Core.d_show_16
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_246
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1978
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                                             (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1978
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_totExUnits_2422
                                                (coe v0))
                                             (MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2320
                                                (coe v4))))
                                       (coe
                                          MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                          (", " :: Data.Text.Text)
                                          (coe
                                             MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                             (coe
                                                MAlonzo.Code.Class.Show.Core.d_show_16
                                                (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_246
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1978
                                                         (coe v0))))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_352
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1168
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v2))))))
                                             (")" :: Data.Text.Text))))))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Properties.Computational.BBODY-completeness
d_BBODY'45'completeness_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2304 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T__'8866'_'8640''10631'_'44'BBODY'10632'__2342 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_BBODY'45'completeness_2398 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational.Computational-BBODY
d_Computational'45'BBODY_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'BBODY_2456 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_BBODY'45'computeProof_2354 (coe v0) (coe v1))
