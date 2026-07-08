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

module MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2598 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.BBodyEnv
d_BBodyEnv_2602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3094 ->
  ()
d_BBodyEnv_2602 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.BBodyState
d_BBodyState_2604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3094 ->
  ()
d_BBodyState_2604 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block
d_Block_2614 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.bBodyHash
d_bBodyHash_2644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  AgdaAny
d_bBodyHash_2644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_2990
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.bBodySize
d_bBodySize_2646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  Integer
d_bBodySize_2646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_2988
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.bheader
d_bheader_2648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_2958
d_bheader_2648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_2984
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.ts
d_ts_2650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3648]
d_ts_2650 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_2986
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2652 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.≡-bBodySize
d_'8801''45'bBodySize_2654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2654 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Computational-LEDGER
d_Computational'45'LEDGER_2744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3094 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_2744 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_Computational'45'LEDGER_4080
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.completeness
d_completeness_2994 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2994 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.computeProof
d_computeProof_3000 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3000 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.BBODY-computeProof
d_BBODY'45'computeProof_3020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3094 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_BBODY'45'computeProof_3020 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> let v7
                 = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_472
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                              (coe v0)))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_392
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))))
                        (coe
                           MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_456
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3054
                              (coe v0))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_2986
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
                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_Computational'45'LEDGER_4080
                                              (coe v0) (coe v1))
                                           (coe
                                              MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_728)
                                           (coe
                                              MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732))
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                           (coe
                                              MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                                              (coe
                                                 MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                                                 (coe
                                                    MAlonzo.Code.Data.List.Base.du_length_268
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe
                                                          MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                   (coe
                                                                      (MAlonzo.RTE.QName
                                                                         (3650 :: Integer)
                                                                         (2632180534421049758 ::
                                                                            Integer)
                                                                         "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                                                         (MAlonzo.RTE.Fixity
                                                                            MAlonzo.RTE.NonAssoc
                                                                            MAlonzo.RTE.Unrelated)))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                (coe ("r" :: Data.Text.Text))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                   (coe
                                                                      (MAlonzo.RTE.QName
                                                                         (864 :: Integer)
                                                                         (2632180534421049758 ::
                                                                            Integer)
                                                                         "_.Slot"
                                                                         (MAlonzo.RTE.Fixity
                                                                            MAlonzo.RTE.NonAssoc
                                                                            MAlonzo.RTE.Unrelated)))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                          (coe
                                                             MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                      (coe
                                                                         (MAlonzo.RTE.QName
                                                                            (3650 :: Integer)
                                                                            (2632180534421049758 ::
                                                                               Integer)
                                                                            "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                                                            (MAlonzo.RTE.Fixity
                                                                               MAlonzo.RTE.NonAssoc
                                                                               MAlonzo.RTE.Unrelated)))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                   (coe ("r" :: Data.Text.Text))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                      (coe
                                                                         (MAlonzo.RTE.QName
                                                                            (10 :: Integer)
                                                                            (15412666033012224255 ::
                                                                               Integer)
                                                                            "Agda.Builtin.Maybe.Maybe"
                                                                            (MAlonzo.RTE.Fixity
                                                                               MAlonzo.RTE.NonAssoc
                                                                               MAlonzo.RTE.Unrelated)))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                               (coe
                                                                                  (MAlonzo.RTE.QName
                                                                                     (20 :: Integer)
                                                                                     (10880583612240331187 ::
                                                                                        Integer)
                                                                                     "Agda.Primitive.lzero"
                                                                                     (MAlonzo.RTE.Fixity
                                                                                        MAlonzo.RTE.NonAssoc
                                                                                        MAlonzo.RTE.Unrelated)))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                  (coe
                                                                                     (MAlonzo.RTE.QName
                                                                                        (808 ::
                                                                                           Integer)
                                                                                        (2632180534421049758 ::
                                                                                           Integer)
                                                                                        "_.ScriptHash"
                                                                                        (MAlonzo.RTE.Fixity
                                                                                           MAlonzo.RTE.NonAssoc
                                                                                           MAlonzo.RTE.Unrelated)))
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                             (coe
                                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                         (coe
                                                                            (MAlonzo.RTE.QName
                                                                               (3650 :: Integer)
                                                                               (2632180534421049758 ::
                                                                                  Integer)
                                                                               "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                                                               (MAlonzo.RTE.Fixity
                                                                                  MAlonzo.RTE.NonAssoc
                                                                                  MAlonzo.RTE.Unrelated)))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                      (coe ("r" :: Data.Text.Text))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                         (coe
                                                                            (MAlonzo.RTE.QName
                                                                               (718 :: Integer)
                                                                               (2632180534421049758 ::
                                                                                  Integer)
                                                                               "_.PParams"
                                                                               (MAlonzo.RTE.Fixity
                                                                                  MAlonzo.RTE.NonAssoc
                                                                                  MAlonzo.RTE.Unrelated)))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                (coe
                                                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                            (coe
                                                                               (MAlonzo.RTE.QName
                                                                                  (3650 :: Integer)
                                                                                  (2632180534421049758 ::
                                                                                     Integer)
                                                                                  "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                                                                  (MAlonzo.RTE.Fixity
                                                                                     MAlonzo.RTE.NonAssoc
                                                                                     MAlonzo.RTE.Unrelated)))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                         (coe
                                                                            ("r" :: Data.Text.Text))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                            (coe
                                                                               (MAlonzo.RTE.QName
                                                                                  (2614 :: Integer)
                                                                                  (2632180534421049758 ::
                                                                                     Integer)
                                                                                  "Ledger.Dijkstra.Specification.Ledger._.EnactState"
                                                                                  (MAlonzo.RTE.Fixity
                                                                                     MAlonzo.RTE.NonAssoc
                                                                                     MAlonzo.RTE.Unrelated)))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                   (coe
                                                                      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                               (coe
                                                                                  (MAlonzo.RTE.QName
                                                                                     (3650 ::
                                                                                        Integer)
                                                                                     (2632180534421049758 ::
                                                                                        Integer)
                                                                                     "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                                                                     (MAlonzo.RTE.Fixity
                                                                                        MAlonzo.RTE.NonAssoc
                                                                                        MAlonzo.RTE.Unrelated)))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                            (coe
                                                                               ("r"
                                                                                ::
                                                                                Data.Text.Text))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                               (coe
                                                                                  (MAlonzo.RTE.QName
                                                                                     (14 :: Integer)
                                                                                     (14798748958053396954 ::
                                                                                        Integer)
                                                                                     "Ledger.Prelude.Base.Treasury"
                                                                                     (MAlonzo.RTE.Fixity
                                                                                        MAlonzo.RTE.NonAssoc
                                                                                        MAlonzo.RTE.Unrelated)))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3672)))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_2950
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_2964
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_2984
                                                       (coe v4))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1252)
                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1244
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v2))))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v2))))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             (coe v2))))))))
                                        v5
                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_2986
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
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_incrBlocks_3002
                                                          (coe v0)
                                                          (coe
                                                             MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                             (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                      (coe v0))))
                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_2946
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_2964
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_2984
                                                                      (coe v4)))))
                                                          (coe v6)))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_BBODY'45'Block'45'Body_3034
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
                                    ("Block ExUnits constraint failed: total tx ExUnits "
                                     ::
                                     Data.Text.Text)
                                    (coe
                                       MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                       (coe
                                          MAlonzo.Code.Class.Show.Core.d_show_16
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_478
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_456
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3054
                                                (coe v0))
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_2986
                                                (coe v4))))
                                       (coe
                                          MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                          (" exceeds maxBlockExUnits " :: Data.Text.Text)
                                          (coe
                                             MAlonzo.Code.Class.Show.Core.d_show_16
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_478
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                      (coe v0))))
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_392
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v2))))))))))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.BBODY-completeness
d_BBODY'45'completeness_3064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3094 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_2970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T__'8866'_'8640''10631'_'44'BBODY'10632'__3008 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_BBODY'45'completeness_3064 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.Computational-BBODY
d_Computational'45'BBODY_3122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3094 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'BBODY_3122 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_BBODY'45'computeProof_3020 (coe v0) (coe v1))
