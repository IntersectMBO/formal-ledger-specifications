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
d__'8866'_'8640''10631'_'44'BBODY'10632'__2002 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.BBodyEnv
d_BBodyEnv_2006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  ()
d_BBodyEnv_2006 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.BBodyState
d_BBodyState_2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  ()
d_BBodyState_2008 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block
d_Block_2018 a0 a1 = ()
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.bBodyHash
d_bBodyHash_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  AgdaAny
d_bBodyHash_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodyHash_2342
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.bBodySize
d_bBodySize_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  Integer
d_bBodySize_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bBodySize_2340
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.bheader
d_bheader_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_BHeader_2310
d_bheader_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2336
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.ts
d_ts_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566]
d_ts_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2338
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2056 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Block.≡-bBodySize
d_'8801''45'bBodySize_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2058 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.Computational-LEDGER
d_Computational'45'LEDGER_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_2148 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.Properties.Computational.d_Computational'45'LEDGER_2938
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.completeness
d_completeness_2346 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2346 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational._.computeProof
d_computeProof_2352 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2352 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Specification.BlockBody.Properties.Computational.BBODY-computeProof
d_BBODY'45'computeProof_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_BBODY'45'computeProof_2372 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> let v7
                 = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_240
                        (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1996
                              (coe v0)))
                        (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_362
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1186
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))))
                        (coe
                           MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                           (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1996
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_totExUnits_2440
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2338
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
                                              MAlonzo.Code.Ledger.Conway.Specification.Ledger.Properties.Computational.d_Computational'45'LEDGER_2938
                                              (coe v0) (coe v1))
                                           (coe
                                              MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
                                           (coe
                                              MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732))
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2978)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_slot_2302
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2316
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2336
                                                       (coe v4))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1084)
                                                    (MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1182
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v2))))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_440
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1212)
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
                                        (MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2338
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
                                                          MAlonzo.Code.Ledger.Conway.Specification.BlockBody.du_incrBlocks_2354
                                                          (coe v0)
                                                          (coe
                                                             MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                             (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                                      (coe v0))))
                                                             (MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bvkcold_2298
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bhbody_2316
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_bheader_2336
                                                                      (coe v4)))))
                                                          (coe v6)))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.BlockBody.C_BBODY'45'Block'45'Body_2386
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
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1996
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                                             (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1996
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_totExUnits_2440
                                                (coe v0))
                                             (MAlonzo.Code.Ledger.Conway.Specification.BlockBody.d_ts_2338
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1996
                                                         (coe v0))))
                                                (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_362
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1186
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v2))))))
                                             (")" :: Data.Text.Text))))))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.BlockBody.Properties.Computational.BBODY-completeness
d_BBODY'45'completeness_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T_Block_2322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.BlockBody.T__'8866'_'8640''10631'_'44'BBODY'10632'__2360 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_BBODY'45'completeness_2416 = erased
-- Ledger.Conway.Specification.BlockBody.Properties.Computational.Computational-BBODY
d_Computational'45'BBODY_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'BBODY_2474 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_BBODY'45'computeProof_2372 (coe v0) (coe v1))
