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
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Bool.Properties
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
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios
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
d__'8866'_'8640''10631'_'44'BBODY'10632'__2676 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.BBodyEnv
d_BBodyEnv_2682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_BBodyEnv_2682 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.BBodyState
d_BBodyState_2684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  ()
d_BBodyState_2684 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block
d_Block_2694 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.bBodyHash
d_bBodyHash_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  AgdaAny
d_bBodyHash_2736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_3106
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.bBodySize
d_bBodySize_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Integer
d_bBodySize_2738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_3104
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.bHeaderHash
d_bHeaderHash_2740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  AgdaAny
d_bHeaderHash_2740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3098
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.bheader
d_bheader_2742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3066
d_bheader_2742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.ebCert
d_ebCert_2744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644
d_ebCert_2744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3102
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.ts
d_ts_2746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3842]
d_ts_2746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3100
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2748 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.≡-bBodySize
d_'8801''45'bBodySize_2750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2750 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Computational-LEDGER
d_Computational'45'LEDGER_2840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_2840 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_Computational'45'LEDGER_4318
      (coe v0) (coe v1)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.EBCert
d_EBCert_2850 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.EBCert.sig
d_sig_2856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  AgdaAny
d_sig_2856 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1652
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.EBCert.signers
d_signers_2858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  [Integer]
d_signers_2858 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1650
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.completeness
d_completeness_3112 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3112 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.computeProof
d_computeProof_3118 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3118 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.validLeiosBlockFailure
d_validLeiosBlockFailure_3130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_validLeiosBlockFailure_3130 ~v0 ~v1 v2
  = du_validLeiosBlockFailure_3130 v2
du_validLeiosBlockFailure_3130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_validLeiosBlockFailure_3130 v0
  = coe
      du_go_3138
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiedEB_3062
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3102
         (coe v0))
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.go
d_go_3138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  Bool ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_go_3138 ~v0 ~v1 ~v2 v3 v4 = du_go_3138 v3 v4
du_go_3138 ::
  Bool ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1644 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_go_3138 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> if coe v0
             then coe
                    ("a block carrying an EB certificate carries transactions"
                     ::
                     Data.Text.Text)
             else coe
                    ("the block carries an EB certificate but certifiedEB is not set"
                     ::
                     Data.Text.Text)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             ("certifiedEB is set but the block carries no EB certificate"
              ::
              Data.Text.Text)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.BBODY-computeProof
d_BBODY'45'computeProof_3148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_BBODY'45'computeProof_3148 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> let v7
                 = MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3102
                     (coe v4) in
           coe
             (let v8
                    = MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3100
                        (coe v4) in
              coe
                (case coe v7 of
                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                     -> case coe v8 of
                          []
                            -> let v10
                                     = MAlonzo.Code.Data.Bool.Properties.d__'8799'__3196
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiedEB_3062
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
                                                  (coe v4))))
                                         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10) in
                               coe
                                 (case coe v10 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                      -> if coe v11
                                           then case coe v12 of
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v13
                                                    -> let v14
                                                             = coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe v13) erased in
                                                       coe
                                                         (let v15
                                                                = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_474
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_570
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2214
                                                                             (coe v0)))
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_414
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                   (coe v2)))))
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_458
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_570
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2214
                                                                                   (coe v0))))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3216
                                                                             (coe v0))
                                                                          v8)) in
                                                          coe
                                                            (case coe v15 of
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                 -> if coe v16
                                                                      then case coe v17 of
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                                                    () erased ()
                                                                                    erased
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_776
                                                                                          (coe
                                                                                             MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_740)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_Computational'45'LEDGER_4318
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                v1))
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
                                                                                                                        (3884 ::
                                                                                                                           Integer)
                                                                                                                        (2632180534421049758 ::
                                                                                                                           Integer)
                                                                                                                        "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                                                                                                        (MAlonzo.RTE.Fixity
                                                                                                                           MAlonzo.RTE.NonAssoc
                                                                                                                           MAlonzo.RTE.Unrelated)))
                                                                                                                  (coe
                                                                                                                     v8)))
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
                                                                                                                        (880 ::
                                                                                                                           Integer)
                                                                                                                        (2632180534421049758 ::
                                                                                                                           Integer)
                                                                                                                        "_.Slot"
                                                                                                                        (MAlonzo.RTE.Fixity
                                                                                                                           MAlonzo.RTE.NonAssoc
                                                                                                                           MAlonzo.RTE.Unrelated)))
                                                                                                                  (coe
                                                                                                                     v8)))))
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
                                                                                                                           (3884 ::
                                                                                                                              Integer)
                                                                                                                           (2632180534421049758 ::
                                                                                                                              Integer)
                                                                                                                           "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                                                                                                           (MAlonzo.RTE.Fixity
                                                                                                                              MAlonzo.RTE.NonAssoc
                                                                                                                              MAlonzo.RTE.Unrelated)))
                                                                                                                     (coe
                                                                                                                        v8)))
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
                                                                                                                           (10 ::
                                                                                                                              Integer)
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
                                                                                                                                    (20 ::
                                                                                                                                       Integer)
                                                                                                                                    (10880583612240331187 ::
                                                                                                                                       Integer)
                                                                                                                                    "Agda.Primitive.lzero"
                                                                                                                                    (MAlonzo.RTE.Fixity
                                                                                                                                       MAlonzo.RTE.NonAssoc
                                                                                                                                       MAlonzo.RTE.Unrelated)))
                                                                                                                              (coe
                                                                                                                                 v8)))
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
                                                                                                                                       (824 ::
                                                                                                                                          Integer)
                                                                                                                                       (2632180534421049758 ::
                                                                                                                                          Integer)
                                                                                                                                       "_.ScriptHash"
                                                                                                                                       (MAlonzo.RTE.Fixity
                                                                                                                                          MAlonzo.RTE.NonAssoc
                                                                                                                                          MAlonzo.RTE.Unrelated)))
                                                                                                                                 (coe
                                                                                                                                    v8)))
                                                                                                                           (coe
                                                                                                                              v8)))))))
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
                                                                                                                              (3884 ::
                                                                                                                                 Integer)
                                                                                                                              (2632180534421049758 ::
                                                                                                                                 Integer)
                                                                                                                              "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                                                                                                              (MAlonzo.RTE.Fixity
                                                                                                                                 MAlonzo.RTE.NonAssoc
                                                                                                                                 MAlonzo.RTE.Unrelated)))
                                                                                                                        (coe
                                                                                                                           v8)))
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
                                                                                                                              (736 ::
                                                                                                                                 Integer)
                                                                                                                              (2632180534421049758 ::
                                                                                                                                 Integer)
                                                                                                                              "_.PParams"
                                                                                                                              (MAlonzo.RTE.Fixity
                                                                                                                                 MAlonzo.RTE.NonAssoc
                                                                                                                                 MAlonzo.RTE.Unrelated)))
                                                                                                                        (coe
                                                                                                                           v8)))))
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
                                                                                                                                 (3884 ::
                                                                                                                                    Integer)
                                                                                                                                 (2632180534421049758 ::
                                                                                                                                    Integer)
                                                                                                                                 "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                                                                                                                 (MAlonzo.RTE.Fixity
                                                                                                                                    MAlonzo.RTE.NonAssoc
                                                                                                                                    MAlonzo.RTE.Unrelated)))
                                                                                                                           (coe
                                                                                                                              v8)))
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
                                                                                                                                 (2692 ::
                                                                                                                                    Integer)
                                                                                                                                 (2632180534421049758 ::
                                                                                                                                    Integer)
                                                                                                                                 "Ledger.Dijkstra.Specification.Ledger._.EnactState"
                                                                                                                                 (MAlonzo.RTE.Fixity
                                                                                                                                    MAlonzo.RTE.NonAssoc
                                                                                                                                    MAlonzo.RTE.Unrelated)))
                                                                                                                           (coe
                                                                                                                              v8)))))
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
                                                                                                                                    (3884 ::
                                                                                                                                       Integer)
                                                                                                                                    (2632180534421049758 ::
                                                                                                                                       Integer)
                                                                                                                                    "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                                                                                                                    (MAlonzo.RTE.Fixity
                                                                                                                                       MAlonzo.RTE.NonAssoc
                                                                                                                                       MAlonzo.RTE.Unrelated)))
                                                                                                                              (coe
                                                                                                                                 v8)))
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
                                                                                                                                    (24 ::
                                                                                                                                       Integer)
                                                                                                                                    (14798748958053396954 ::
                                                                                                                                       Integer)
                                                                                                                                    "Ledger.Prelude.Base.Treasury"
                                                                                                                                    (MAlonzo.RTE.Fixity
                                                                                                                                       MAlonzo.RTE.NonAssoc
                                                                                                                                       MAlonzo.RTE.Unrelated)))
                                                                                                                              (coe
                                                                                                                                 v8)))))
                                                                                                                  (coe
                                                                                                                     v8)))))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3906)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3054
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
                                                                                                      (coe
                                                                                                         v4))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1346)
                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1338
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v2))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                            (coe
                                                                                                               v2))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v2))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_202
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                            (coe
                                                                                                               v2))))))))
                                                                                       v5 v8)
                                                                                    (\ v19 ->
                                                                                       case coe
                                                                                              v19 of
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                                           -> coe
                                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                      (coe
                                                                                                         v20)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_incrBlocks_3118
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                                                            (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                     (coe
                                                                                                                        v0))))
                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3050
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
                                                                                                                     (coe
                                                                                                                        v4)))))
                                                                                                         (coe
                                                                                                            v6)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_BBODY'45'Block'45'Body_3206
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                         erased
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  v14)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                  (coe
                                                                                                                     v18)
                                                                                                                  (coe
                                                                                                                     v21)))))))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      else coe
                                                                             seq (coe v17)
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
                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_480
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_570
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2214
                                                                                                  (coe
                                                                                                     v0))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_458
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_570
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2214
                                                                                                     (coe
                                                                                                        v0))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3216
                                                                                               (coe
                                                                                                  v0))
                                                                                            v8))
                                                                                      (coe
                                                                                         MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                         (" exceeds maxBlockExUnits "
                                                                                          ::
                                                                                          Data.Text.Text)
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_480
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_570
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2214
                                                                                                     (coe
                                                                                                        v0))))
                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_414
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                        (coe
                                                                                                           v2))))))))))
                                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           else (let v13
                                                       = seq
                                                           (coe v12)
                                                           (coe
                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                              (coe v11)
                                                              (coe
                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                 coe
                                                   (case coe v13 of
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                                        -> if coe v14
                                                             then case coe v15 of
                                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v16
                                                                      -> let v17
                                                                               = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_474
                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_570
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2214
                                                                                            (coe
                                                                                               v0)))
                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_414
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                  (coe
                                                                                                     v2)))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_458
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_570
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2214
                                                                                                  (coe
                                                                                                     v0))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3216
                                                                                            (coe
                                                                                               v0))
                                                                                         v8)) in
                                                                         coe
                                                                           (case coe v17 of
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v18 v19
                                                                                -> if coe v18
                                                                                     then case coe
                                                                                                 v19 of
                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v20
                                                                                              -> coe
                                                                                                   MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_776
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_740)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_Computational'45'LEDGER_4318
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               v1))
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
                                                                                                                                       (3884 ::
                                                                                                                                          Integer)
                                                                                                                                       (2632180534421049758 ::
                                                                                                                                          Integer)
                                                                                                                                       "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                                                                                                                       (MAlonzo.RTE.Fixity
                                                                                                                                          MAlonzo.RTE.NonAssoc
                                                                                                                                          MAlonzo.RTE.Unrelated)))
                                                                                                                                 (coe
                                                                                                                                    v8)))
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
                                                                                                                                       (880 ::
                                                                                                                                          Integer)
                                                                                                                                       (2632180534421049758 ::
                                                                                                                                          Integer)
                                                                                                                                       "_.Slot"
                                                                                                                                       (MAlonzo.RTE.Fixity
                                                                                                                                          MAlonzo.RTE.NonAssoc
                                                                                                                                          MAlonzo.RTE.Unrelated)))
                                                                                                                                 (coe
                                                                                                                                    v8)))))
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
                                                                                                                                          (3884 ::
                                                                                                                                             Integer)
                                                                                                                                          (2632180534421049758 ::
                                                                                                                                             Integer)
                                                                                                                                          "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                                                                                                                          (MAlonzo.RTE.Fixity
                                                                                                                                             MAlonzo.RTE.NonAssoc
                                                                                                                                             MAlonzo.RTE.Unrelated)))
                                                                                                                                    (coe
                                                                                                                                       v8)))
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
                                                                                                                                          (10 ::
                                                                                                                                             Integer)
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
                                                                                                                                                   (20 ::
                                                                                                                                                      Integer)
                                                                                                                                                   (10880583612240331187 ::
                                                                                                                                                      Integer)
                                                                                                                                                   "Agda.Primitive.lzero"
                                                                                                                                                   (MAlonzo.RTE.Fixity
                                                                                                                                                      MAlonzo.RTE.NonAssoc
                                                                                                                                                      MAlonzo.RTE.Unrelated)))
                                                                                                                                             (coe
                                                                                                                                                v8)))
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
                                                                                                                                                      (824 ::
                                                                                                                                                         Integer)
                                                                                                                                                      (2632180534421049758 ::
                                                                                                                                                         Integer)
                                                                                                                                                      "_.ScriptHash"
                                                                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                                                                                (coe
                                                                                                                                                   v8)))
                                                                                                                                          (coe
                                                                                                                                             v8)))))))
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
                                                                                                                                             (3884 ::
                                                                                                                                                Integer)
                                                                                                                                             (2632180534421049758 ::
                                                                                                                                                Integer)
                                                                                                                                             "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                                                                                                                             (MAlonzo.RTE.Fixity
                                                                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                                                                MAlonzo.RTE.Unrelated)))
                                                                                                                                       (coe
                                                                                                                                          v8)))
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
                                                                                                                                             (736 ::
                                                                                                                                                Integer)
                                                                                                                                             (2632180534421049758 ::
                                                                                                                                                Integer)
                                                                                                                                             "_.PParams"
                                                                                                                                             (MAlonzo.RTE.Fixity
                                                                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                                                                MAlonzo.RTE.Unrelated)))
                                                                                                                                       (coe
                                                                                                                                          v8)))))
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
                                                                                                                                                (3884 ::
                                                                                                                                                   Integer)
                                                                                                                                                (2632180534421049758 ::
                                                                                                                                                   Integer)
                                                                                                                                                "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                                                                                                                                (MAlonzo.RTE.Fixity
                                                                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                                                                   MAlonzo.RTE.Unrelated)))
                                                                                                                                          (coe
                                                                                                                                             v8)))
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
                                                                                                                                                (2692 ::
                                                                                                                                                   Integer)
                                                                                                                                                (2632180534421049758 ::
                                                                                                                                                   Integer)
                                                                                                                                                "Ledger.Dijkstra.Specification.Ledger._.EnactState"
                                                                                                                                                (MAlonzo.RTE.Fixity
                                                                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                                                                   MAlonzo.RTE.Unrelated)))
                                                                                                                                          (coe
                                                                                                                                             v8)))))
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
                                                                                                                                                   (3884 ::
                                                                                                                                                      Integer)
                                                                                                                                                   (2632180534421049758 ::
                                                                                                                                                      Integer)
                                                                                                                                                   "Ledger.Dijkstra.Specification.Ledger.LedgerEnv"
                                                                                                                                                   (MAlonzo.RTE.Fixity
                                                                                                                                                      MAlonzo.RTE.NonAssoc
                                                                                                                                                      MAlonzo.RTE.Unrelated)))
                                                                                                                                             (coe
                                                                                                                                                v8)))
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
                                                                                                                                                   (24 ::
                                                                                                                                                      Integer)
                                                                                                                                                   (14798748958053396954 ::
                                                                                                                                                      Integer)
                                                                                                                                                   "Ledger.Prelude.Base.Treasury"
                                                                                                                                                   (MAlonzo.RTE.Fixity
                                                                                                                                                      MAlonzo.RTE.NonAssoc
                                                                                                                                                      MAlonzo.RTE.Unrelated)))
                                                                                                                                             (coe
                                                                                                                                                v8)))))
                                                                                                                                 (coe
                                                                                                                                    v8)))))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3906)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3054
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
                                                                                                                     (coe
                                                                                                                        v4))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1346)
                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1338
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                        (coe
                                                                                                                           v2))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                           (coe
                                                                                                                              v2))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                        (coe
                                                                                                                           v2))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_202
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                           (coe
                                                                                                                              v2))))))))
                                                                                                      v5
                                                                                                      v8)
                                                                                                   (\ v21 ->
                                                                                                      case coe
                                                                                                             v21 of
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                                                          -> coe
                                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                     (coe
                                                                                                                        v22)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_incrBlocks_3118
                                                                                                                        (coe
                                                                                                                           v0)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                                                                           (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                                                    (coe
                                                                                                                                       v0))))
                                                                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3050
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
                                                                                                                                    (coe
                                                                                                                                       v4)))))
                                                                                                                        (coe
                                                                                                                           v6)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_BBODY'45'Block'45'Body_3206
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                        erased
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                           erased
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                              (coe
                                                                                                                                 v16)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                 (coe
                                                                                                                                    v20)
                                                                                                                                 (coe
                                                                                                                                    v23)))))))
                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                     else coe
                                                                                            seq
                                                                                            (coe
                                                                                               v19)
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
                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_480
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_570
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2214
                                                                                                                 (coe
                                                                                                                    v0))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                                                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_458
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_570
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2214
                                                                                                                    (coe
                                                                                                                       v0))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3216
                                                                                                              (coe
                                                                                                                 v0))
                                                                                                           v8))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                        (" exceeds maxBlockExUnits "
                                                                                                         ::
                                                                                                         Data.Text.Text)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_480
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_570
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2214
                                                                                                                    (coe
                                                                                                                       v0))))
                                                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_414
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                       (coe
                                                                                                                          v2))))))))))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError)
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             else coe
                                                                    seq (coe v15)
                                                                    (coe
                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                       (coe
                                                                          du_validLeiosBlockFailure_3130
                                                                          (coe v4)))
                                                      _ -> MAlonzo.RTE.mazUnreachableError))
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          (:) v10 v11
                            -> coe
                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                 (coe du_validLeiosBlockFailure_3130 (coe v4))
                          _ -> MAlonzo.RTE.mazUnreachableError
                   MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                     -> let v9
                              = MAlonzo.Code.Data.Bool.Properties.d__'8799'__3196
                                  (coe
                                     MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiedEB_3062
                                     (coe
                                        MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
                                           (coe v4))))
                                  (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8) in
                        coe
                          (case coe v9 of
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                               -> if coe v10
                                    then case coe v11 of
                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                             -> let v13
                                                      = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_474
                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_570
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2214
                                                                   (coe v0)))
                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_414
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v2)))))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_458
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_570
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2214
                                                                         (coe v0))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3216
                                                                   (coe v0))
                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3100
                                                                   (coe v4)))) in
                                                coe
                                                  (case coe v13 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                                       -> if coe v14
                                                            then case coe v15 of
                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v16
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
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.Properties.Computational.d_Computational'45'LEDGER_4318
                                                                                   (coe v0)
                                                                                   (coe v1))
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
                                                                                                              (3884 ::
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
                                                                                                              (880 ::
                                                                                                                 Integer)
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
                                                                                                                 (3884 ::
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
                                                                                                                 (10 ::
                                                                                                                    Integer)
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
                                                                                                                          (20 ::
                                                                                                                             Integer)
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
                                                                                                                             (824 ::
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
                                                                                                                    (3884 ::
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
                                                                                                                    (736 ::
                                                                                                                       Integer)
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
                                                                                                                       (3884 ::
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
                                                                                                                       (2692 ::
                                                                                                                          Integer)
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
                                                                                                                          (3884 ::
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
                                                                                                                          (24 ::
                                                                                                                             Integer)
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
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3906)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3054
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
                                                                                            (coe
                                                                                               v4))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1346)
                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1338
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                               (coe
                                                                                                  v2))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                  (coe
                                                                                                     v2))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                               (coe
                                                                                                  v2))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_202
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                  (coe
                                                                                                     v2))))))))
                                                                             v5
                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3100
                                                                                (coe v4)))
                                                                          (\ v17 ->
                                                                             case coe v17 of
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                                 -> coe
                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                            (coe
                                                                                               v18)
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_incrBlocks_3118
                                                                                               (coe
                                                                                                  v0)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                                                                  (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1412
                                                                                                           (coe
                                                                                                              v0))))
                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3050
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3072
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3096
                                                                                                           (coe
                                                                                                              v4)))))
                                                                                               (coe
                                                                                                  v6)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_BBODY'45'Block'45'Body_3206
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                               erased
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                     (coe
                                                                                                        v12)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           v16)
                                                                                                        (coe
                                                                                                           v19)))))))
                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                            else coe
                                                                   seq (coe v15)
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
                                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_480
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_570
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2214
                                                                                        (coe v0))))
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_458
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_570
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2214
                                                                                           (coe
                                                                                              v0))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_totExUnits_3216
                                                                                     (coe v0))
                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3100
                                                                                     (coe v4))))
                                                                            (coe
                                                                               MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                               (" exceeds maxBlockExUnits "
                                                                                ::
                                                                                Data.Text.Text)
                                                                               (coe
                                                                                  MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_480
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_570
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2214
                                                                                           (coe
                                                                                              v0))))
                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_414
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1342
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 v2))))))))))
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           _ -> MAlonzo.RTE.mazUnreachableError
                                    else coe
                                           seq (coe v11)
                                           (coe
                                              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                              (coe du_validLeiosBlockFailure_3130 (coe v4)))
                             _ -> MAlonzo.RTE.mazUnreachableError)
                   _ -> MAlonzo.RTE.mazUnreachableError))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.BBODY-completeness
d_BBODY'45'completeness_3214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3078 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T__'8866'_'8640''10631'_'44'BBODY'10632'__3180 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_BBODY'45'completeness_3214 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.Computational-BBODY
d_Computational'45'BBODY_3310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3264 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'BBODY_3310 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_BBODY'45'computeProof_3148 (coe v0) (coe v1))
