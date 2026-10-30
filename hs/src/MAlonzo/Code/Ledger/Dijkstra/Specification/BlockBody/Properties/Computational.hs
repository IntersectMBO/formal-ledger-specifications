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
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._._⊢_⇀⦇_,BBODY⦈_
d__'8866'_'8640''10631'_'44'BBODY'10632'__2688 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.BBodyEnv
d_BBodyEnv_2694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  ()
d_BBodyEnv_2694 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.BBodyState
d_BBodyState_2696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  ()
d_BBodyState_2696 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block
d_Block_2706 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.bBodyHash
d_bBodyHash_2742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  AgdaAny
d_bBodyHash_2742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodyHash_3174
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.bBodySize
d_bBodySize_2744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  Integer
d_bBodySize_2744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bBodySize_3172
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.bHeaderHash
d_bHeaderHash_2746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  AgdaAny
d_bHeaderHash_2746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bHeaderHash_3166
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.bheader
d_bheader_2748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_BHeader_3134
d_bheader_2748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3164
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.ebCert
d_ebCert_2750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1652
d_ebCert_2750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3170
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.ts
d_ts_2752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870]
d_ts_2752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3168
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.≡-bBodyHash
d_'8801''45'bBodyHash_2754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodyHash_2754 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.Block.≡-bBodySize
d_'8801''45'bBodySize_2756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'bBodySize_2756 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.EBCert
d_EBCert_2864 a0 a1 = ()
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.EBCert.sig
d_sig_2870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1652 ->
  AgdaAny
d_sig_2870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_sig_1660
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.EBCert.signers
d_signers_2872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1652 ->
  [Integer]
d_signers_2872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_signers_1658
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.completeness
d_completeness_3134 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3134 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.computeProof
d_computeProof_3140 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3140 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.validLeiosBlockFailure
d_validLeiosBlockFailure_3152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_validLeiosBlockFailure_3152 ~v0 ~v1 v2
  = du_validLeiosBlockFailure_3152 v2
du_validLeiosBlockFailure_3152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_validLeiosBlockFailure_3152 v0
  = coe
      du_go_3160
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiesEB_3130
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3164
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3170
         (coe v0))
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational._.go
d_go_3160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  Bool ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1652 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_go_3160 ~v0 ~v1 ~v2 v3 v4 = du_go_3160 v3 v4
du_go_3160 ::
  Bool ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_EBCert_1652 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_go_3160 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> if coe v0
             then coe
                    ("a block carrying an EB certificate carries transactions"
                     ::
                     Data.Text.Text)
             else coe
                    ("the block carries an EB certificate but certifiesEB is not set"
                     ::
                     Data.Text.Text)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             ("certifiesEB is set but the block carries no EB certificate"
              ::
              Data.Text.Text)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.BBODY-computeProof
d_BBODY'45'computeProof_3170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_BBODY'45'computeProof_3170 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> let v7
                 = coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
                     (coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.d_dec_16
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAll_30
                              (coe
                                 (\ v7 -> MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3170
                                 (coe v4))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.d_dec_16
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiesEB_3130
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3164
                                       (coe v4))))
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))))
                     (coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.d_dec_16
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_32
                              (coe
                                 (\ v7 ->
                                    MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ebCert_3170
                                 (coe v4))))
                        (coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                           (coe
                              MAlonzo.Code.Class.Decidable.Core.d_dec_16
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_certifiesEB_3130
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3164
                                          (coe v4))))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Core.d_dec_16
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_length_268
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3168
                                       (coe v4)))
                                 (coe (0 :: Integer)))))) in
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
                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.d_LEDGERS'45'computeProof_3542
                                        (coe v0) (coe v1)
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
                                                                         (3102 :: Integer)
                                                                         (12019176378147150408 ::
                                                                            Integer)
                                                                         "Ledger.Dijkstra.Specification.Ledgers.LedgersEnv"
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
                                                                         (2746 :: Integer)
                                                                         (12019176378147150408 ::
                                                                            Integer)
                                                                         "Ledger.Dijkstra.Specification.Ledgers._.LedgerEnv"
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
                                                                            (3102 :: Integer)
                                                                            (12019176378147150408 ::
                                                                               Integer)
                                                                            "Ledger.Dijkstra.Specification.Ledgers.LedgersEnv"
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
                                                                            (6 :: Integer)
                                                                            (13537827747504913145 ::
                                                                               Integer)
                                                                            "Agda.Builtin.Nat.Nat"
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
                                                                               (3102 :: Integer)
                                                                               (12019176378147150408 ::
                                                                                  Integer)
                                                                               "Ledger.Dijkstra.Specification.Ledgers.LedgersEnv"
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
                                                                               (226 :: Integer)
                                                                               (12019176378147150408 ::
                                                                                  Integer)
                                                                               "_.ExUnits"
                                                                               (MAlonzo.RTE.Fixity
                                                                                  MAlonzo.RTE.NonAssoc
                                                                                  MAlonzo.RTE.Unrelated)))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.C_constructor_3116)))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
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
                                                                               (3918 :: Integer)
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
                                                                               (884 :: Integer)
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
                                                                                  (3918 :: Integer)
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
                                                                                              (828 ::
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
                                                                                     (3918 ::
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
                                                                                     (740 ::
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
                                                                                        (3918 ::
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
                                                                                        (2704 ::
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
                                                                                           (3918 ::
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
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_constructor_3940)))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_slot_3122
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3164
                                                             (coe v4))))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe
                                                          MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1350)
                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v2))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v2))))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v2))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_206
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v2))))))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_466
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v2)))))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_418
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v2))))))))
                                        (coe v5)
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_ts_3168
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
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.du_incrBlocks_3186
                                                          (coe v0)
                                                          (coe
                                                             MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                                             (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                      (coe v0))))
                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bvkcold_3118
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bhbody_3140
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.d_bheader_3164
                                                                      (coe v4)))))
                                                          (coe v6)))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.C_BBODY'45'Block'45'Body_3260
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
                                 (coe du_validLeiosBlockFailure_3152 (coe v4)))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.BBODY-completeness
d_BBODY'45'completeness_3208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T_Block_3146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.BlockBody.T__'8866'_'8640''10631'_'44'BBODY'10632'__3234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_BBODY'45'completeness_3208 = erased
-- Ledger.Dijkstra.Specification.BlockBody.Properties.Computational.Computational-BBODY
d_Computational'45'BBODY_3260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'BBODY_3260 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_BBODY'45'computeProof_3170 (coe v0) (coe v1))
