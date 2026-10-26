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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.HasSize-Tx
d_HasSize'45'Tx_544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4182
d_HasSize'45'Tx_544 ~v0 = du_HasSize'45'Tx_544
du_HasSize'45'Tx_544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4182
du_HasSize'45'Tx_544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4600
-- _.TopLevelTx
d_TopLevelTx_928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_928 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._.HasPParams-LedgerEnv
d_HasPParams'45'LedgerEnv_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
d_HasPParams'45'LedgerEnv_2730 ~v0 ~v1
  = du_HasPParams'45'LedgerEnv_2730
du_HasPParams'45'LedgerEnv_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
du_HasPParams'45'LedgerEnv_2730
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._.LedgerEnv
d_LedgerEnv_2752 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._.LedgerEnv.enactState
d_enactState_2798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_enactState_2798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_enactState_3914
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._.LedgerEnv.pparams
d_pparams_2800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_pparams_2800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_pparams_3912
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._.LedgerEnv.ppolicy
d_ppolicy_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  Maybe AgdaAny
d_ppolicy_2802 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_ppolicy_3910
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._.LedgerEnv.slot
d_slot_2804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  AgdaAny
d_slot_2804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_slot_3908
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._.LedgerEnv.treasury
d_treasury_2806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  Integer
d_treasury_2806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_treasury_3916
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._.EndorserBlock
d_EndorserBlock_2858 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._.EndorserBlock.ebTxRefs
d_ebTxRefs_2866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ebTxRefs_2866 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._._⊢_⇀⦇_,EB⦈_
d__'8866'_'8640''10631'_'44'EB'10632'__2870 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._.EBWellFormed
d_EBWellFormed_2874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  ()
d_EBWellFormed_2874 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._.completeness
d_completeness_2882 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2882 = erased
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._.computeProof
d_computeProof_2888 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2888 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational.wellFormed?
d_wellFormed'63'_2902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_wellFormed'63'_2902 v0 ~v1 v2 = du_wellFormed'63'_2902 v0 v2
du_wellFormed'63'_2902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_wellFormed'63'_2902 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe du_nonempty'63'_2916 (coe du_refs_2910 (coe v1)))
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid.du_unique'63'_66
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
            (coe
               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'TxRefHash_186
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
                     (coe v0)))))
         (coe
            MAlonzo.Code.Class.Functor.Core.du_fmap_22
            MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
            () erased
            (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
               (coe v1))))
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._.refs
d_refs_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refs_2910 ~v0 ~v1 v2 = du_refs_2910 v2
du_refs_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refs_2910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
      (coe v0)
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._.nonempty?
d_nonempty'63'_2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  () ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_nonempty'63'_2916 ~v0 ~v1 ~v2 ~v3 v4 = du_nonempty'63'_2916 v4
du_nonempty'63'_2916 ::
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_nonempty'63'_2916 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      (:) v1 v2
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._._.leiosMaxEBSize
d_leiosMaxEBSize_2972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  Integer
d_leiosMaxEBSize_2972 ~v0 ~v1 v2 ~v3 ~v4
  = du_leiosMaxEBSize_2972 v2
du_leiosMaxEBSize_2972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  Integer
du_leiosMaxEBSize_2972 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_432
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924)
         v0)
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._._.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  Integer
d_leiosMaxEBTxsSize_2974 ~v0 ~v1 v2 ~v3 ~v4
  = du_leiosMaxEBTxsSize_2974 v2
du_leiosMaxEBTxsSize_2974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  Integer
du_leiosMaxEBTxsSize_2974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_434
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924)
         v0)
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational._.checks?
d_checks'63'_3028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerEnv_3896 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3866] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_checks'63'_3028 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
      (coe du_wellFormed'63'_2902 (coe v0) (coe v4))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe
            MAlonzo.Code.Class.Decidable.Core.d_dec_16
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'List_58
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'TxRefHash_186
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
                           (coe v0)))
                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
                  (coe v4))
               (let v5
                      = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 in
                coe
                  (coe
                     MAlonzo.Code.Class.Functor.Core.du_fmap_22 v5 () erased () erased
                     (\ v6 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_txRefHash_3306
                             v1 v6)
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3890
                             (coe v6)))
                     v3))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
            (coe
               MAlonzo.Code.Class.Decidable.Core.d_dec_16
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_ebSize_3308
                     v1 v4)
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_432
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924)
                        v2))))
            (coe
               MAlonzo.Code.Class.Decidable.Core.d_dec_16
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                  (coe
                     MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_938
                     (coe
                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4190
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4600))
                     v3)
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_434
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924)
                        v2))))))
-- Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational.Computational-EB
d_Computational'45'EB_3030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3276 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EB_3030 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v2 ->
         case coe v2 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
             -> coe
                  (\ v5 v6 ->
                     let v7
                           = coe
                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                               (coe du_wellFormed'63'_2902 (coe v0) (coe v6))
                               (coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                  (coe
                                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                     (coe
                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                        (coe
                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'List_58
                                           (coe
                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                              erased () erased
                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.d_DecEq'45'TxRefHash_186
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_leiosCryptoStructure_1426
                                                    (coe v0)))
                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.d_ebTxRefs_26
                                           (coe v6))
                                        (let v7
                                               = MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 in
                                         coe
                                           (coe
                                              MAlonzo.Code.Class.Functor.Core.du_fmap_22 v7 ()
                                              erased () erased
                                              (\ v8 ->
                                                 coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_txRefHash_3306
                                                      v1 v8)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3890
                                                      (coe v8)))
                                              v4))))
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                     (coe
                                        MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                        (coe
                                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                           (coe
                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_ebSize_3308
                                              v1 v6)
                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_432
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924)
                                                 v3))))
                                     (coe
                                        MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                        (coe
                                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_938
                                              (coe
                                                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                 (coe
                                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4190
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4600))
                                              v4)
                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_434
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924)
                                                 v3)))))) in
                     coe
                       (case coe v7 of
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
                                                               -> coe
                                                                    MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                                                    (coe
                                                                       MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                                    () erased () erased
                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.Properties.Computational.d_LEDGERS'45'computeProof_3520
                                                                       (coe v0) (coe v1)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledgers.du_HasCast'45'LedgersEnv_3140)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe v3)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_442
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924)
                                                                                      v3))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_440
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPParams'45'LedgerEnv_3924)
                                                                                      v3)))))
                                                                       (coe v5) (coe v4))
                                                                    (\ v17 ->
                                                                       case coe v17 of
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                           -> coe
                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe v18)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Validity.C_EB_2922
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                         (coe v11)
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
                                                                                                     v16)
                                                                                                  (coe
                                                                                                     v19)))))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 else coe
                                        seq (coe v9)
                                        (coe
                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                           (coe
                                              ("EB: the references or size bounds do not hold"
                                               ::
                                               Data.Text.Text)))
                          _ -> MAlonzo.RTE.mazUnreachableError))
           _ -> MAlonzo.RTE.mazUnreachableError)
